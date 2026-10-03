package com.phicomm.speaker.device.custom.ai;

import android.util.Base64;
import android.util.Log;

import com.phicomm.speaker.device.custom.config.AIConfig;
import com.unisound.vui.util.LogMgr;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

/**
 * OpenAI 兼容 API 客户端
 * 
 * 支持智谱 GLM、OpenAI 等兼容 OpenAI 接口的大模型服务
 * 使用 HttpURLConnection 实现,Android 5.1 兼容
 * 
 * API 格式参考: https://platform.openai.com/docs/api-reference/chat
 */
public class OpenAIClient {
    private static final String TAG = "OpenAIClient";
    
    // 超时设置
    //
    // ⚠️ READ_TIMEOUT 原来是 30 秒，实测不够用：
    //    GLM-4.7-Flash 是混合思考模型，开思考时一次请求要 27 秒，
    //    服务端繁忙时甚至到 75 秒 —— 30 秒必然 SocketTimeout，表现为"调用失败"。
    //    音箱是语音交互，用户等得起几十秒（有 TTS 兜底），等不起失败，所以放宽。
    private static final int CONNECT_TIMEOUT = 15000;   // 15秒
    private static final int READ_TIMEOUT = 90000;      // 90秒(大模型响应可能很慢)

    /** 遇到限流(429) / 服务端错误(5xx) / 超时时的重试次数(总尝试次数) */
    private static final int MAX_ATTEMPTS = 3;
    /** 重试等待基数: 第 n 次重试等待 BASE * n 毫秒 */
    private static final long RETRY_BACKOFF_MS = 3000L;

    /**
     * 某一级端点挂了之后,多久之内不再试探,直接往下一级退。
     *
     * 不能每轮都从头试:局域网那台机器关机时,连不上要等满 CONNECT_TIMEOUT(15s)
     * 才算失败,用户每问一句都要干等十几秒。所以判定挂了就"封"一段时间。
     */
    private static final long DOWN_COOLDOWN_MS = 5 * 60 * 1000L;

    /** 三级兜底链: 有下一级可退时, 本级最多试几次就让位(硬失败等 3×15s 太久) */
    private static final int ATTEMPTS_WITH_FALLBACK = 2;

    /** 链上每一级的冷却到期时间(static: 主对话/调侃各有一个 client 实例, 状态要共享) */
    private static final long[] sDownUntil = new long[3];

    /** 链上的一级端点 */
    private static class Endpoint {
        String name;        // 日志用: "L1主端点" / "L2备用" / "L3备用"
        int slot;           // 冷却槽下标(和链上的位置解耦, 跳过某级也不会串位)
        String url;
        String key;
        String model;
        boolean wantAudio;  // 只有豆包链能合成语音
        String topicUser;   // 豆包链话题 id, null = 不发
    }

    private AIConfig config;

    public OpenAIClient(AIConfig config) {
        this.config = config;
    }

    /**
     * 一次大模型调用的结果: 文本 + (可选)服务端顺带合成的语音。
     *
     * audio 只有走【豆包链那道门】时才会有 —— 豆包网页端的朗读接口
     * (frontier VoiceGenie) 是按 message_id 去会话库里取"豆包刚答过的那条"来读的,
     * 所以它能且只能读豆包自己的回答, 正好是音箱要的。
     * 官方端点(智谱/方舟)不认识 audio 字段, 会直接忽略 → audio 为 null → 退回原厂 TTS。
     */
    public static class Reply {
        /** 回答文本 */
        public String text;
        /** 语音字节(mp3/ogg), 没有则为 null */
        public byte[] audio;
        /** 音频格式, 如 mp3 */
        public String audioFormat;
        /** 服务端给的音频相对地址(兜底用, 一般直接用内联的 audio 字节) */
        public String audioUrl;
    }
    
    /**
     * 调用大模型 API (带自定义系统提示词)
     * @param userInput 用户输入文本
     * @param systemPrompt 系统提示词(可选,为 null 时使用默认)
     * @return 大模型回复文本,失败返回 null
     */
    public String chat(String userInput, String systemPrompt) {
        return chatWithHistory(userInput, null, systemPrompt);
    }
    
    /**
     * 调用大模型 API (带对话历史)
     * @param userInput 用户输入文本
     * @param conversationHistory 格式化的对话历史文本(可为 null)
     * @param systemPrompt 系统提示词(可选,为 null 时使用默认)
     * @return 大模型回复文本,失败返回 null
     */
    public String chatWithHistory(String userInput, String conversationHistory, String systemPrompt) {
        Reply r = chatWithHistoryEx(userInput, conversationHistory, systemPrompt, null);
        return (r == null) ? null : r.text;
    }

    /**
     * 带语音的调用。topicUser 给豆包链分话题用(同一个 id 复用同一个豆包会话,
     * 传 null 则用配置里的 user)。
     */
    public Reply chatWithHistoryEx(String userInput, String conversationHistory, String systemPrompt,
                                   String topicUser) {
        if (userInput == null || userInput.isEmpty()) {
            LogMgr.e(TAG, "Empty user input");
            return null;
        }

        boolean wantAudio = "doubao".equalsIgnoreCase(config.getTts());
        String primaryTopic = (topicUser == null || topicUser.trim().isEmpty())
                ? config.getUser() : topicUser.trim();

        // ---- 组装三级兜底链 ----
        //   L1 主端点(局域网豆包链, 唯一能给豆包音色的一级)
        //   L2 fallback_*     (火山方舟 Doubao-Seed-2.0-lite)
        //   L3 fallback2_*    (智谱 GLM-4.5-Flash, 免费那档)
        // 没配 Key / 跟前面某级重复的级会被自动剔除, 链最短可以只有 1 级。
        ArrayList<Endpoint> chain = new ArrayList<Endpoint>();
        addEndpoint(chain, "L1主端点", 0,
                config.getBaseUrl(), config.getApiKey(), config.getModel(), wantAudio, primaryTopic);
        addEndpoint(chain, "L2备用", 1,
                config.getFallbackBaseUrl(), config.getFallbackApiKey(), config.getFallbackModel(),
                false, null);
        addEndpoint(chain, "L3备用", 2,
                config.getFallback2BaseUrl(), config.getFallback2ApiKey(), config.getFallback2Model(),
                false, null);

        if (chain.isEmpty()) {
            LogMgr.e(TAG, "[FALLBACK] 三级端点都没配 Key, 无从下手(见 ai_config.ini)");
            return null;
        }

        // 三级都在冷却(比如整栋楼断网 5 分钟) → 全部解封重来一遍。
        // 否则链上没有一级可试, 音箱会连续 5 分钟一句话都答不上来。
        long now0 = System.currentTimeMillis();
        boolean anyAlive = false;
        for (int i = 0; i < chain.size(); i++) {
            if (now0 >= sDownUntil[chain.get(i).slot]) { anyAlive = true; break; }
        }
        if (!anyAlive) {
            LogMgr.w(TAG, "[FALLBACK] 链上每一级都在冷却, 全部解封重新试一遍");
            for (int i = 0; i < sDownUntil.length; i++) sDownUntil[i] = 0L;
        }

        // ---- 一级一级往下退, 谁先答上来就用谁 ----
        for (int i = 0; i < chain.size(); i++) {
            Endpoint e = chain.get(i);
            long now = System.currentTimeMillis();

            if (now < sDownUntil[e.slot]) {
                LogMgr.d(TAG, "[FALLBACK] " + e.name + " 冷却中(剩余 "
                        + ((sDownUntil[e.slot] - now) / 1000) + "s), 跳过");
                continue;
            }

            boolean isLast = (i == chain.size() - 1);
            int attempts = isLast ? MAX_ATTEMPTS : ATTEMPTS_WITH_FALLBACK;

            LogMgr.d(TAG, "[CHAIN] 尝试 " + e.name + " (" + (i + 1) + "/" + chain.size() + "): "
                    + e.url + " model=" + e.model);
            // 备用级: 不发 audio(合成不了豆包音色) / 不带话题 id。
            // thinking 沿用主配置: 智谱和方舟都认 {"type":"disabled"}, 关掉能快好几倍
            // (方舟实测开思考 9.6s、关思考 1.8s); 非智谱端点请把 ini 的 thinking 设为 auto。
            Reply r = callEndpoint(e.url, e.key, e.model, config.getThinking(),
                    e.wantAudio, e.topicUser, attempts,
                    userInput, conversationHistory, systemPrompt);

            if (r != null && r.text != null && !r.text.isEmpty()) {
                sDownUntil[e.slot] = 0L;   // 这一级活了, 解除封禁
                if (i > 0) {
                    LogMgr.w(TAG, "[FALLBACK] 已降级到 " + e.name + " (" + e.url
                            + " model=" + e.model + "), 回复: " + r.text);
                }
                return r;
            }

            // 这一级不可用 → 封一段时间, 期间不再浪费 15s 去连它
            sDownUntil[e.slot] = System.currentTimeMillis() + DOWN_COOLDOWN_MS;
            LogMgr.w(TAG, "[FALLBACK] " + e.name + " 不可用, " + (DOWN_COOLDOWN_MS / 1000)
                    + "s 内不再试探" + (isLast ? "(已是最后一级)" : ", 退到下一级"));
        }

        LogMgr.e(TAG, "[FALLBACK] " + chain.size() + " 级端点全部失败");
        return null;
    }

    /**
     * 往链上加一级。三种情况直接不加(省掉必然失败的一次 15s 连接):
     *   1) 没配 Key 或 Key 是占位符 → 调了也是 401
     *   2) 地址为空
     *   3) 地址和模型跟链上已有的一级完全一样 → 同一个端点重试没意义
     */
    private void addEndpoint(ArrayList<Endpoint> chain, String name, int slot,
                             String url, String key, String model,
                             boolean wantAudio, String topicUser) {
        if (url == null || url.trim().isEmpty()) {
            LogMgr.d(TAG, "[CHAIN] " + name + " 未配地址, 跳过");
            return;
        }
        if (isPlaceholderKey(key)) {
            LogMgr.d(TAG, "[CHAIN] " + name + " 未配 Key, 跳过");
            return;
        }
        String u = url.trim();
        String m = (model == null) ? "" : model.trim();
        for (int i = 0; i < chain.size(); i++) {
            Endpoint old = chain.get(i);
            if (u.equals(old.url) && m.equals(old.model)) {
                LogMgr.d(TAG, "[CHAIN] " + name + " 与 " + old.name + " 重复, 跳过");
                return;
            }
        }

        Endpoint e = new Endpoint();
        e.name = name;
        e.slot = slot;
        e.url = u;
        e.key = key.trim();
        e.model = m;
        e.wantAudio = wantAudio;
        e.topicUser = topicUser;
        chain.add(e);
    }

    /**
     * 打一次端点。所有参数显式传入,主/备端点共用同一套逻辑。
     *
     * @param thinking   "auto" = 不发 thinking 字段(兼容非智谱端点)
     * @param wantAudio  是否请求服务端顺便合成语音(只有豆包链支持)
     * @param topicUser  豆包链话题 id, null = 不发 user 字段
     */
    private Reply callEndpoint(String baseUrl, String apiKey, String model, String thinking,
                               boolean wantAudio, String topicUser, int maxAttempts,
                               String userInput, String conversationHistory, String systemPrompt) {
        if (baseUrl == null || baseUrl.isEmpty()) {
            LogMgr.e(TAG, "callEndpoint: baseUrl 为空");
            return null;
        }
        try {
            // 1. 构建请求体
            String requestBody = buildRequestBodyWithHistory(userInput, conversationHistory,
                    systemPrompt, model, thinking, wantAudio, topicUser);

            // 构建完整 URL
            String fullUrl = baseUrl;
            if (!fullUrl.endsWith("/chat/completions")) {
                fullUrl = fullUrl.endsWith("/") ? fullUrl + "chat/completions" : fullUrl + "/chat/completions";
            }

            LogMgr.d(TAG, "=== [DEBUG] 大模型 API 调用 ===");
            LogMgr.d(TAG, "[DEBUG] FullURL: " + fullUrl);
            LogMgr.d(TAG, "[DEBUG] Model: " + model);
            LogMgr.d(TAG, "[DEBUG] APIKey: " + mask(apiKey));
            LogMgr.d(TAG, "[DEBUG] Temperature: " + config.getTemperature());
            LogMgr.d(TAG, "[DEBUG] MaxTokens: " + config.getMaxTokens());
            LogMgr.d(TAG, "[DEBUG] RequestBody: " + requestBody);

            // 2. 发送 HTTP POST 请求(maxAttempts 由调用方给: 主端点可降级时少重试, 早点让位)
            String response = httpPostJson(fullUrl, requestBody, apiKey, maxAttempts);

            if (response == null || response.isEmpty()) {
                LogMgr.e(TAG, "=== 大模型 API 返回空响应 ===");
                return null;
            }

            LogMgr.d(TAG, "=== 大模型 API 原始响应 ===");
            LogMgr.d(TAG, response);

            // 3. 解析响应
            Reply reply = parseReply(response);

            if (reply != null && reply.text != null && !reply.text.isEmpty()) {
                LogMgr.d(TAG, "=== 大模型解析后回复 ===");
                LogMgr.d(TAG, reply.text);
                LogMgr.d(TAG, "[音频] " + (reply.audio == null ? "无 → 退回原厂 TTS"
                        : reply.audio.length + " 字节 / " + reply.audioFormat));
                return reply;
            } else {
                LogMgr.e(TAG, "=== 大模型响应解析失败 ===");
                return null;
            }

        } catch (Exception e) {
            LogMgr.e(TAG, "=== 大模型 API 调用异常 ===");
            LogMgr.e(TAG, e.toString());
            e.printStackTrace();
            return null;
        }
    }

    private static String mask(String key) {
        if (key == null) return "null";
        return key.substring(0, Math.min(8, key.length())) + "...";
    }

    /** 占位 key(没填真的) → 降级也没意义 */
    private static boolean isPlaceholderKey(String key) {
        return key == null || key.isEmpty() || key.startsWith("YOUR_");
    }
    
    /**
     * 构建 OpenAI 兼容的 JSON 请求体(带对话历史)
     * @param userInput 用户输入
     * @param conversationHistory 格式化的对话历史(可选)
     * @param systemPrompt 系统提示词(可选)
     */
    private String buildRequestBodyWithHistory(String userInput, String conversationHistory,
                                               String systemPrompt, String model, String thinking,
                                               boolean wantAudio, String topicUser) {
        try {
            JSONObject json = new JSONObject();
            
            // model
            json.put("model", model);
            
            // messages
            JSONArray messages = new JSONArray();
            
            // system prompt
            JSONObject systemMsg = new JSONObject();
            systemMsg.put("role", "system");
            
            // 构建系统提示词内容
            StringBuilder systemContent = new StringBuilder();
            
            // 基础系统提示词
            if (systemPrompt != null && !systemPrompt.isEmpty()) {
                systemContent.append(systemPrompt);
            } else {
                systemContent.append("你是台湾妹子,请用机车口语化的方式回答。回答要简短 要调皮。");
            }
            
            // 添加历史上下文
            if (conversationHistory != null && !conversationHistory.isEmpty()) {
                systemContent.append("\n\n");
                systemContent.append("以下是之前的对话历史,如果当前问题与历史相关,请参考上下文回答:\n\n");
                systemContent.append(conversationHistory);
            }
            
            systemMsg.put("content", systemContent.toString());
            messages.put(systemMsg);
            
            // user message
            JSONObject userMsg = new JSONObject();
            userMsg.put("role", "user");
            userMsg.put("content", userInput);
            messages.put(userMsg);
            
            json.put("messages", messages);
            
            // temperature - 修复 float 精度
            json.put("temperature", Math.round(config.getTemperature() * 100.0) / 100.0);
            
            // max_tokens
            json.put("max_tokens", config.getMaxTokens());

            // thinking: 智谱"混合思考模型"专用开关。
            //   disabled = 关闭思考(推荐): 音箱是语音短交互,不需要深度推理,
            //     关掉后省掉 600+ reasoning tokens,响应明显变快。
            //   enabled  = 打开思考; auto = 不发送该字段(兼容 OpenAI 等非智谱端点)。
            if (thinking != null && !thinking.trim().isEmpty()
                    && !"auto".equalsIgnoreCase(thinking.trim())) {
                JSONObject thinkingObj = new JSONObject();
                thinkingObj.put("type", thinking.trim());
                json.put("thinking", thinkingObj);
            }

            // 豆包链专用: 让服务端顺带把这条回答用豆包自己的声音合成出来。
            // 只有 tts=doubao 时才发; 官方端点(智谱/方舟)不认识这个字段会被忽略,
            // 那时 audio 为 null, 音箱自动退回原厂 TTS, 不会出错。
            if (wantAudio) {
                json.put("audio", new JSONObject());
            }

            // 豆包链按 user 分话题: 同一个 id 复用同一个豆包会话(跨轮有记忆),
            // 换 id 就另起一个话题。调侃走另一个 id, 免得污染主对话。
            // 备用端点不是豆包链 → 不发这个字段。
            if (topicUser != null && !topicUser.trim().isEmpty()) {
                json.put("user", topicUser.trim());
            }

            return json.toString();
            
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to build request body with history: " + e);
            return null;
        }
    }
    
    /**
     * 解析 OpenAI 响应,提取回复文本
     * 
     * 响应格式:
     * {
     *   "choices": [
     *     {
     *       "message": {
     *         "role": "assistant",
     *         "content": "回复内容"
     *       }
     *     }
     *   ]
     * }
     */
    private String parseResponse(String json) {
        try {
            JSONObject root = new JSONObject(json);
            
            // 检查是否有 error
            if (root.has("error")) {
                JSONObject error = root.getJSONObject("error");
                String errorMsg = error.optString("message", "Unknown error");
                LogMgr.e(TAG, "API error: " + errorMsg);
                return null;
            }
            
            // 提取 choices[0].message.content
            JSONArray choices = root.getJSONArray("choices");
            if (choices.length() > 0) {
                JSONObject firstChoice = choices.getJSONObject(0);
                JSONObject message = firstChoice.getJSONObject("message");
                String content = message.getString("content");
                return content;
            }
            
            return null;
            
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to parse response: " + e);
            return null;
        }
    }
    
    /**
     * 解析 OpenAI 响应: 文本 + (豆包链顺带合成的)语音
     *
     * 豆包链会在 message.audio 里给回:
     *   {"id": "...", "format": "mp3", "data": "<base64>", "url": "/v1/audio/<id>"}
     * data 是整段 mp3 的 base64, 直接解码落盘就能播, 不用再发一次 HTTP 去取。
     */
    private Reply parseReply(String json) {
        try {
            JSONObject root = new JSONObject(json);

            if (root.has("error")) {
                JSONObject error = root.getJSONObject("error");
                LogMgr.e(TAG, "API error: " + error.optString("message", "Unknown error"));
                return null;
            }

            JSONArray choices = root.getJSONArray("choices");
            if (choices.length() == 0) {
                return null;
            }
            JSONObject message = choices.getJSONObject(0).getJSONObject("message");

            Reply r = new Reply();
            r.text = message.optString("content", "");

            JSONObject audio = message.optJSONObject("audio");
            if (audio != null) {
                r.audioFormat = audio.optString("format", "mp3");
                r.audioUrl = audio.optString("url", null);
                String data = audio.optString("data", null);
                if (data != null && data.length() > 0) {
                    try {
                        r.audio = Base64.decode(data, Base64.DEFAULT);
                    } catch (Exception e) {
                        LogMgr.e(TAG, "音频 base64 解码失败: " + e);
                        r.audio = null;
                    }
                }
            }
            return r;
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to parse response: " + e);
            return null;
        }
    }

    /**
     * HTTP POST JSON 请求
     * 复用 NetEaseMusicClient 的模式
     */
    /** 单次请求的结果封装(用于判断是否值得重试) */
    private static class HttpResult {
        String body;        // 成功时为响应体, 失败时为 null
        boolean retryable;  // 限流/超时/服务端错误 → 可重试
        String summary;     // 失败原因简述
    }

    /**
     * HTTP POST JSON 请求(带重试)
     *
     * 免费额度下智谱会返回 429「账户已达到速率限制」, 偶发超时也常见,
     * 所以这里对可恢复的错误做退避重试, 避免用户一句话就说"调用失败"。
     */
    private String httpPostJson(String urlStr, String jsonBody, String apiKey, int maxAttempts) {
        HttpResult last = null;

        for (int attempt = 1; attempt <= maxAttempts; attempt++) {
            HttpResult r = httpPostJsonOnce(urlStr, jsonBody, apiKey);
            if (r.body != null) {
                return r.body;
            }

            last = r;
            if (!r.retryable || attempt >= maxAttempts) {
                break;
            }

            long waitMs = RETRY_BACKOFF_MS * attempt;
            LogMgr.d(TAG, "调用失败(" + r.summary + "), " + waitMs + "ms 后第 " + (attempt + 1) + " 次尝试");
            try {
                Thread.sleep(waitMs);
            } catch (InterruptedException ie) {
                Thread.currentThread().interrupt();
                break;
            }
        }

        LogMgr.e(TAG, "大模型调用最终失败: " + (last == null ? "unknown" : last.summary));
        return null;
    }

    private HttpResult httpPostJsonOnce(String urlStr, String jsonBody, String apiKey) {
        HttpResult result = new HttpResult();
        HttpURLConnection conn = null;
        BufferedReader reader = null;
        OutputStream os = null;

        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            
            // 设置请求方法
            conn.setRequestMethod("POST");
            
            // 设置超时
            conn.setConnectTimeout(CONNECT_TIMEOUT);
            conn.setReadTimeout(READ_TIMEOUT);
            
            // 允许输入输出
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setUseCaches(false);
            
            // 设置请求头
            conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
            conn.setRequestProperty("Accept", "application/json");
            conn.setRequestProperty("Authorization", "Bearer " + apiKey);
            conn.setRequestProperty("User-Agent", "R1-Speaker/1.0");
            
            // 发送请求体
            os = conn.getOutputStream();
            os.write(jsonBody.getBytes("UTF-8"));
            os.flush();
            
            // 检查响应码
            int responseCode = conn.getResponseCode();
            if (responseCode != 200) {
                // 读取错误响应体,诊断 400/401/403 等具体错误
                String errorBody = "";
                try {
                    BufferedReader errorReader = new BufferedReader(
                        new InputStreamReader(conn.getErrorStream(), "UTF-8"));
                    StringBuilder errorSB = new StringBuilder();
                    String eline;
                    while ((eline = errorReader.readLine()) != null) {
                        errorSB.append(eline);
                    }
                    errorReader.close();
                    errorBody = errorSB.toString();
                } catch (Exception ignored) {}

                // 429 限流 / 5xx 服务端错误 → 重试有意义; 4xx 参数或鉴权错误 → 重试无意义
                result.retryable = (responseCode == 429 || responseCode >= 500);
                result.summary = "HTTP " + responseCode + " " + errorBody;
                LogMgr.e(TAG, "httpPostJson failed: " + responseCode + ", error body: " + errorBody
                        + (result.retryable ? " (可重试)" : " (不可重试)"));
                return result;
            }

            // 读取响应
            StringBuilder response = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }

            result.body = response.toString();
            return result;

        } catch (java.net.SocketTimeoutException e) {
            // 读取超时: 大模型慢或网络抖动, 重试往往能成
            result.retryable = true;
            result.summary = "超时: " + e;
            LogMgr.e(TAG, "httpPostJson timeout: " + e);
            return result;
        } catch (Exception e) {
            result.retryable = true;   // 网络类异常一般可重试
            result.summary = e.toString();
            LogMgr.e(TAG, "httpPostJson error: " + e);
            e.printStackTrace();
            return result;
        } finally {
            // 关闭资源
            try {
                if (os != null) os.close();
                if (reader != null) reader.close();
                if (conn != null) conn.disconnect();
            } catch (Exception ignored) {
                // 忽略关闭异常
            }
        }
    }
}
