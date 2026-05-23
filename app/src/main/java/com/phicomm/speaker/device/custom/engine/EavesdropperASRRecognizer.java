package com.phicomm.speaker.device.custom.engine;

import android.content.Context;

import com.unisound.client.SpeechConstants;
import com.unisound.vui.engine.ANTEngine;
import com.unisound.vui.engine.ANTEngineOption;
import com.unisound.vui.util.LogMgr;
import com.unisound.vui.util.ThreadUtils;

import com.phicomm.speaker.device.custom.util.EventLog;

import cn.yunzhisheng.asr.JniUscClient;

import org.json.JSONArray;
import org.json.JSONObject;

import java.lang.reflect.Method;

/**
 * 独立 ASR 识别器
 * 使用与主引擎相同的云知声 USC 服务端,对预录制的音频进行识别
 */
public class EavesdropperASRRecognizer {

    private static final String TAG = "EavesdropperASR";

    // 音频块大小: ~100ms (16kHz * 2 bytes * 0.1s = 3200 bytes)
    private static final int CHUNK_SIZE = 3200;

    /** 版本标签,用于 PCM dump 文件名分类(生产模式默认 prod)*/
    public static final String VARIANT_TAG = "prod";

    // 结果超时(ms): 云端识别等待时间
    private static final int RESULT_TIMEOUT = 15000;

    private final Context context;
    private final ANTEngine antEngine;
    private volatile boolean isRecognizing = false;

    public interface Listener {
        void onResult(String text, float confidence);
        void onError(String error);
    }

    public EavesdropperASRRecognizer(Context context, ANTEngine antEngine) {
        this.context = context;
        this.antEngine = antEngine;
    }

    /**
     * 异步识别预录制的音频数据
     * @param audioBuffer PCM 16kHz/16bit/mono
     */
    public void recognize(final byte[] audioBuffer, final Listener listener) {
        if (isRecognizing) {
            LogMgr.w(TAG, "Already recognizing, ignoring");
            return;
        }

        if (audioBuffer == null || audioBuffer.length == 0) {
            if (listener != null) {
                listener.onError("Empty audio buffer");
            }
            return;
        }

        isRecognizing = true;

        ThreadUtils.execute(new Runnable() {
            @Override
            public void run() {
                doRecognize(audioBuffer, listener);
            }
        });
    }

    public void cancel() {
        isRecognizing = false;
    }

    public boolean isRecognizing() {
        return isRecognizing;
    }

    private void doRecognize(byte[] audioBuffer, Listener listener) {
        EventLog.log(TAG, "doRecognize start, audio_bytes=" + audioBuffer.length);
        // ⭐ 4MIC AudioRecord 路径拾音音量很弱(-24dB),做软件增益归一化
        audioBuffer = normalizeGain(audioBuffer);

        // 🔬 诊断: 保存归一化后的 audioBuffer 为 PCM 文件,方便 adb pull + ffmpeg 验证
        // 文件名包含版本/阈值标签,多轮测试不会混淆
        try {
            long ts = System.currentTimeMillis();
            java.io.File f = new java.io.File("/sdcard/eavesdrop_" + VARIANT_TAG + "_" + ts + ".pcm");
            java.io.FileOutputStream fos = new java.io.FileOutputStream(f);
            fos.write(audioBuffer);
            fos.close();
            LogMgr.d(TAG, "DUMP audio: " + f.getAbsolutePath() + " size=" + audioBuffer.length);
        } catch (Throwable t) {
            LogMgr.e(TAG, "DUMP audio failed: " + t);
        }

        JniUscClient client = null;
        try {
            // ⭐ 提前反射拿凭证 + 真实 server/port,createNative 用真实值
            USCCredentialExtractor.Credentials cred = USCCredentialExtractor.extract(antEngine);
            LogMgr.d(TAG, "Using credentials: " + cred);

            // 1. 创建 native 实例 — 优先用主引擎反射出的真实 server,否则回退默认
            String server = cred.serverHost != null ? cred.serverHost : "117.121.55.35";
            int port = cred.serverPort > 0 ? cred.serverPort : 80;
            LogMgr.d(TAG, "createNative server=" + server + " port=" + port);

            client = new JniUscClient();
            long handle = client.a(server, port);
            if (handle == 0) {
                LogMgr.e(TAG, "createNative failed");
                if (listener != null) listener.onError("createNative failed");
                isRecognizing = false;
                return;
            }

            // 2. 配置参数(主引擎 an.smali 不调用 g() login,login 是 native 内部隐式触发)
            configureClient(client, cred);

            // 3. 设置音频格式
            client.a("pcm"); // set audio format to PCM

            // 4. 开始识别会话(native 内部隐式 login + 握手)
            int ret = client.a(); // start()
            if (ret != 0) {
                LogMgr.e(TAG, "start failed: " + ret + " errno=" + client.f());
                if (listener != null) listener.onError("start failed: " + ret);
                client.e();
                isRecognizing = false;
                return;
            }

            LogMgr.d(TAG, "Streaming " + audioBuffer.length + " bytes to ASR");

            // 6. 逐块送入音频数据
            // ⭐ 严重 bug 修复: JniUscClient.a(byte[], int) 没有 offset 参数,
            //    它总是从数组开头读 N 字节。直接传 audioBuffer + chunkLen 会把"前 100ms"
            //    重复送 N 次,ASR 自然只能识别成"么么"/"嘟嘟"。
            //    必须手动 copy 出每个 chunk。
            for (int offset = 0; offset < audioBuffer.length && isRecognizing; offset += CHUNK_SIZE) {
                int chunkLen = Math.min(CHUNK_SIZE, audioBuffer.length - offset);
                byte[] chunk = new byte[chunkLen];
                System.arraycopy(audioBuffer, offset, chunk, 0, chunkLen);
                ret = client.a(chunk, chunkLen); // recognize(byte[], len)
                if (ret != 0) {
                    LogMgr.e(TAG, "recognize chunk error at offset " + offset + ", ret=" + ret);
                    break;
                }
            }

            if (!isRecognizing) {
                LogMgr.d(TAG, "Recognition cancelled");
                client.d(); // cancel
                client.e();
                isRecognizing = false;
                return;
            }

            // 7. 停止识别
            client.b(); // stop()

            // 8. 获取结果
            String result = client.c(); // getResult()
            LogMgr.d(TAG, "ASR raw result: " + result);
            EventLog.log(TAG, "ASR raw result: " + result);

            // 9. 解析结果
            ASRResult parsed = parseASRResult(result);

            // 10. 清理
            client.e(); // destroyNative()

            String text = (parsed != null && parsed.text != null) ? parsed.text : "";
            float confidence = (parsed != null) ? parsed.confidence : 0f;

            if (text.isEmpty()) {
                // ASR 完全没识别出文本(asr_recongize=""): 也用 marker 让 LLM 嘴贱回应
                EventLog.log(TAG, "ASR empty -> fallback marker");
                text = "[听不清的声音]";
            } else if (isJunkText(text)) {
                // 单字重复(嘟嘟嘟/对对对): 同样转 marker
                EventLog.log(TAG, "ASR JUNK -> fallback marker: " + text);
                text = "[听不清的声音]";
            }

            EventLog.log(TAG, "ASR OK: \"" + text + "\" conf=" + confidence);
            if (listener != null) {
                listener.onResult(text, confidence);
            }

        } catch (Exception e) {
            LogMgr.e(TAG, "ASR recognition exception", e);
            if (listener != null) {
                listener.onError(e.getMessage());
            }
        } finally {
            if (client != null) {
                try {
                    client.e();
                } catch (Exception ignored) {
                }
            }
            isRecognizing = false;
        }
    }

    private JniUscClient getOrCreateClient(JniUscClient client, String server, int port) {
        if (client == null) {
            client = new JniUscClient();
            client.a(server, port); // createNative(server, port)
        }
        return client;
    }

    private long clientCreate(JniUscClient client, String server, int port) {
        JniUscClient tmp = client != null ? client : new JniUscClient();
        return tmp.a(server, port);
    }

    private void configureClient(JniUscClient client, USCCredentialExtractor.Credentials cred) {
        // 网络服务模式 (ASR_SERVICE_MODE_NET = 1)
        client.a(SpeechConstants.ASR_SERVICE_MODE, SpeechConstants.ASR_SERVICE_MODE_NET);

        // 网络初始化模式 (ASR_INIT_MODE_NET = 1)
        client.a(SpeechConstants.ASR_INIT_MODE, SpeechConstants.ASR_INIT_MODE_NET);

        // 禁用 VAD (我们自己已经做了端点检测)
        client.a(SpeechConstants.ASR_OPT_RECOGNIZE_VAD_ENABLE, 0);

        // 结果超时
        client.a(4, RESULT_TIMEOUT); // result_timeout

        // ⭐ 优先方案: 反射调用 SDK 内部 an.b/c/d 三个 private 方法,
        // 让 SDK 帮我们做完整 option 配置(尤其是 0xf collected_info,这是 -91007 关键)
        boolean sdkConfigured = false;
        if (cred.anInstance != null) {
            sdkConfigured = invokeAnConfigure(cred.anInstance, client);
            LogMgr.d(TAG, "SDK an.b/c/d configure: " + sdkConfigured);
        }

        // 备选: SDK 反射失败时,手动设置最少凭证
        if (!sdkConfigured) {
            LogMgr.w(TAG, "Falling back to manual credential setup");
            if (cred.appkey != null) {
                client.a(0x9, cred.appkey);
            }
            if (cred.imei != null) {
                client.a(0x8, cred.imei);
            }
            // udid 兜底用 userId(an.d:2851 的 cond_130 分支)
            String udid = cred.udid != null ? cred.udid : cred.userId;
            if (udid != null) {
                client.a(0xe, udid);
            }
            if (cred.userId != null) {
                client.a(0x16, cred.userId);
            }
        }

        // PCM 包大小
        client.a(SpeechConstants.ASR_OPT_RECORDING_PAC_SIZE, 3200);

        // 录音启用
        client.a(SpeechConstants.ASR_OPT_RECORDING_ENABLED, 0);

        // 采样率
        client.a(SpeechConstants.ASR_SAMPLING_RATE, SpeechConstants.ASR_SAMPLING_RATE_16K);

        // NLU 过滤器
        client.a(1017, "returnType=json;filterName=nlu2;scenario=musicDefault");
    }

    /**
     * 判断 ASR 结果是不是垃圾(噪音 fallback): 连续 ≥3 相同字符就抛
     * 例如 "急急急急急..." "嘟嘟嘟..." "对对对..."
     */
    private boolean isJunkText(String s) {
        if (s == null || s.length() < 3) return false;
        char prev = s.charAt(0);
        int run = 1;
        for (int i = 1; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == prev) {
                run++;
                if (run >= 3) return true;
            } else {
                run = 1;
                prev = c;
            }
        }
        return false;
    }

    /**
     * 软件增益归一化: 把最大峰值放大到 ~50% (-6dB) 以提升 ASR 识别率
     * 4MIC 设备 AudioRecord 路径拿到的是单 MIC 原始信号,音量比波束成形后弱很多
     */
    private byte[] normalizeGain(byte[] pcm) {
        if (pcm == null || pcm.length < 2) return pcm;

        // 1. 找最大峰值
        int maxAbs = 0;
        for (int i = 0; i + 1 < pcm.length; i += 2) {
            short s = (short) ((pcm[i] & 0xFF) | (pcm[i + 1] << 8));
            int abs = Math.abs(s);
            if (abs > maxAbs) maxAbs = abs;
        }
        if (maxAbs == 0) {
            LogMgr.w(TAG, "normalize: silent buffer, skipping");
            return pcm;
        }

        // 2. 信号已经足够响则跳过 - 避免 clipping 失真
        if (maxAbs >= 16384) {
            LogMgr.d(TAG, "normalize: maxAbs=" + maxAbs + " already loud, skip");
            return pcm;
        }

        // 3. 计算增益: 目标峰值 16384 (-6dB),最大 16x (v70 baseline,扫描测试用)
        float gain = 16384.0f / maxAbs;
        if (gain > 16.0f) gain = 16.0f;
        LogMgr.d(TAG, "normalize: maxAbs=" + maxAbs + " gain=" + String.format("%.2f", gain) + "x");

        // 4. 应用增益
        byte[] out = new byte[pcm.length];
        for (int i = 0; i + 1 < pcm.length; i += 2) {
            short s = (short) ((pcm[i] & 0xFF) | (pcm[i + 1] << 8));
            int amplified = Math.round(s * gain);
            if (amplified > 32767) amplified = 32767;
            else if (amplified < -32768) amplified = -32768;
            out[i] = (byte) (amplified & 0xFF);
            out[i + 1] = (byte) ((amplified >> 8) & 0xFF);
        }
        return out;
    }

    /**
     * 反射调用 com.unisound.sdk.an 的 private 方法 b/c/d(JniUscClient)
     * 让 SDK 内部帮我们设置完整 client option,包括 collected_info (0xf)
     */
    private boolean invokeAnConfigure(Object anInstance, JniUscClient client) {
        try {
            Class<?> anClass = anInstance.getClass();
            // 沿继承链找
            Method b = null, c = null, d = null;
            Class<?> cls = anClass;
            while (cls != null && (b == null || c == null || d == null)) {
                for (Method m : cls.getDeclaredMethods()) {
                    if (m.getParameterTypes().length == 1
                            && m.getParameterTypes()[0] == JniUscClient.class) {
                        String n = m.getName();
                        if ("b".equals(n) && b == null) b = m;
                        else if ("c".equals(n) && c == null) c = m;
                        else if ("d".equals(n) && d == null) d = m;
                    }
                }
                cls = cls.getSuperclass();
            }
            if (b == null || c == null || d == null) {
                LogMgr.e(TAG, "an.b/c/d not all found: b=" + b + " c=" + c + " d=" + d);
                return false;
            }
            b.setAccessible(true);
            c.setAccessible(true);
            d.setAccessible(true);
            b.invoke(anInstance, client);
            d.invoke(anInstance, client);
            c.invoke(anInstance, client);
            LogMgr.d(TAG, "an.b/d/c invoked successfully");
            return true;
        } catch (Throwable e) {
            LogMgr.e(TAG, "invokeAnConfigure failed", e);
            return false;
        }
    }

    private String getAppKey() {
        if (antEngine == null) return null;
        try {
            // 尝试从 config 获取 app key
            Object key = antEngine.config().getOption(ANTEngineOption.GENERAL_VOICEID);
            if (key != null) return key.toString();
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to get app key", e);
        }
        return null;
    }

    /**
     * 解析 ASR 结果 JSON
     *
     * 典型格式:
     * {"net_nlu":[{"semantic":{"intent":{...}},"code":"...","text":"...","recognition_result":"...",...}]}
     * 或:
     * {"local_asr":[{"recognition_result":"...","score":...}]}
     */
    private ASRResult parseASRResult(String json) {
        // ⭐ 打印原始 JSON 用于调试
        EventLog.log(TAG, "parseASRResult input JSON length=" + (json != null ? json.length() : 0));
        if (json != null && !json.isEmpty()) {
            EventLog.log(TAG, "parseASRResult raw JSON: " + json);
        }

        if (json == null || json.isEmpty()) {
            EventLog.log(TAG, "parseASRResult: json is null or empty");
            return null;
        }

        // ⭐ USC ASR 流式返回多段 JSON 拼接: {seg1}{seg2}{seg3}
        // 每段是句子的一部分(增量识别),拼接所有段的 asr_recongize 得到完整句子
        String trimmed = json.trim();
        if (trimmed.contains("}{")) {
            String[] segments = trimmed.split("(?<=\\})(?=\\{)");
            EventLog.log(TAG, "parseASRResult: detected " + segments.length + " segments");
            StringBuilder fullText = new StringBuilder();
            float lastScore = 0f;
            for (int i = 0; i < segments.length; i++) {
                EventLog.log(TAG, "parseASRResult: segment[" + i + "] length=" + segments[i].length() + " content=" + segments[i]);
                ASRResult segResult = parseSingleSegment(segments[i]);
                if (segResult != null && segResult.text != null && !segResult.text.isEmpty()) {
                    EventLog.log(TAG, "parseASRResult: segment[" + i + "] parsed text=\"" + segResult.text + "\" conf=" + segResult.confidence);
                    fullText.append(segResult.text);
                    lastScore = segResult.confidence;
                } else {
                    EventLog.log(TAG, "parseASRResult: segment[" + i + "] parsed as null/empty");
                }
            }
            EventLog.log(TAG, "ASR multi-segment merged from " + segments.length + " parts: " + fullText);
            return new ASRResult(fullText.toString(), lastScore);
        }

        return parseSingleSegment(json);
    }

    /** 解析单段 JSON（或纯文本） */
    private ASRResult parseSingleSegment(String json) {
        // ⭐ 兼容模式：先判断是否为 JSON，不是就直接返回纯文本
        String trimmed = json.trim();
        if (!trimmed.startsWith("{")) {
            // 纯文本模式：ASR 直接返回识别结果
            EventLog.log(TAG, "parseSingleSegment: plain text mode, text=\"" + trimmed + "\"");
            return new ASRResult(trimmed, 0f);
        }

        try {
            EventLog.log(TAG, "parseSingleSegment input: " + json);
            JSONObject root = new JSONObject(json);

            // 尝试 net_nlu 格式
            if (root.has("net_nlu")) {
                EventLog.log(TAG, "parseSingleSegment: found net_nlu array");
                JSONArray netNlu = root.getJSONArray("net_nlu");
                if (netNlu.length() > 0) {
                    JSONObject first = netNlu.getJSONObject(0);
                    String text = first.optString("recognition_result", "");
                    if (text.isEmpty()) {
                        text = first.optString("text", "");
                    }
                    float score = (float) first.optDouble("score", 0);
                    EventLog.log(TAG, "parseSingleSegment net_nlu: text=\"" + text + "\" score=" + score);
                    return new ASRResult(text, score);
                }
            }

            // 尝试 local_asr 格式
            if (root.has("local_asr")) {
                EventLog.log(TAG, "parseSingleSegment: found local_asr array");
                JSONArray localAsr = root.getJSONArray("local_asr");
                if (localAsr.length() > 0) {
                    JSONObject first = localAsr.getJSONObject(0);
                    String text = first.optString("recognition_result", "");
                    float score = (float) first.optDouble("score", 0);
                    EventLog.log(TAG, "parseSingleSegment local_asr: text=\"" + text + "\" score=" + score);
                    return new ASRResult(text, score);
                }
            }

            // ⭐ 实际 USC 返回 {"asr_recongize":"...","returnCode":0} (recongize 是 SDK typo)
            String text = root.optString("asr_recongize", "");
            EventLog.log(TAG, "parseSingleSegment: asr_recongize=\"" + text + "\"");
            if (text.isEmpty()) {
                text = root.optString("asr_recognize", "");
                EventLog.log(TAG, "parseSingleSegment: asr_recognize=\"" + text + "\"");
            }
            if (text.isEmpty()) {
                text = root.optString("text", "");
                EventLog.log(TAG, "parseSingleSegment: text=\"" + text + "\"");
            }
            if (text.isEmpty()) {
                text = root.optString("recognition_result", "");
                EventLog.log(TAG, "parseSingleSegment: recognition_result=\"" + text + "\"");
            }
            float score = (float) root.optDouble("score", 0);
            
            // 打印所有可用字段
            EventLog.log(TAG, "parseSingleSegment final: text=\"" + text + "\" score=" + score);
            EventLog.log(TAG, "parseSingleSegment all keys: " + root.names());
            
            return new ASRResult(text, score);

        } catch (Exception e) {
            // ⭐ JSON 解析失败，尝试作为纯文本处理
            EventLog.log(TAG, "parseSingleSegment JSON parse failed, trying as plain text: " + e.getMessage());
            if (!trimmed.isEmpty()) {
                EventLog.log(TAG, "parseSingleSegment fallback to plain text: \"" + trimmed + "\"");
                return new ASRResult(trimmed, 0f);
            }
            LogMgr.e(TAG, "Failed to parse ASR segment: " + json + " err=" + e);
            return null;
        }
    }

    private static class ASRResult {
        String text;
        float confidence;

        ASRResult(String text, float confidence) {
            this.text = text;
            this.confidence = confidence;
        }
    }
}
