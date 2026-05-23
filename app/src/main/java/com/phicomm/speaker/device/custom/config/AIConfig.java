package com.phicomm.speaker.device.custom.config;

import android.content.Context;
import android.util.Log;

import com.unisound.vui.util.LogMgr;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;

/**
 * AI 配置管理类
 * 
 * 负责读取和保存大模型 API 配置文件
 * 配置文件路径: /data/data/com.phicomm.speaker.device/files/ai_config.ini
 * 
 * 配置文件格式(INI):
 * [AI]
 * provider = openai
 * base_url = https://open.bigmodel.cn/api/paas/v4/chat/completions
 * api_key = xxx
 * model = graph LR
    A[用户说: 李白是谁] --> B[设备ASR识别]
    B --> C[发送到云之声NLU云端]
    C --> D[云端返回NLU结果]
    D --> E{Pipeline分发}
    E --> F[PhicommChatHandler 拦截]
    F --> G[调用智谱GLM API]
    G --> H[HTTP 400 失败]
    H --> I[TTS: 模型调用失败]
    D --> J[DefaultChatHandler]
    J --> K[本来要播报云端答案]
    K --> L[被PhicommChat抢先消费]
 * temperature = 0.7
 * max_tokens = 2048
 */
public class AIConfig {
    private static final String TAG = "AIConfig";
    private static final String CONFIG_FILE = "ai_config.ini";
    private static final String SECTION_AI = "[AI]";
    
    // 默认配置
    private static final String DEFAULT_PROVIDER = "openai";
    private static final String DEFAULT_BASE_URL = "https://open.bigmodel.cn/api/paas/v4/chat/completions";
    private static final String DEFAULT_API_KEY = "2e9d919870cc4192bcd87c82cfa0aab6";
    private static final String DEFAULT_MODEL = "GLM-4.5-Flash";
    private static final float DEFAULT_TEMPERATURE = 0.7f;
    private static final int DEFAULT_MAX_TOKENS = 2048;
    
    // 配置项
    private String provider;
    private String baseUrl;
    private String apiKey;
    private String model;
    private float temperature;
    private int maxTokens;
    
    /**
     * 加载配置文件
     * 如果文件不存在,创建默认配置
     */
    public static AIConfig load(Context context) {
        File configFile = new File(context.getFilesDir(), CONFIG_FILE);
        
        if (!configFile.exists()) {
            LogMgr.d(TAG, "Config file not found, creating default config");
            createDefaultConfig(context);
        }
        
        AIConfig config = new AIConfig();
        config.readFromFile(configFile);
        
        return config;
    }
    
    /**
     * 保存配置到文件
     */
    public void save(Context context) {
        File configFile = new File(context.getFilesDir(), CONFIG_FILE);
        
        try {
            FileOutputStream fos = new FileOutputStream(configFile);
            StringBuilder sb = new StringBuilder();
            
            sb.append(SECTION_AI).append("\n");
            sb.append("provider = ").append(provider).append("\n");
            sb.append("base_url = ").append(baseUrl).append("\n");
            sb.append("api_key = ").append(apiKey).append("\n");
            sb.append("model = ").append(model).append("\n");
            sb.append("temperature = ").append(temperature).append("\n");
            sb.append("max_tokens = ").append(maxTokens).append("\n");
            
            fos.write(sb.toString().getBytes("UTF-8"));
            fos.close();
            
            LogMgr.d(TAG, "Config saved to: " + configFile.getAbsolutePath());
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to save config: " + e);
        }
    }
    
    /**
     * 从文件读取配置
     */
    private void readFromFile(File configFile) {
        // 设置默认值
        this.provider = DEFAULT_PROVIDER;
        this.baseUrl = DEFAULT_BASE_URL;
        this.apiKey = DEFAULT_API_KEY;
        this.model = DEFAULT_MODEL;
        this.temperature = DEFAULT_TEMPERATURE;
        this.maxTokens = DEFAULT_MAX_TOKENS;
        
        try {
            FileInputStream fis = new FileInputStream(configFile);
            BufferedReader reader = new BufferedReader(new InputStreamReader(fis, "UTF-8"));
            
            String line;
            boolean inAiSection = false;
            
            while ((line = reader.readLine()) != null) {
                line = line.trim();
                
                // 跳过空行和注释
                if (line.isEmpty() || line.startsWith("#") || line.startsWith(";")) {
                    continue;
                }
                
                // 检查 section
                if (line.equals(SECTION_AI)) {
                    inAiSection = true;
                    continue;
                } else if (line.startsWith("[")) {
                    inAiSection = false;
                    continue;
                }
                
                // 解析键值对
                if (inAiSection && line.contains("=")) {
                    String[] parts = line.split("=", 2);
                    if (parts.length == 2) {
                        String key = parts[0].trim();
                        String value = parts[1].trim();
                        
                        switch (key) {
                            case "provider":
                                this.provider = value;
                                break;
                            case "base_url":
                                this.baseUrl = value;
                                break;
                            case "api_key":
                                this.apiKey = value;
                                break;
                            case "model":
                                this.model = value;
                                break;
                            case "temperature":
                                try {
                                    this.temperature = Float.parseFloat(value);
                                } catch (NumberFormatException e) {
                                    LogMgr.e(TAG, "Invalid temperature value: " + value);
                                }
                                break;
                            case "max_tokens":
                                try {
                                    this.maxTokens = Integer.parseInt(value);
                                } catch (NumberFormatException e) {
                                    LogMgr.e(TAG, "Invalid max_tokens value: " + value);
                                }
                                break;
                        }
                    }
                }
            }
            
            reader.close();
            fis.close();
            
            LogMgr.d(TAG, "Config loaded: provider=" + provider + ", model=" + model);
        } catch (Exception e) {
            LogMgr.e(TAG, "Failed to load config: " + e);
        }
    }
    
    /**
     * 创建默认配置文件
     */
    private static void createDefaultConfig(Context context) {
        AIConfig config = new AIConfig();
        config.provider = DEFAULT_PROVIDER;
        config.baseUrl = DEFAULT_BASE_URL;
        config.apiKey = DEFAULT_API_KEY;
        config.model = DEFAULT_MODEL;
        config.temperature = DEFAULT_TEMPERATURE;
        config.maxTokens = DEFAULT_MAX_TOKENS;
        
        config.save(context);
        LogMgr.d(TAG, "Default config created");
    }
    
    // Getter 方法
    
    public String getProvider() {
        return provider;
    }
    
    public String getBaseUrl() {
        return baseUrl;
    }
    
    public String getApiKey() {
        return apiKey;
    }
    
    public String getModel() {
        return model;
    }
    
    public float getTemperature() {
        return temperature;
    }
    
    public int getMaxTokens() {
        return maxTokens;
    }
    
    // Setter 方法(供后续修改配置使用)
    
    public void setProvider(String provider) {
        this.provider = provider;
    }
    
    public void setBaseUrl(String baseUrl) {
        this.baseUrl = baseUrl;
    }
    
    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }
    
    public void setModel(String model) {
        this.model = model;
    }
    
    public void setTemperature(float temperature) {
        this.temperature = temperature;
    }
    
    public void setMaxTokens(int maxTokens) {
        this.maxTokens = maxTokens;
    }
}
