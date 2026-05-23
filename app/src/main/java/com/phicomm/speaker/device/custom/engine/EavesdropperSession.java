package com.phicomm.speaker.device.custom.engine;

import android.content.Context;

import com.phicomm.speaker.device.custom.event.EavesdropperTriggerEvent;
import com.phicomm.speaker.device.custom.util.EventLog;
import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.engine.ANTPipeline;
import com.unisound.vui.util.LogMgr;

/**
 * 插嘴会话编排器
 * 串联 VadAudioDetector + EavesdropperASRRecognizer + ANTPipeline
 *
 * MIC 是独占资源 (Android 5.1): 系统 USC 唤醒引擎和插嘴 VAD 不能同时占用。
 * 因此本会话采取协作式 MIC 切换:
 *   startListening:  antEngine.stopWakeup()  -> 让出 MIC -> 开 AudioRecord
 *   会话结束(任何路径): 关 AudioRecord -> antEngine.enterWakeup(false) -> 恢复唤醒
 *
 * 生命周期:
 * 1. startListening() -> 暂停系统唤醒 -> 启动 VAD 音频检测
 * 2a. 能量检测触发 -> 停录音 -> 启动 ASR 识别 -> 触发事件 -> 恢复唤醒
 * 2b. IDLE 超时 60s -> 关录音 -> 恢复唤醒 (用于让出 MIC 给唤醒引擎)
 * 2c. cancel() -> 立即停录音 -> 取消 ASR -> 恢复唤醒
 */
public class EavesdropperSession {

    private static final String TAG = "EavesdropperSession";

    private final Context context;
    private final ANTPipeline pipeline;
    private final ANTEngine antEngine;
    private final VadAudioDetector vadDetector;
    private final EavesdropperASRRecognizer asrRecognizer;

    private volatile boolean isActive = false;
    private volatile boolean isProcessingASR = false;
    /** 标记当前是否暂停了系统唤醒,确保只恢复一次 */
    private volatile boolean wakeupSuspended = false;

    public EavesdropperSession(Context context, ANTPipeline pipeline, ANTEngine antEngine) {
        this.context = context;
        this.pipeline = pipeline;
        this.antEngine = antEngine;

        this.vadDetector = new VadAudioDetector(new VadAudioDetector.Listener() {
            @Override
            public void onSpeechTriggered(byte[] audioBuffer, long speechDurationMs) {
                LogMgr.d(TAG, "Speech triggered, duration=" + speechDurationMs + "ms, buffer=" + audioBuffer.length + " bytes");
                startASRRecognition(audioBuffer);
            }

            @Override
            public void onStateChanged(VadAudioDetector.State oldState, VadAudioDetector.State newState) {
                LogMgr.d(TAG, "VAD state: " + oldState + " -> " + newState);
            }

            @Override
            public void onIdleTimeout() {
                LogMgr.d(TAG, "VAD idle timeout, releasing MIC and resuming wakeup");
                onSessionEnded();
            }
        });

        this.asrRecognizer = new EavesdropperASRRecognizer(context, antEngine);
    }

    /**
     * 启动空闲监听: 优先尝试与主引擎共存(让小讯小讯持续可用)
     * 1. 直接开 AudioRecord(VOICE_RECOGNITION),不停主引擎
     * 2. 等 300ms 验证 read 真能拿数据(4MIC HAL 可能 init 成功但 read 立即失败)
     * 3. 失败则 cancel + fallback 停主引擎抢 MIC
     */
    /**
     * 启动空闲监听: 直接开 AudioRecord
     * 当前调用时机是"休眠模式" - 主引擎已经被双击 stopWakeup 释放了 MIC
     * 我们不需要再 stopWakeup,MIC 自然空闲给我们
     */
    public synchronized void startListening() {
        if (isActive) {
            LogMgr.w(TAG, "Session already active, ignoring");
            return;
        }
        isActive = true;
        vadDetector.startListening();
        LogMgr.d(TAG, "Eavesdropper session started (dormant mode, MIC free)");
    }

    /**
     * 立即停止: 关闭 AudioRecord, 取消 ASR (如果在进行中), 恢复唤醒
     */
    public synchronized void cancel() {
        if (!isActive && !isProcessingASR && !wakeupSuspended) {
            return;
        }

        LogMgr.d(TAG, "Cancelling session, isActive=" + isActive + ", isProcessingASR=" + isProcessingASR);

        vadDetector.cancel();

        if (isProcessingASR) {
            asrRecognizer.cancel();
            isProcessingASR = false;
        }

        isActive = false;
        resumeSystemWakeup();
        LogMgr.d(TAG, "Eavesdropper session cancelled");
    }

    /**
     * 会话是否处于活跃状态
     */
    public boolean isActive() {
        return isActive;
    }

    /**
     * 彻底释放资源(应用退出时调用)
     */
    public synchronized void destroy() {
        cancel();
        LogMgr.d(TAG, "Eavesdropper session destroyed");
    }

    private synchronized void startASRRecognition(final byte[] audioBuffer) {
        // 标记为非活跃; ASR 期间不需要 MIC,先把唤醒还回去
        isActive = false;
        isProcessingASR = true;
        // ⭐ VAD 在 trigger 后还在继续录音,这里强制 cancel 让 MIC 完全空闲
        vadDetector.cancel();
        resumeSystemWakeup();

        asrRecognizer.recognize(audioBuffer, new EavesdropperASRRecognizer.Listener() {
            @Override
            public void onResult(final String text, final float confidence) {
                isProcessingASR = false;
                if (text != null && !text.isEmpty()) {
                    EventLog.log(TAG, "Fire EavesdropperTriggerEvent: \"" + text + "\"");
                    pipeline.fireUserEventTriggered(new EavesdropperTriggerEvent(text, confidence));
                } else {
                    EventLog.log(TAG, "ASR empty/junk, no event fired");
                }
                EavesdropperEngine.notifySessionEnded();
            }

            @Override
            public void onError(final String error) {
                isProcessingASR = false;
                EventLog.log(TAG, "ASR error: " + error);
                EavesdropperEngine.notifySessionEnded();
            }
        });
    }

    /**
     * VAD 自然结束(IDLE 超时): 关录音并恢复唤醒
     */
    private synchronized void onSessionEnded() {
        if (!isActive) return;
        isActive = false;
        vadDetector.cancel();
        resumeSystemWakeup();
        EavesdropperEngine.notifySessionEnded();
    }

    private void suspendSystemWakeup() {
        if (wakeupSuspended) return;
        try {
            antEngine.stopWakeup();
            wakeupSuspended = true;
            LogMgr.d(TAG, "System wakeup suspended (MIC released to AudioRecord)");
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to stop wakeup", e);
        }
    }

    private void resumeSystemWakeup() {
        if (!wakeupSuspended) return;
        try {
            antEngine.enterWakeup(false);
            wakeupSuspended = false;
            LogMgr.d(TAG, "System wakeup resumed");
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to resume wakeup", e);
        }
    }
}
