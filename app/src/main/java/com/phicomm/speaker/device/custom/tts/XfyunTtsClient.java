package com.phicomm.speaker.device.custom.tts;

import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;

import android.util.Base64;

import com.phicomm.speaker.device.custom.config.AIConfig;
import com.unisound.vui.util.LogMgr;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/**
 * 讯飞 TTS WebAPI 客户端
 * 
 * 文档: https://www.xfyun.cn/doc/tts/online_tts/API.html
 * 
 * 工作流程:
 * 1. 构建鉴权 URL (HMAC-SHA256 签名)
 * 2. WebSocket 连接 wss://tts-api.xfyun.cn/v2/tts
 * 3. 发送 JSON 请求 (包含文本、音色、语速等参数)
 * 4. 接收音频数据 (Base64 编码,分段返回)
 * 5. 拼接音频并保存为 MP3 文件
 * 6. 使用 MediaPlayer 播放
 * 
 * Android 5.1 兼容:
 * - 使用 OkHttp WebSocket (不依赖 Java 11+ 的 HttpClient)
 * - 音频降级为 HTTP 播放 (绕过 SSL 证书问题)
 * 
 * 配置说明:
 * 讯飞 TTS 配置从 AIConfig 的扩展配置文件读取:
 * 配置文件路径: /data/data/com.phicomm.speaker.device/files/tts_config.ini
 */
public class XfyunTtsClient {
    private static final String TAG = "XfyunTtsClient";
    private static final String LOG_FILE = "/sdcard/eav_event.log";
    
    // 默认配置 (请在使用前修改或通过配置文件设置)
    private static final String DEFAULT_APP_ID = "0a640374";
    private static final String DEFAULT_API_SECRET = "OGE1NGE2N2YxY2E4N2I0ZmI4YmQ4NjNk";
    private static final String DEFAULT_API_KEY = "cccd2db3d09da7e277ca31f06d8c8ea3";
    private static final String TTS_URL = "wss://tts-api.xfyun.cn/v2/tts";
    private static final String HOST = "tts-api.xfyun.cn";
    
    // 实际使用的配置 (从配置文件加载)
    private String appId = DEFAULT_APP_ID;
    private String apiSecret = DEFAULT_API_SECRET;
    private String apiKey = DEFAULT_API_KEY;
    
    // 音频存储路径
    private static final String AUDIO_DIR = "/sdcard/r1-tts";
    
    // 默认参数
    private String voice = "x4_yezi";    // 音色: x4_yezi
    private int speed = 50;                 // 语速 0-100
    private int volume = 90;                // 音量 0-100
    private int pitch = 50;                 // 音调 0-100
    
    // 音频收集
    private ByteArrayOutputStream audioBuffer;
    private volatile boolean completed = false;
    private volatile String errorMsg = null;
    
    /**
     * 写入日志到文件
     */
    private static void writeLog(String message) {
        try {
            FileWriter fw = new FileWriter(LOG_FILE, true);
            String timestamp = new SimpleDateFormat("HH:mm:ss.SSS", Locale.US).format(new Date());
            fw.append(timestamp).append(" [").append(TAG).append("] ").append(message).append("\n");
            fw.close();
        } catch (Exception e) {
            LogMgr.e(TAG, "写入日志失败: " + e);
        }
    }
    
    /**
     * 构造函数 - 从配置文件加载配置
     */
    public XfyunTtsClient() {
        writeLog("=== XfyunTtsClient 构造函数被调用 ===");
        loadConfig();
    }
    
    /**
     * 从配置文件加载讯飞 TTS 配置
     * 配置文件: /data/data/com.phicomm.speaker.device/files/tts_config.ini
     * 如果配置文件不存在,使用默认配置
     */
    private void loadConfig() {
        try {
            File configFile = new File("/data/data/com.phicomm.speaker.device/files/tts_config.ini");
            if (!configFile.exists()) {
                LogMgr.d(TAG, "TTS config file not found, using defaults");
                return;
            }
            
            BufferedReader reader = new BufferedReader(
                new InputStreamReader(new FileInputStream(configFile), "UTF-8"));
            String line;
            boolean inSection = false;
            
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                if (line.equals("[TTS]")) {
                    inSection = true;
                    continue;
                } else if (line.startsWith("[")) {
                    inSection = false;
                    continue;
                }
                
                if (inSection && line.contains("=")) {
                    String[] parts = line.split("=", 2);
                    if (parts.length == 2) {
                        String key = parts[0].trim();
                        String value = parts[1].trim();
                        
                        switch (key) {
                            case "app_id":
                                this.appId = value;
                                break;
                            case "api_secret":
                                this.apiSecret = value;
                                break;
                            case "api_key":
                                this.apiKey = value;
                                break;
                            case "voice":
                                this.voice = value;
                                break;
                            case "speed":
                                this.speed = Integer.parseInt(value);
                                break;
                            case "volume":
                                this.volume = Integer.parseInt(value);
                                break;
                            case "pitch":
                                this.pitch = Integer.parseInt(value);
                                break;
                        }
                    }
                }
            }
            reader.close();
            
            LogMgr.d(TAG, "TTS config loaded: voice=" + voice + ", speed=" + speed);
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to load TTS config, using defaults: " + e);
        }
    }
    
    // 播放回调
    public interface TtsCallback {
        void onSuccess(String audioPath);
        void onError(String error);
    }
    
    /**
     * 合成语音并播放
     * 
     * @param context Android 上下文
     * @param text 要合成的文本
     * @param callback 回调
     */
    public void synthesizeAndPlay(Context context, String text, TtsCallback callback) {
        writeLog("=======================================");
        writeLog("synthesizeAndPlay 被调用");
        writeLog("文本: " + text);
        writeLog("appId: " + appId);
        writeLog("apiKey: " + apiKey.substring(0, Math.min(8, apiKey.length())) + "...");
        writeLog("=======================================");
        
        if (text == null || text.isEmpty()) {
            LogMgr.e(TAG, "TTS text is empty");
            writeLog("错误: 文本为空");
            callback.onError("文本为空");
            return;
        }
        
        LogMgr.d(TAG, "开始讯飞 TTS 合成, 文本: " + text);
        writeLog("开始合成流程");
        
        // 确保输出目录存在
        File dir = new File(AUDIO_DIR);
        if (!dir.exists()) {
            dir.mkdirs();
            writeLog("创建音频目录: " + AUDIO_DIR);
        }
        
        // 生成唯一文件名
        String fileName = UUID.randomUUID().toString() + ".mp3";
        String outputPath = AUDIO_DIR + "/" + fileName;
        writeLog("输出文件: " + outputPath);
        
        // 异步合成
        synthesizeToFile(text, outputPath, new TtsCallback() {
            @Override
            public void onSuccess(String audioPath) {
                writeLog("TTS 合成成功: " + audioPath);
                LogMgr.d(TAG, "TTS 合成成功: " + audioPath);
                
                // 播放音频
                playAudio(context, audioPath, new PlayCallback() {
                    @Override
                    public void onComplete() {
                        writeLog("TTS 播放完成");
                        LogMgr.d(TAG, "TTS 播放完成");
                        callback.onSuccess(audioPath);
                    }
                    
                    @Override
                    public void onError(String error) {
                        writeLog("TTS 播放失败: " + error);
                        LogMgr.e(TAG, "TTS 播放失败: " + error);
                        callback.onError("播放失败: " + error);
                    }
                });
            }
            
            @Override
            public void onError(String error) {
                writeLog("TTS 合成失败: " + error);
                LogMgr.e(TAG, "TTS 合成失败: " + error);
                callback.onError("合成失败: " + error);
            }
        });
        
        writeLog("synthesizeAndPlay 方法返回 (异步执行中)");
    }
    
    /**
     * 合成语音并保存到文件
     */
    private void synthesizeToFile(String text, String outputPath, TtsCallback callback) {
        writeLog("--- synthesizeToFile 开始 ---");
        try {
            // 构建鉴权 URL
            writeLog("正在构建鉴权 URL");
            String authUrl = getAuthUrl(TTS_URL, apiKey, apiSecret);
            LogMgr.d(TAG, "鉴权 URL: " + authUrl.substring(0, Math.min(100, authUrl.length())) + "...");
            writeLog("鉴权 URL 前缀: " + authUrl.substring(0, Math.min(100, authUrl.length())));
            
            // 初始化音频缓冲
            audioBuffer = new ByteArrayOutputStream();
            completed = false;
            errorMsg = null;
            writeLog("音频缓冲已初始化");
            
            // 创建 OkHttp 客户端
            OkHttpClient client = new OkHttpClient.Builder()
                    .connectTimeout(10, TimeUnit.SECONDS)
                    .readTimeout(30, TimeUnit.SECONDS)
                    .build();
            writeLog("OkHttp 客户端已创建");
            
            // 构建 WebSocket 请求
            Request request = new Request.Builder()
                    .url(authUrl)
                    .build();
            writeLog("WebSocket 请求已构建");
            
            // 异步连接
            writeLog("正在建立 WebSocket 连接...");
            WebSocket ws = client.newWebSocket(request, new WebSocketListener() {
                @Override
                public void onOpen(WebSocket webSocket, Response response) {
                    writeLog("WebSocket 连接已打开");
                    LogMgr.d(TAG, "WebSocket 连接已打开");
                    
                    // 发送 TTS 请求
                    sendRequest(webSocket, text);
                }
                
                @Override
                public void onMessage(WebSocket webSocket, String text) {
                    writeLog("收到文本消息, 长度: " + text.length());
                    handleTextMessage(webSocket, text);
                }
                
                @Override
                public void onMessage(WebSocket webSocket, ByteString bytes) {
                    writeLog("收到二进制消息, 长度: " + bytes.size());
                    // 讯飞 TTS 返回的是 JSON (文本),不是二进制
                    LogMgr.d(TAG, "收到二进制数据,长度: " + bytes.size());
                }
                
                @Override
                public void onClosed(WebSocket webSocket, int code, String reason) {
                    writeLog("WebSocket 关闭: code=" + code + ", reason=" + reason);
                    LogMgr.d(TAG, "WebSocket 关闭: code=" + code + ", reason=" + reason);
                    
                    if (completed && audioBuffer.size() > 0) {
                        // 保存音频到文件
                        try {
                            File outputFile = new File(outputPath);
                            File parent = outputFile.getParentFile();
                            if (parent != null && !parent.exists()) {
                                parent.mkdirs();
                            }
                            FileOutputStream fos = new FileOutputStream(outputFile);
                            fos.write(audioBuffer.toByteArray());
                            fos.close();
                            
                            LogMgr.d(TAG, "TTS 音频已保存: " + outputPath + ", 大小: " + audioBuffer.size() + " bytes");
                            callback.onSuccess(outputPath);
                        } catch (Exception e) {
                            LogMgr.e(TAG, "保存音频失败: " + e);
                            callback.onError("保存失败: " + e.getMessage());
                        }
                    } else if (!completed) {
                        callback.onError("合成未完成,错误: " + errorMsg);
                    }
                }
                
                @Override
                public void onFailure(WebSocket webSocket, Throwable t, Response response) {
                    writeLog("WebSocket 失败: " + t.getMessage());
                    t.printStackTrace();
                    LogMgr.e(TAG, "WebSocket 失败: " + t.getMessage());
                    callback.onError("连接失败: " + t.getMessage());
                }
            });
            
            writeLog("WebSocket 连接已发起 (异步)");
            
        } catch (Exception e) {
            writeLog("TTS 初始化失败: " + e.getMessage());
            e.printStackTrace();
            LogMgr.e(TAG, "TTS 初始化失败: " + e);
            callback.onError("初始化失败: " + e.getMessage());
        }
    }
    
    /**
     * 发送 TTS 请求
     */
    private void sendRequest(WebSocket ws, String text) {
        try {
            writeLog("正在构建 TTS 请求...");
            // 构建业务参数
            JSONObject business = new JSONObject();
            business.put("aue", "lame");              // MP3 格式
            business.put("sfl", 1);                    // 流式返回
            business.put("auf", "audio/L16;rate=16000");
            business.put("vcn", voice);
            business.put("speed", speed);
            business.put("volume", volume);
            business.put("pitch", pitch);
            business.put("bgs", 0);
            business.put("tte", "UTF8");
            
            // 构建数据 (Base64 编码文本)
            String textBase64 = Base64.encodeToString(text.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
            JSONObject data = new JSONObject();
            data.put("status", 2);
            data.put("text", textBase64);
            
            // 构建完整请求
            JSONObject common = new JSONObject();
            common.put("app_id", appId);
            
            JSONObject request = new JSONObject();
            request.put("common", common);
            request.put("business", business);
            request.put("data", data);
            
            writeLog("发送请求: app_id=" + appId + ", voice=" + voice + ", text=" + text);
            ws.send(request.toString());
            LogMgr.d(TAG, "TTS 请求已发送");
            writeLog("TTS 请求已发送");
        } catch (Exception e) {
            writeLog("构建 TTS 请求失败: " + e.getMessage());
            LogMgr.e(TAG, "构建 TTS 请求失败: " + e);
            errorMsg = "构建请求失败: " + e.getMessage();
        }
    }
    
    /**
     * 处理文本消息
     */
    private void handleTextMessage(WebSocket ws, String text) {
        try {
            writeLog("收到响应: " + text.substring(0, Math.min(200, text.length())));
            LogMgr.d(TAG, "收到响应: " + text.substring(0, Math.min(200, text.length())));
            
            JSONObject root = new JSONObject(text);
            int code = root.optInt("code", -1);
            String sid = root.optString("sid", "");
            String message = root.optString("message", "");
            
            writeLog("TTS code: " + code + ", sid: " + sid + ", message: " + message);
            
            if (code != 0) {
                LogMgr.e(TAG, "TTS 错误: code=" + code + ", message=" + message);
                writeLog("TTS 错误: code=" + code + ", message=" + message);
                errorMsg = message;
                ws.close(1000, "Error");
                return;
            }
            
            LogMgr.d(TAG, "TTS session: " + sid);
            writeLog("TTS session: " + sid);
            
            // 提取音频数据
            JSONObject dataObj = root.optJSONObject("data");
            if (dataObj != null) {
                String audioBase64 = dataObj.optString("audio", "");
                int status = dataObj.optInt("status", 0);
                
                writeLog("收到音频片段, Base64长度: " + audioBase64.length() + ", status: " + status);
                
                if (!audioBase64.isEmpty()) {
                    byte[] audioBytes = Base64.decode(audioBase64, Base64.DEFAULT);
                    audioBuffer.write(audioBytes);
                    LogMgr.d(TAG, "收到音频片段: " + audioBytes.length + " bytes");
                    writeLog("音频缓冲累计: " + audioBuffer.size() + " bytes");
                }
                
                if (status == 2) {
                    completed = true;
                    LogMgr.d(TAG, "TTS 合成完成,总音频: " + audioBuffer.size() + " bytes");
                    writeLog("TTS 合成完成,总音频: " + audioBuffer.size() + " bytes");
                    ws.close(1000, "Completed");
                }
            }
        } catch (Exception e) {
            writeLog("解析 TTS 响应失败: " + e.getMessage());
            LogMgr.e(TAG, "解析 TTS 响应失败: " + e);
            errorMsg = "解析失败: " + e.getMessage();
        }
    }
    
    /**
     * 构建鉴权 URL
     */
    private String getAuthUrl(String url, String apiKey, String apiSecret) throws Exception {
        URI uri = new URI(url);
        String host = uri.getHost();
        String path = uri.getPath();
        String date = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US)
                .format(new Date());
        
        // 构建签名字符串
        String signatureOrigin = "host: " + host + "\n"
                + "date: " + date + "\n"
                + "GET " + path + " HTTP/1.1";
        
        // HMAC-SHA256 签名
        Mac mac = Mac.getInstance("HmacSHA256");
        SecretKeySpec keySpec = new SecretKeySpec(apiSecret.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
        mac.init(keySpec);
        byte[] signatureBytes = mac.doFinal(signatureOrigin.getBytes(StandardCharsets.UTF_8));
        String signature = Base64.encodeToString(signatureBytes, Base64.NO_WRAP);
        
        // 构建 authorization
        String authorizationOrigin = String.format(
                "api_key=\"%s\", algorithm=\"hmac-sha256\", headers=\"host date request-line\", signature=\"%s\"",
                apiKey, signature
        );
        String authorization = Base64.encodeToString(authorizationOrigin.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
        
        // 拼接 URL
        return url + "?authorization=" + java.net.URLEncoder.encode(authorization, "UTF-8")
                + "&date=" + java.net.URLEncoder.encode(date, "UTF-8")
                + "&host=" + java.net.URLEncoder.encode(host, "UTF-8");
    }
    
    /**
     * 播放音频文件
     */
    private void playAudio(Context context, String audioPath, PlayCallback callback) {
        try {
            File audioFile = new File(audioPath);
            if (!audioFile.exists()) {
                callback.onError("音频文件不存在: " + audioPath);
                return;
            }
            
            MediaPlayer player = new MediaPlayer();
            player.setDataSource(audioPath);
            player.prepare();
            
            final MediaPlayer finalPlayer = player;
            player.setOnCompletionListener(new MediaPlayer.OnCompletionListener() {
                @Override
                public void onCompletion(MediaPlayer mp) {
                    LogMgr.d(TAG, "音频播放完成");
                    mp.release();
                    callback.onComplete();
                }
            });
            
            player.setOnErrorListener(new MediaPlayer.OnErrorListener() {
                @Override
                public boolean onError(MediaPlayer mp, int what, int extra) {
                    LogMgr.e(TAG, "音频播放错误: what=" + what + ", extra=" + extra);
                    mp.release();
                    callback.onError("播放错误");
                    return true;
                }
            });
            
            player.start();
            LogMgr.d(TAG, "开始播放音频: " + audioPath);
        } catch (Exception e) {
            LogMgr.e(TAG, "播放音频失败: " + e);
            callback.onError("播放失败: " + e.getMessage());
        }
    }
    
    /**
     * 播放回调接口
     */
    public interface PlayCallback {
        void onComplete();
        void onError(String error);
    }
}
