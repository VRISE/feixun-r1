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
 * api_key = 你自己的 API Key（别提交到 git）
 * model = GLM-4.5-Flash
 * temperature = 0.7
 * max_tokens = 1024
 * thinking = disabled
 * config_version = 5
 *
 * 任何 OpenAI 兼容端点都能用，例如火山方舟豆包:
 *   base_url = https://ark.cn-beijing.volces.com/api/v3/chat/completions
 *   model    = doubao-seed-2-0-lite-260215
 *   thinking = disabled   （Ark 同样接受 {"type":"disabled"} 格式，实测 OK）
 * 本地模板见仓库根目录 ai_config.example.ini，推送脚本 ./push_ai_config.sh。
 *
 * ── 取值优先级（重要）──────────────────────────────────────────
 *   1. FORCE_* 开关打开的字段   → 无条件用代码里的值（打包者想强制下发时用）
 *   2. ai_config.ini 里有值     → 用文件里的值（用户自己填的，最高优先）
 *   3. 以上都没有               → 用代码里的 DEFAULT_* 值
 *
 *   也就是说：**代码里打上的值，只要设备上没人为改过（或开了 FORCE），就一定生效。**
 *   文件里某一项缺失 / 为空 / 填错（数字解析失败），都会自动退回代码默认值，不会留空。
 *
 * 调用链路:
 *   用户说话 → 设备 ASR → 云知声 NLU 云端 → Pipeline 分发
 *     → PhicommChatHandler 拦截 → 调智谱 GLM API → TTS 播报
 * （DefaultChatHandler 本要播报云端答案, 被 PhicommChat 抢先消费）
 *
 * 账号注册 / 获取 Key / 打包部署教程见 README.MD 顶部。
 */
public class AIConfig {
    private static final String TAG = "AIConfig";
    private static final String CONFIG_FILE = "ai_config.ini";
    private static final String SECTION_AI = "[AI]";
    
    // 默认配置
    //
    // ⚠️ 不要把真实 API Key 写进这里！仓库是公开的，key 一旦提交所有人都拿去用，很快就会被限流/封掉。
    //    正确做法: 自己去智谱开放平台注册(免费),拿到 key 后填进设备上的 ai_config.ini。
    //    注册地址/教程见 README.MD 顶部「大模型配置」一节。
    private static final String DEFAULT_PROVIDER = "openai";
    private static final String DEFAULT_BASE_URL = "https://open.bigmodel.cn/api/paas/v4/chat/completions";
    /** 占位用的假 key,必须替换成自己的（见 README 顶部教程） */
    private static final String DEFAULT_API_KEY = "YOUR_ZHIPU_API_KEY_HERE";
    /**
     * ⚠️ 实测结论(2026-10-02, 用本项目账户真机验证): 别换成 GLM-4.7-Flash!
     *
     *   同一个问题「用一句话介绍李白」, 各模型实测耗时:
     *     GLM-4.5-Flash → 0.5 ~ 0.95 秒  ✅ 稳定秒回(连测 4 次全部 200)
     *     GLM-4.7-Flash → 27 ~ 68 秒     ❌ 慢 85 倍, 远超 READ_TIMEOUT, 表现就是"调用失败"
     *     glm-5.3-flash → 400 不支持关闭思考
     *     glm-4.5-air   → 1113 余额不足(非免费)
     *
     *   虽然官方公告 GLM-4.5-Flash 于 2026-01-30 下线, 但实测该名称仍可正常调用
     *   (服务端会自动路由), 而且快得多。音箱是实时语音交互, 速度就是可用性,
     *   所以保持 4.5-Flash。以后换模型前务必先测耗时。
     */
    private static final String DEFAULT_MODEL = "GLM-4.5-Flash";
    private static final float DEFAULT_TEMPERATURE = 0.7f;
    /**
     * GLM-4.x 是"混合思考模型":默认会先生成一大段 reasoning_content 再给正式回答。
     * 实测: 开思考时一次请求要 27 秒, 服务端忙时到 75 秒, 而且思考能吃掉 600+ tokens。
     * 音箱是语音短交互, 既不需要深度推理, 也等不了那么久(原 READ_TIMEOUT 只有 30 秒,
     * 超时就直接表现为"调用失败")。所以默认**关闭思考**, 响应快很多。
     *
     * 取值: disabled(关闭, 推荐) / enabled(打开) / auto(不发送该字段, 兼容非智谱端点)。
     */
    private static final String DEFAULT_THINKING = "disabled";

    /**
     * 音箱是 TTS 播报, 回答太长用户也听不完, 而且生成越久越容易超时。
     * 关闭思考后 1024 足够(实测一次普通回答只用了 42 tokens)。
     */
    private static final int DEFAULT_MAX_TOKENS = 1024;

    /**
     * 回答用什么声音读出来。
     *   doubao       → 豆包网页端自己的声音，走局域网豆包链
     *                   （doubao-server 的 /v1/chat/completions 会在回复里
     *                     带上 message.audio.data 的 mp3 base64）【默认】
     *   空 / factory → 原厂 TTS（ctx.playTTS，引擎原生音色）
     *
     * ⚠️ doubao 只在 base_url 指向【豆包链的那道门】(默认 :7790) 时才拿得到音频；
     *    指向智谱/方舟这类官方端点时服务端不认识 audio 字段，会被忽略，
     *    此时自动退回原厂 TTS，不会出错。
     *
     * v88: 讯飞 TTS 已整体移除（key 失效且音色与豆包不统一），不再有 xfyun 选项。
     */
    private static final String DEFAULT_TTS = "doubao";

    /**
     * 豆包链按 user 分话题（同一个 user 复用同一个豆包会话，换 id = 另起话题）。
     * 音箱固定用一个 id，这样豆包那边一直挂在同一个会话上，有连续记忆。
     */
    private static final String DEFAULT_USER = "r1-speaker";

    /**
     * ── 强制下发开关 ──────────────────────────────────────────────
     * 默认 false = 「设备配置优先」：用户自己在 ai_config.ini 里填的值说了算，
     * 代码默认值只在文件没填时才兜底（这样用户改过的 key / 模型不会被升级覆盖掉）。
     *
     * 如果你打包时想让**代码里的值无条件生效**（例如要把配好的 Key 一起打进包里
     * 分发给别人、或强制全量升级模型名），把对应开关改成 true 即可,
     * 每次启动都会用代码值覆盖文件值。
     *
     * 改完开关记得把下面的 CURRENT_CONFIG_VERSION +1,让老设备立刻迁移一次。
     */
    private static final boolean FORCE_PROVIDER = false;
    private static final boolean FORCE_BASE_URL = false;
    private static final boolean FORCE_API_KEY = false;
    private static final boolean FORCE_MODEL = false;
    private static final boolean FORCE_TEMPERATURE = false;
    private static final boolean FORCE_MAX_TOKENS = false;
    private static final boolean FORCE_THINKING = false;

    /**
     * 配置版本号。设备上已有的 ai_config.ini 里存着用户自己的 key,
     * 升级默认值时不能直接覆盖整个文件(那样会把 key 冲掉),
     * 而是靠这个版本号触发"只更新模型参数、保留 key"的迁移。
     * 以后再换模型: 改上面的默认值 + 把这里 +1。
     */
    private static final int CURRENT_CONFIG_VERSION = 5;

    // 配置项
    private String provider;
    private String baseUrl;
    private String apiKey;
    private String model;
    private float temperature;
    private int maxTokens;
    private String thinking;
    private int configVersion;
    private String tts;
    private String user;

    /**
     * ── 备用端点（降级用）────────────────────────────────────────────
     * 主端点(上面的 base_url)调不通时,自动改用这套去调,保证音箱不会"哑"。
     *
     * 典型场景: 主端点指向局域网里的豆包链(那台机器关机 / 豆包登录态过期),
     *          备用端点直连智谱 GLM(公网,只要网络通就能用)。
     *
     * ⚠️ 备用端点拿不到豆包语音(语音是豆包链才有的),所以降级时自动用原厂 TTS 播。
     *
     * 三个字段都不填也能工作: 那时备用端点 = 代码内置的智谱 GLM-4.5-Flash 默认值。
     */
    private String fallbackBaseUrl;
    private String fallbackApiKey;
    private String fallbackModel;

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

        // readFromFile 的规则: 先把代码里的 DEFAULT_* 全部铺上,
        // 再用文件里的值逐字段覆盖 —— 所以文件里缺的 / 空的 / 填错的项,
        // 自动落回代码默认值,不会留空。
        AIConfig config = new AIConfig();
        config.readFromFile(configFile);

        boolean changed = false;

        // 1) 配置版本落后 → 迁移默认值。
        //    关键: 迁移只刷模型相关字段, api_key / base_url 保持文件里的原值不动,
        //    否则用户自己填的 key 会被默认值覆盖掉。
        if (config.configVersion < CURRENT_CONFIG_VERSION) {
            LogMgr.d(TAG, "Config version " + config.configVersion + " -> " + CURRENT_CONFIG_VERSION
                    + ", migrating (keeping api_key)");
            config.migrate();
            changed = true;
        }

        // 2) 强制下发: 打开 FORCE_* 开关的字段, 每次启动都用代码值覆盖文件值
        if (config.applyForcedDefaults()) {
            changed = true;
        }

        // 3) 文件里还是占位符、但代码里配了真 Key → 采用代码里的值
        if (isPlaceholder(config.apiKey) && !isPlaceholder(DEFAULT_API_KEY)) {
            LogMgr.d(TAG, "api_key is placeholder, adopting DEFAULT_API_KEY from code");
            config.apiKey = DEFAULT_API_KEY;
            changed = true;
        }

        if (changed) {
            config.configVersion = CURRENT_CONFIG_VERSION;
            config.save(context);
        }

        if (isPlaceholder(config.apiKey)) {
            LogMgr.e(TAG, "API Key 未配置! 请按 README.MD 顶部教程申请智谱 Key, "
                    + "再填入 " + configFile.getAbsolutePath());
        }

        LogMgr.d(TAG, "Config loaded: provider=" + config.provider + ", model=" + config.model
                + ", max_tokens=" + config.maxTokens + ", thinking=" + config.thinking
                + ", version=" + config.configVersion);
        return config;
    }

    /** 占位符 / 空值判定 */
    private static boolean isPlaceholder(String key) {
        return key == null || key.trim().isEmpty() || DEFAULT_API_KEY.equals(key.trim());
    }

    /**
     * 迁移: 把模型相关默认值刷成最新, 但保留用户自己的 api_key / base_url。
     */
    private void migrate() {
        this.provider = DEFAULT_PROVIDER;
        this.model = DEFAULT_MODEL;
        this.temperature = DEFAULT_TEMPERATURE;
        this.maxTokens = DEFAULT_MAX_TOKENS;
        this.thinking = DEFAULT_THINKING;
        this.configVersion = CURRENT_CONFIG_VERSION;

        // 只有为空时才填默认, 避免覆盖用户自定义端点
        if (this.baseUrl == null || this.baseUrl.isEmpty()) {
            this.baseUrl = DEFAULT_BASE_URL;
        }
        if (this.apiKey == null || this.apiKey.isEmpty()) {
            this.apiKey = DEFAULT_API_KEY;
        }
        // tts / user 只补默认值, 不覆盖用户填过的(否则每次升级都会把豆包音色冲掉)
        if (this.tts == null) {
            this.tts = DEFAULT_TTS;
        }
        if (this.user == null || this.user.isEmpty()) {
            this.user = DEFAULT_USER;
        }
        // 备用端点: 没填就整个退回"代码默认的智谱 GLM"(见 getFallback* 的兜底逻辑)
        if (this.fallbackBaseUrl == null || this.fallbackBaseUrl.isEmpty()) {
            this.fallbackBaseUrl = DEFAULT_BASE_URL;
        }
        if (this.fallbackApiKey == null || this.fallbackApiKey.isEmpty()) {
            this.fallbackApiKey = DEFAULT_API_KEY;
        }
        if (this.fallbackModel == null || this.fallbackModel.isEmpty()) {
            this.fallbackModel = DEFAULT_MODEL;
        }
    }

    /**
     * 应用 FORCE_* 开关: 打开的字段无条件用代码默认值覆盖。
     * @return 是否有字段被改动
     */
    private boolean applyForcedDefaults() {
        boolean changed = false;

        if (FORCE_PROVIDER && !eq(provider, DEFAULT_PROVIDER)) {
            provider = DEFAULT_PROVIDER; changed = true;
        }
        if (FORCE_BASE_URL && !eq(baseUrl, DEFAULT_BASE_URL)) {
            baseUrl = DEFAULT_BASE_URL; changed = true;
        }
        if (FORCE_API_KEY && !eq(apiKey, DEFAULT_API_KEY)) {
            apiKey = DEFAULT_API_KEY; changed = true;
        }
        if (FORCE_MODEL && !eq(model, DEFAULT_MODEL)) {
            model = DEFAULT_MODEL; changed = true;
        }
        if (FORCE_TEMPERATURE && temperature != DEFAULT_TEMPERATURE) {
            temperature = DEFAULT_TEMPERATURE; changed = true;
        }
        if (FORCE_MAX_TOKENS && maxTokens != DEFAULT_MAX_TOKENS) {
            maxTokens = DEFAULT_MAX_TOKENS; changed = true;
        }
        if (FORCE_THINKING && !eq(thinking, DEFAULT_THINKING)) {
            thinking = DEFAULT_THINKING; changed = true;
        }

        if (changed) {
            LogMgr.d(TAG, "Applied forced defaults from code (FORCE_* switches)");
        }
        return changed;
    }

    private static boolean eq(String a, String b) {
        return a == null ? b == null : a.equals(b);
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
            sb.append("thinking = ").append(thinking).append("\n");
            sb.append("tts = ").append(tts == null ? "" : tts).append("\n");
            sb.append("user = ").append(user == null ? "" : user).append("\n");
            // 备用端点: 与代码默认值相同时写空, 免得把默认端点固化进文件
            sb.append("fallback_base_url = ")
                    .append(eq(fallbackBaseUrl, DEFAULT_BASE_URL) ? "" : fallbackBaseUrl).append("\n");
            sb.append("fallback_api_key = ")
                    .append(eq(fallbackApiKey, DEFAULT_API_KEY) ? "" : fallbackApiKey).append("\n");
            sb.append("fallback_model = ")
                    .append(eq(fallbackModel, DEFAULT_MODEL) ? "" : fallbackModel).append("\n");
            sb.append("config_version = ").append(configVersion).append("\n");
            
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
        this.thinking = DEFAULT_THINKING;
        this.configVersion = 0;   // 0 = 老配置文件(还没有版本字段), 会触发迁移
        this.tts = DEFAULT_TTS;
        this.user = DEFAULT_USER;
        this.fallbackBaseUrl = DEFAULT_BASE_URL;
        this.fallbackApiKey = DEFAULT_API_KEY;
        this.fallbackModel = DEFAULT_MODEL;
        
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
                        
                        // 文件里写了但值为空 → 视为没写, 回退到代码默认值
                        switch (key) {
                            case "provider":
                                if (!value.isEmpty()) this.provider = value;
                                break;
                            case "base_url":
                                if (!value.isEmpty()) this.baseUrl = value;
                                break;
                            case "api_key":
                                if (!value.isEmpty()) this.apiKey = value;
                                break;
                            case "model":
                                if (!value.isEmpty()) this.model = value;
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
                            case "thinking":
                                if (!value.isEmpty()) this.thinking = value;
                                break;
                            case "config_version":
                                try {
                                    this.configVersion = Integer.parseInt(value);
                                } catch (NumberFormatException e) {
                                    LogMgr.e(TAG, "Invalid config_version value: " + value);
                                }
                                break;
                            case "tts":
                                if (!value.isEmpty()) this.tts = value;
                                break;
                            case "user":
                                if (!value.isEmpty()) this.user = value;
                                break;
                            case "fallback_base_url":
                                if (!value.isEmpty()) this.fallbackBaseUrl = value;
                                break;
                            case "fallback_api_key":
                                if (!value.isEmpty()) this.fallbackApiKey = value;
                                break;
                            case "fallback_model":
                                if (!value.isEmpty()) this.fallbackModel = value;
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
        config.thinking = DEFAULT_THINKING;
        config.configVersion = CURRENT_CONFIG_VERSION;
        config.tts = DEFAULT_TTS;
        config.user = DEFAULT_USER;
        config.fallbackBaseUrl = DEFAULT_BASE_URL;
        config.fallbackApiKey = DEFAULT_API_KEY;
        config.fallbackModel = DEFAULT_MODEL;
        
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

    public int getConfigVersion() {
        return configVersion;
    }

    /**
     * 思考模式: disabled(关闭) / enabled(打开) / auto(不发送该字段)。
     * 音箱默认关闭 —— 开思考会慢 3 倍以上, 还容易撞上超时和限流。
     */
    public String getThinking() {
        return thinking;
    }

    /** 回答用什么声音读: doubao / xfyun / 空=原厂 */
    public String getTts() {
        return tts == null ? "" : tts.trim();
    }

    /** 豆包链按这个 id 分话题(同一 id 复用同一个豆包会话) */
    public String getUser() {
        return (user == null || user.trim().isEmpty()) ? DEFAULT_USER : user.trim();
    }

    /** 备用端点地址(主端点调不通时用)。没配过就是代码默认的智谱端点。 */
    public String getFallbackBaseUrl() {
        return (fallbackBaseUrl == null || fallbackBaseUrl.trim().isEmpty())
                ? DEFAULT_BASE_URL : fallbackBaseUrl.trim();
    }

    /** 备用端点 Key(主端点调不通时用) */
    public String getFallbackApiKey() {
        return (fallbackApiKey == null || fallbackApiKey.trim().isEmpty())
                ? DEFAULT_API_KEY : fallbackApiKey.trim();
    }

    /** 备用端点的模型名 */
    public String getFallbackModel() {
        return (fallbackModel == null || fallbackModel.trim().isEmpty())
                ? DEFAULT_MODEL : fallbackModel.trim();
    }

    /** 备用端点是否等于主端点(那就没必要降级了,省一次无效重试) */
    public boolean isFallbackSameAsPrimary() {
        return getFallbackBaseUrl().equals(baseUrl == null ? "" : baseUrl.trim());
    }

    public void setFallbackBaseUrl(String v) { this.fallbackBaseUrl = v; }
    public void setFallbackApiKey(String v) { this.fallbackApiKey = v; }
    public void setFallbackModel(String v) { this.fallbackModel = v; }
    
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

    public void setThinking(String thinking) {
        this.thinking = thinking;
    }
}
