package com.phicomm.speaker.device.custom.ai;

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
    private static final int CONNECT_TIMEOUT = 10000;  // 10秒
    private static final int READ_TIMEOUT = 30000;     // 30秒(大模型响应慢)
    
    private AIConfig config;
    
    public OpenAIClient(AIConfig config) {
        this.config = config;
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
        if (userInput == null || userInput.isEmpty()) {
            LogMgr.e(TAG, "Empty user input");
            return null;
        }
        
        try {
            // 1. 构建请求体
            String requestBody = buildRequestBodyWithHistory(userInput, conversationHistory, systemPrompt);
            
            // 构建完整 URL
            String fullUrl = config.getBaseUrl();
            if (!fullUrl.endsWith("/chat/completions")) {
                fullUrl = fullUrl.endsWith("/") ? fullUrl + "chat/completions" : fullUrl + "/chat/completions";
            }
            
            LogMgr.d(TAG, "=== [DEBUG] 大模型 API 调用 ===");
            LogMgr.d(TAG, "[DEBUG] BaseURL: " + config.getBaseUrl());
            LogMgr.d(TAG, "[DEBUG] FullURL: " + fullUrl);
            LogMgr.d(TAG, "[DEBUG] Model: " + config.getModel());
            LogMgr.d(TAG, "[DEBUG] APIKey: " + config.getApiKey().substring(0, Math.min(8, config.getApiKey().length())) + "...");
            LogMgr.d(TAG, "[DEBUG] Temperature: " + config.getTemperature());
            LogMgr.d(TAG, "[DEBUG] MaxTokens: " + config.getMaxTokens());
            LogMgr.d(TAG, "[DEBUG] RequestBody: " + requestBody);
            
            // 2. 发送 HTTP POST 请求
            String response = httpPostJson(fullUrl, requestBody);
            
            if (response == null || response.isEmpty()) {
                LogMgr.e(TAG, "=== 大模型 API 返回空响应 ===");
                return null;
            }
            
            LogMgr.d(TAG, "=== 大模型 API 原始响应 ===");
            LogMgr.d(TAG, response);
            
            // 3. 解析响应
            String reply = parseResponse(response);
            
            if (reply != null && !reply.isEmpty()) {
                LogMgr.d(TAG, "=== 大模型解析后回复 ===");
                LogMgr.d(TAG, reply);
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
    
    /**
     * 构建 OpenAI 兼容的 JSON 请求体(带对话历史)
     * @param userInput 用户输入
     * @param conversationHistory 格式化的对话历史(可选)
     * @param systemPrompt 系统提示词(可选)
     */
    private String buildRequestBodyWithHistory(String userInput, String conversationHistory, String systemPrompt) {
        try {
            JSONObject json = new JSONObject();
            
            // model
            json.put("model", config.getModel());
            
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
     * HTTP POST JSON 请求
     * 复用 NetEaseMusicClient 的模式
     */
    private String httpPostJson(String urlStr, String jsonBody) {
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
            conn.setRequestProperty("Authorization", "Bearer " + config.getApiKey());
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
                LogMgr.e(TAG, "httpPostJson failed: " + responseCode + ", error body: " + errorBody);
                return null;
            }
            
            // 读取响应
            StringBuilder response = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                response.append(line);
            }
            
            return response.toString();
            
        } catch (Exception e) {
            LogMgr.e(TAG, "httpPostJson error: " + e);
            e.printStackTrace();
            return null;
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
