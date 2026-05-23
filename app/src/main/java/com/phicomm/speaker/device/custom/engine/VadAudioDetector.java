package com.phicomm.speaker.device.custom.engine;

import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;

import com.unisound.vui.util.LogMgr;

/**
 * 独立音频采集 + 能量检测状态机
 * 不依赖 USC VAD 引擎，使用标准 Android AudioRecord
 */
public class VadAudioDetector {

    private static final String TAG = "VadAudioDetector";

    // 音频参数
    private static final int SAMPLE_RATE = 16000;
    private static final int CHANNEL_CONFIG = AudioFormat.CHANNEL_IN_MONO;
    private static final int AUDIO_FORMAT = AudioFormat.ENCODING_PCM_16BIT;

    // 帧参数: 20ms @ 16kHz/16bit/mono = 640 bytes (回到 v70 baseline)
    private static final int FRAME_SIZE_MS = 20;
    private static final int FRAME_BYTES = SAMPLE_RATE * 2 * FRAME_SIZE_MS / 1000;

    // 能量阈值和时长配置 - "插嘴模式"语义: 听明显人声 ≥3 秒 + 停顿
    private static final int ENERGY_THRESHOLD = 5;           // v70 配置: 4MIC AGC 下最敏感拾音
    private static final long CUMULATIVE_SPEECH_MS = 3000;   // 累计 3 秒人声才认定是"一段讲话"
    private static final long SILENCE_TRIGGER_MS = 1000;     // 1 秒停顿 = 句子结束,触发识别
    private static final long CONTINUOUS_SILENCE_RESET_MS = 1200; // 语音中断 1.2 秒就 reset,防止环境噪音持续累计错把"15 秒前的小动静"当起点
    /** 语音段尾部 padding: 把停顿前的尾音也一并送 ASR,避免切到字中间 */
    private static final long TAIL_PADDING_MS = 300;
    // 持续无语音超时: 让出 MIC 给系统唤醒引擎. 60 秒内一直 IDLE 就退出
    private static final long IDLE_TIMEOUT_MS = 60000;
    private static final int MAX_BUFFER_SECONDS = 15;
    private static final int MAX_BUFFER_BYTES = SAMPLE_RATE * 2 * MAX_BUFFER_SECONDS;

    public enum State { IDLE, SPEECH_DETECTED, SILENCE_WAIT, TRIGGERED, STOPPED }

    public interface Listener {
        void onSpeechTriggered(byte[] audioBuffer, long speechDurationMs);
        void onStateChanged(State oldState, State newState);
        void onIdleTimeout();
    }

    private final Listener listener;
    private AudioRecord audioRecord;
    private Thread recordingThread;

    private volatile State state = State.STOPPED;
    /** 录音失败标志: read 返回错误时设置(常见于 4MIC 硬件不允许共存 MIC) */
    private volatile boolean recordingFailed = false;
    /** 成功 read 的帧数,用于检测录音是否真在工作(state INITIALIZED 不代表 read 成功) */
    private volatile int successFrameCount = 0;

    // 循环缓冲区
    private final byte[] circularBuffer = new byte[MAX_BUFFER_BYTES];
    private int writePos = 0;
    private int totalWritten = 0;

    // 状态机计时器
    private long cumulativeSpeechMs = 0;
    private long silenceDurationMs = 0;
    private long lastFrameTimestamp = 0;
    // 自启动以来一直处于 IDLE 状态的持续时间(用于 60 秒无语音超时)
    private long idleDurationMs = 0;
    /** SPEECH_DETECTED 进入时 totalWritten 的快照(用于 trigger 时切真实语音段) */
    private long speechStartTotal = -1;

    // 能量诊断: 每秒打印一次平均/峰值能量, 用于排查"麦克风听不到声音"问题
    private long energyDiagWindowStartMs = 0;
    private long energyDiagSum = 0;
    private int energyDiagCount = 0;
    private int energyDiagPeak = 0;
    private int energyDiagOverThreshold = 0;

    public VadAudioDetector(Listener listener) {
        this.listener = listener;
    }

    public synchronized void startListening() {
        if (state != State.STOPPED && state != State.IDLE) {
            LogMgr.w(TAG, "startListening called in state " + state + ", ignoring");
            return;
        }

        LogMgr.d(TAG, "Starting audio recording...");

        int bufferSize = AudioRecord.getMinBufferSize(SAMPLE_RATE, CHANNEL_CONFIG, AUDIO_FORMAT);
        if (bufferSize == AudioRecord.ERROR || bufferSize == AudioRecord.ERROR_BAD_VALUE) {
            LogMgr.e(TAG, "getMinBufferSize failed");
            return;
        }

        // 使用比最小缓冲区更大的尺寸减少回调频率
        bufferSize = Math.max(bufferSize, FRAME_BYTES * 4);

        // VOICE_RECOGNITION 通常绕过 AGC/降噪,在 4MIC 设备上保留原始人声能量
        audioRecord = new AudioRecord(
            MediaRecorder.AudioSource.VOICE_RECOGNITION,
            SAMPLE_RATE,
            CHANNEL_CONFIG,
            AUDIO_FORMAT,
            bufferSize
        );
        // 如果 VOICE_RECOGNITION 不被支持,fallback 到 MIC
        if (audioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
            LogMgr.w(TAG, "VOICE_RECOGNITION init failed, falling back to MIC");
            audioRecord.release();
            audioRecord = new AudioRecord(
                MediaRecorder.AudioSource.MIC,
                SAMPLE_RATE,
                CHANNEL_CONFIG,
                AUDIO_FORMAT,
                bufferSize
            );
        }

        if (audioRecord.getState() != AudioRecord.STATE_INITIALIZED) {
            LogMgr.e(TAG, "AudioRecord initialization failed");
            audioRecord = null;
            return;
        }

        resetState();
        state = State.IDLE;
        audioRecord.startRecording();

        recordingThread = new Thread(new Runnable() {
            @Override
            public void run() {
                recordingLoop();
            }
        }, "VadAudioDetector");
        recordingThread.start();

        LogMgr.d(TAG, "AudioRecord started, buffer=" + bufferSize + " bytes");
    }

    public synchronized void cancel() {
        if (state == State.STOPPED) {
            return;
        }

        LogMgr.d(TAG, "Cancelling, current state: " + state);
        State oldState = state;
        state = State.STOPPED;

        if (recordingThread != null && recordingThread.isAlive()) {
            recordingThread.interrupt();
            try {
                recordingThread.join(1000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            recordingThread = null;
        }

        if (audioRecord != null) {
            try {
                audioRecord.stop();
                audioRecord.release();
            } catch (Exception e) {
                LogMgr.e(TAG, "Error releasing AudioRecord", e);
            }
            audioRecord = null;
        }

        notifyStateChange(oldState, State.STOPPED);
    }

    public synchronized State getState() {
        return state;
    }

    /** AudioRecord 是否成功初始化(用于 EavesdropperSession 检测 MIC 是否被占用) */
    public synchronized boolean isAudioRecordReady() {
        return audioRecord != null && audioRecord.getState() == AudioRecord.STATE_INITIALIZED;
    }

    private void resetState() {
        writePos = 0;
        totalWritten = 0;
        cumulativeSpeechMs = 0;
        silenceDurationMs = 0;
        idleDurationMs = 0;
        speechStartTotal = -1;
        lastFrameTimestamp = System.currentTimeMillis();
        energyDiagWindowStartMs = lastFrameTimestamp;
        energyDiagSum = 0;
        energyDiagCount = 0;
        energyDiagPeak = 0;
        energyDiagOverThreshold = 0;
    }

    private void recordingLoop() {
        byte[] frame = new byte[FRAME_BYTES];
        recordingFailed = false;
        successFrameCount = 0;

        while (!Thread.currentThread().isInterrupted()) {
            int bytesRead;
            try {
                bytesRead = audioRecord.read(frame, 0, FRAME_BYTES);
            } catch (Exception e) {
                LogMgr.e(TAG, "AudioRecord.read error", e);
                recordingFailed = true;
                break;
            }

            if (bytesRead < 0) {
                LogMgr.e(TAG, "AudioRecord.read error code: " + bytesRead);
                recordingFailed = true;
                break;
            }

            if (bytesRead == 0) {
                continue;
            }

            successFrameCount++;
            processFrame(frame, bytesRead);
        }

        LogMgr.d(TAG, "Recording loop exited (failed=" + recordingFailed + ")");
    }

    /** 录音是否失败(read 返回错误) */
    public boolean isRecordingFailed() {
        return recordingFailed;
    }

    /** 是否有过成功的帧(用于检测录音是否真在工作) */
    public int getSuccessFrameCount() {
        return successFrameCount;
    }

    private void processFrame(byte[] frame, int bytesRead) {
        long now = System.currentTimeMillis();
        long frameDurationMs = bytesRead * 1000L / (SAMPLE_RATE * 2);

        // 计算能量值
        int energy = computeEnergy(frame, bytesRead);

        // 能量诊断窗口聚合(每秒打印一次)
        if (energyDiagWindowStartMs == 0) energyDiagWindowStartMs = now;
        energyDiagSum += energy;
        energyDiagCount++;
        if (energy > energyDiagPeak) energyDiagPeak = energy;
        if (energy >= ENERGY_THRESHOLD) energyDiagOverThreshold++;
        if (now - energyDiagWindowStartMs >= 1000 && energyDiagCount > 0) {
            int avg = (int) (energyDiagSum / energyDiagCount);
            LogMgr.d(TAG, "[ENERGY] avg=" + avg + " peak=" + energyDiagPeak
                    + " overThreshold=" + energyDiagOverThreshold + "/" + energyDiagCount
                    + " state=" + state + " cumSpeech=" + cumulativeSpeechMs + "ms");
            energyDiagWindowStartMs = now;
            energyDiagSum = 0;
            energyDiagCount = 0;
            energyDiagPeak = 0;
            energyDiagOverThreshold = 0;
        }

        // 写入循环缓冲区
        addToBuffer(frame, bytesRead);

        synchronized (this) {
            if (state == State.STOPPED) {
                return;
            }

            if (energy >= ENERGY_THRESHOLD) {
                // 检测到语音
                cumulativeSpeechMs += frameDurationMs;
                silenceDurationMs = 0;
                idleDurationMs = 0;

                if (cumulativeSpeechMs >= CUMULATIVE_SPEECH_MS && state != State.SILENCE_WAIT) {
                    // 语音累计达标，进入静音等待
                    State old = state;
                    state = State.SILENCE_WAIT;
                    notifyStateChange(old, State.SILENCE_WAIT);
                } else if (state == State.IDLE) {
                    // ⭐ 记录语音段起点(用于 trigger 时切真实片段)
                    speechStartTotal = totalWritten - bytesRead;
                    if (speechStartTotal < 0) speechStartTotal = 0;
                    State old = state;
                    state = State.SPEECH_DETECTED;
                    notifyStateChange(old, State.SPEECH_DETECTED);
                }
            } else {
                // 静音
                silenceDurationMs += frameDurationMs;

                if (state == State.SILENCE_WAIT && silenceDurationMs >= SILENCE_TRIGGER_MS) {
                    // 静音截断，触发
                    trigger();
                    return;
                }

                if (state == State.SPEECH_DETECTED && silenceDurationMs >= CONTINUOUS_SILENCE_RESET_MS) {
                    // 语音不足5秒就长时间静音，重置
                    LogMgr.d(TAG, "Speech not enough (" + cumulativeSpeechMs + "ms), resetting");
                    resetState();
                    state = State.IDLE;
                    notifyStateChange(State.SPEECH_DETECTED, State.IDLE);
                }

                // IDLE 期间累计静音时长,超过阈值就退出让出 MIC
                if (state == State.IDLE) {
                    idleDurationMs += frameDurationMs;
                    if (idleDurationMs >= IDLE_TIMEOUT_MS) {
                        LogMgr.d(TAG, "Idle timeout (" + idleDurationMs + "ms), releasing MIC");
                        State old = state;
                        state = State.STOPPED;
                        notifyStateChange(old, State.STOPPED);
                        if (listener != null) {
                            listener.onIdleTimeout();
                        }
                        return;
                    }
                }
            }

            lastFrameTimestamp = now;
        }
    }

    private void trigger() {
        State old = state;
        state = State.TRIGGERED;
        notifyStateChange(old, State.TRIGGERED);

        // ⭐ 切出真实语音段: 从 SPEECH_DETECTED 起点到当前(包含尾部 padding)
        byte[] audioData = getSpeechSegment();
        long speechDuration = cumulativeSpeechMs;

        LogMgr.d(TAG, "Speech TRIGGERED: " + speechDuration + "ms cumSpeech, "
                + audioData.length + " bytes ("
                + (audioData.length * 1000L / (SAMPLE_RATE * 2)) + " ms actual)");

        // 在同步块外调用 listener
        if (listener != null) {
            listener.onSpeechTriggered(audioData, speechDuration);
        }
    }

    /**
     * 切出真实语音段: 从 SPEECH_DETECTED 起点到当前 writePos
     * 长度 = totalWritten - speechStartTotal,clamp 到 buffer 容量
     */
    private byte[] getSpeechSegment() {
        // 上限 1: 实际有用语音时长 (cumSpeech + 静音段 + 尾 padding)
        // 用这个限制是为了避免 SPEECH_DETECTED 起点被早期噪音错误记录后切到 15s
        long usefulMs = cumulativeSpeechMs + silenceDurationMs + TAIL_PADDING_MS;
        long usefulBytes = usefulMs * SAMPLE_RATE * 2 / 1000;

        long segmentLen;
        if (speechStartTotal < 0) {
            // 没起点,fallback 到 useful 长度
            segmentLen = usefulBytes;
        } else {
            segmentLen = totalWritten - speechStartTotal;
            // 若 speechStartTotal 因环境噪音错误记录得太早, 用 usefulBytes 兜底
            if (segmentLen > usefulBytes) {
                LogMgr.d(TAG, "segment clamped: from=" + segmentLen + " to=" + usefulBytes);
                segmentLen = usefulBytes;
            }
        }
        if (segmentLen <= 0) return new byte[0];
        if (segmentLen > circularBuffer.length) {
            segmentLen = circularBuffer.length;
        }
        int len = (int) segmentLen;
        byte[] result = new byte[len];

        // writePos 是下一次要写的位置, 语音段结束 = writePos
        int readStart = (writePos - len + circularBuffer.length) % circularBuffer.length;
        if (readStart + len <= circularBuffer.length) {
            System.arraycopy(circularBuffer, readStart, result, 0, len);
        } else {
            int firstPart = circularBuffer.length - readStart;
            System.arraycopy(circularBuffer, readStart, result, 0, firstPart);
            System.arraycopy(circularBuffer, 0, result, firstPart, len - firstPart);
        }
        return result;
    }

    private int computeEnergy(byte[] pcmData, int length) {
        // RMS 平均能量 (peak 在 4MIC AGC 处理后失效, 必须用 RMS)
        float sum = 0.0f;
        int sampleCount = length / 2;

        for (int i = 0; i < length; i += 2) {
            int sample = (pcmData[i] & 0xFF) | ((pcmData[i + 1] & 0xFF) << 8);
            int absVal = sample >= 32768 ? (0xFFFF - sample) : sample;
            sum += (float) Math.abs(absVal);
        }

        if (sampleCount == 0) return 0;

        // RMS dB 映射到 0-100 (与 USC VAD.java:1233-1259 算法一致)
        int energy = (int) ((10.0 * Math.log10((double) (2.0f * sum / (float) length + 1.0)) - 20.0) * 5.0);
        if (energy < 0) energy = 0;
        if (energy > 100) energy = 100;
        return energy;
    }

    private void addToBuffer(byte[] frame, int bytesRead) {
        int remaining = circularBuffer.length - writePos;
        if (bytesRead <= remaining) {
            System.arraycopy(frame, 0, circularBuffer, writePos, bytesRead);
        } else {
            // 回绕: 先填剩余，再从头写
            System.arraycopy(frame, 0, circularBuffer, writePos, remaining);
            int overflow = bytesRead - remaining;
            if (overflow <= circularBuffer.length) {
                System.arraycopy(frame, remaining, circularBuffer, 0, overflow);
                writePos = overflow;
                totalWritten += bytesRead;
                return;
            }
            // 如果单帧就比整个缓冲区还大（不应该发生），只取最后一部分
            System.arraycopy(frame, bytesRead - circularBuffer.length, circularBuffer, 0, circularBuffer.length);
            writePos = 0;
            totalWritten = bytesRead;
            return;
        }
        writePos += bytesRead;
        totalWritten += bytesRead;
    }

    private byte[] getBufferedData() {
        int actualLength = Math.min(totalWritten, circularBuffer.length);
        byte[] result = new byte[actualLength];

        if (actualLength == 0) {
            return result;
        }

        int readStart = (writePos - actualLength + circularBuffer.length) % circularBuffer.length;

        if (readStart + actualLength <= circularBuffer.length) {
            System.arraycopy(circularBuffer, readStart, result, 0, actualLength);
        } else {
            int firstPart = circularBuffer.length - readStart;
            System.arraycopy(circularBuffer, readStart, result, 0, firstPart);
            System.arraycopy(circularBuffer, 0, result, firstPart, actualLength - firstPart);
        }

        return result;
    }

    private void notifyStateChange(State oldState, State newState) {
        LogMgr.d(TAG, "State: " + oldState + " -> " + newState);
        if (listener != null) {
            listener.onStateChanged(oldState, newState);
        }
    }
}
