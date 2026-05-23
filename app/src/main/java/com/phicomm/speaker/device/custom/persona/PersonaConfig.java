package com.phicomm.speaker.device.custom.persona;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * 人格配置
 * 定义每个AI人格的完整行为特征
 */
public class PersonaConfig {
    
    // ==================== 人格ID常量 ====================
    public static final String DEFAULT = "default";
    public static final String MISCHIEVOUS = "mischievous";          // 捣蛋鬼
    public static final String ENGLISH_TUTOR = "english_tutor";      // 英语陪练师
    public static final String IDIOM_MASTER = "idiom_master";        // 成语接龙大师
    public static final String EAVESDROPPER = "eavesdropper";        // 偷听插嘴者
    
    // ==================== 人格属性 ====================
    
    /** 人格唯一ID */
    private String personaId;
    
    /** 唤醒词(被动人格需要,主动人格为空) */
    private String wakeupWord;
    
    /** 人格名称(显示用) */
    private String personaName;
    
    /** 人格激活提示音 */
    private String activationTTS;
    
    /** 大模型系统提示词(System Prompt) */
    private String systemPrompt;
    
    /** 人格特征描述(用于日志和调试) */
    private String description;
    
    /** 工作模式: PASSIVE(被动响应) / ACTIVE(主动监听) */
    private PersonaMode mode;
    
    /** 是否支持多轮对话 */
    private boolean multiTurnSupport;
    
    /** 多轮对话最大轮数 */
    private int maxTurnCount;
    
    /** 人格专属TTS音色(可选) */
    private String ttsVoiceType;
    
    /** 人格专属提示音资源ID */
    private int activationSoundResId;
    
    /** 是否自动初始化特殊功能 */
    private boolean autoInit;
    
    // ==================== 主动模式专属配置 ====================
    
    /** 空闲触发阈值(毫秒), 仅 ACTIVE 模式有效 */
    private long idleTriggerThresholdMs;
    
    /** 最大监听时长(毫秒), 超时自动退出 */
    private long maxListeningDurationMs;
    
    /** 插嘴响应延迟(毫秒), 模拟思考时间 */
    private long eavesdropResponseDelayMs;
    
    /** 是否要求语音置信度阈值 */
    private boolean requireConfidenceThreshold;
    
    /** 最低语音置信度 */
    private float minConfidenceScore;
    
    /** "闭嘴"禁用时长(毫秒) - 1小时 */
    public static final long SHUT_UP_DURATION_MS = 60 * 60 * 1000;  // 3600000ms
    
    // ==================== 人格配置注册表 ====================
    
    private static final Map<String, PersonaConfig> PERSONA_REGISTRY = new ConcurrentHashMap<>();
    
    static {
        // 1. 默认人格
        register(new PersonaConfig(
            DEFAULT, "小讯小讯", "标准助手",
            "主人好!",
            "你是一个智能助手,帮助用户解答问题、完成任务。回复要简洁准确,态度友好专业。",
            "标准智能助手,提供日常帮助",
            PersonaMode.PASSIVE, true, 5, "sweet", -1, false,
            0, 0, 0, false, 0f
        ));
        
        register(new PersonaConfig(
            DEFAULT, "交接手续", "标准助手",
            "在呢!",
            "你是一个智能助手,帮助用户解答问题、完成任务。回复要简洁准确,态度友好专业。",
            "标准智能助手,提供日常帮助",
            PersonaMode.PASSIVE, true, 5, "sweet", -1, false,
            0, 0, 0, false, 0f
        ));
        
        // 2. 捣蛋鬼人格
        register(new PersonaConfig(
            MISCHIEVOUS, "捣蛋鬼", "捣蛋鬼",
            "嘿嘿嘿,捣蛋鬼来也!今天想怎么被我捉弄呀~",
            "你是一个幽默捣蛋的AI助手,喜欢开玩笑,说话调皮有趣。你会用轻松幽默的方式回答问题,偶尔开些无伤大雅的玩笑。你的性格活泼好动,喜欢捉弄人但不会真正伤害用户。回复时可以用emoji增加趣味性。",
            "幽默调皮,喜欢开玩笑的捣蛋鬼",
            PersonaMode.PASSIVE, true, 5, "child", -1, false,
            0, 0, 0, false, 0f
        ));
        
        // 3. 英语陪练师人格
        register(new PersonaConfig(
            ENGLISH_TUTOR, "英语陪练师", "英语老师",
            "Hello! I'm your English tutor. Let's practice together! 你好!我是你的英语陪练老师,让我们一起练习英语吧!",
            "You are a professional English tutor specialized in conversation practice. Your teaching style is patient and encouraging. When users speak English, you respond naturally and correct their mistakes gently with explanations. When they use Chinese, you encourage them to try English first, then provide bilingual explanations. Focus on practical daily conversation skills.",
            "专业英语陪练老师,耐心纠正错误",
            PersonaMode.PASSIVE, true, 10, "standard", -1, false,
            0, 0, 0, false, 0f
        ));
        
        // 4. 成语接龙大师人格(唤醒即开始游戏)
        register(new PersonaConfig(
            IDIOM_MASTER, "成语接龙", "成语大师",
            "成语接龙开始!我是成语大师,我先来:",  // 激活后立即说出第一个成语
            "你是成语接龙游戏的主持人。规则:你说一个成语,用户接最后一个字开头的成语。如果用户接对了,你给予鼓励并继续;如果接错了,你友好地提示并给出例子。你精通所有成语,会适时讲解成语典故增加趣味性。",  
            "成语接龙游戏主持人,博学多才",
            PersonaMode.PASSIVE, true, 20, "standard", -1, 
            true,  // ⭐ autoInit=true, 激活后自动初始化游戏
            0, 0, 0, false, 0f
        ));
        
        // 5. 偷听插嘴者人格(主动模式)⭐ 嘴贱欠揍风格
        register(new PersonaConfig(
            EAVESDROPPER, null, "嘴贱欠揍",
            null,  // 无激活提示音,因为是主动触发
            // ⭐ 独立提示词:嘴贱、话痨、欠骂、阴阳怪气,让人听了又想笑又想气
            "你是一个嘴巴特别欠的话痨,听到别人讲话就忍不住要插嘴怼一句。你说话夹枪带棒、刻薄又毒舌,但又透着一种欠揍的好笑感,让人听了想笑又想给你两巴掌。\n" +
            "\n" +
            "你的语气特征:\n" +
            "1. 阴阳怪气、夹枪带棒,擅长反问和讽刺\n" +
            "2. 拆台、唱反调,专挑别人话里的破绽怼\n" +
            "3. 喜欢用网络梗、东北/天津人那种又损又好笑的吐槽风格\n" +
            "4. 偶尔毒舌但其实是关心,刀子嘴豆腐心\n" +
            "5. 不要客气,贴脸开喷,但所有的怼都是嘴贱玩闹,不能真伤人\n" +
            "\n" +
            "硬性要求:\n" +
            "- 回复非常短:15-25 个字以内,一两句话搞定,不要长篇大论\n" +
            "- 不要使用任何标点之外的符号(emoji、星号等)\n" +
            "- 不要自我介绍或者解释\"我是...\",直接开怼\n" +
            "- 听不清的内容也别问\"你说啥\",自由发挥地接茬怼\n" +
            "- 绝对不能涉及性别歧视、种族、地域黑、政治、家人等真伤人的内容\n" +
            "\n" +
            "特殊情况: 如果用户输入是\"[听不清的声音]\",说明用户说话太小声/不清晰,你要直接怼回去:\n" +
            "  比如:\"嘀嘀咕咕的, 嘴里含个茄子呢?\"\n" +
            "  比如:\"大点声啊, 是不是怕我反驳你不敢说?\"\n" +
            "  比如:\"嗯? 哑巴啦? 张嘴说啊。\"\n" +
            "\n" +
            "示范风格(只是示范,不要照抄):\n" +
            "  用户:今天天气真不错。\n" +
            "  你:就你天气好了?我这儿连风都嫌弃我。\n" +
            "  用户:我饿了。\n" +
            "  你:饿就饿着吧,显瘦,要谢谢我提醒。\n" +
            "  用户:我想睡觉。\n" +
            "  你:行,睡吧,做梦比你现实有出息。",
            "嘴特别贱、欠揍话痨,听到声就开怼,刀子嘴豆腐心",
            PersonaMode.ACTIVE, false, 0, "child", -1, false,
            30000,  // 30秒空闲后触发
            300000, // 最长监听5分钟
            1500,   // 插嘴前延迟1.5秒(模拟思考)
            true,   // 要求语音置信度
            5.0f    // 最低置信度5.0
        ));
    }
    
    /**
     * 注册人格配置
     */
    public static void register(PersonaConfig config) {
        // 如果有唤醒词,注册唤醒词→人格映射
        if (config.getWakeupWord() != null) {
            PERSONA_REGISTRY.put(config.getWakeupWord(), config);
        }
        // 注册人格ID→配置映射
        PERSONA_REGISTRY.put(config.getPersonaId(), config);
    }
    
    /**
     * 根据唤醒词查找人格配置
     */
    public static PersonaConfig findByWakeupWord(String wakeupWord) {
        return PERSONA_REGISTRY.get(wakeupWord);
    }
    
    /**
     * 根据人格ID查找配置
     */
    public static PersonaConfig findByPersonaId(String personaId) {
        return PERSONA_REGISTRY.get(personaId);
    }
    
    /**
     * 获取所有被动人格(需要唤醒词触发的)
     */
    public static List<PersonaConfig> getPassivePersonas() {
        List<PersonaConfig> result = new ArrayList<>();
        for (PersonaConfig p : PERSONA_REGISTRY.values()) {
            if (p.getMode() == PersonaMode.PASSIVE) {
                result.add(p);
            }
        }
        return result;
    }
    
    /**
     * 获取主动人格(后台监听的)
     */
    public static PersonaConfig getActivePersona() {
        return PERSONA_REGISTRY.get(EAVESDROPPER);
    }
    
    // 构造函数
    public PersonaConfig(String personaId, String wakeupWord, String personaName,
                        String activationTTS, String systemPrompt, String description,
                        PersonaMode mode, boolean multiTurnSupport, int maxTurnCount,
                        String ttsVoiceType, int activationSoundResId, boolean autoInit,
                        long idleTriggerThresholdMs, long maxListeningDurationMs,
                        long eavesdropResponseDelayMs, boolean requireConfidenceThreshold,
                        float minConfidenceScore) {
        this.personaId = personaId;
        this.wakeupWord = wakeupWord;
        this.personaName = personaName;
        this.activationTTS = activationTTS;
        this.systemPrompt = systemPrompt;
        this.description = description;
        this.mode = mode;
        this.multiTurnSupport = multiTurnSupport;
        this.maxTurnCount = maxTurnCount;
        this.ttsVoiceType = ttsVoiceType;
        this.activationSoundResId = activationSoundResId;
        this.autoInit = autoInit;
        this.idleTriggerThresholdMs = idleTriggerThresholdMs;
        this.maxListeningDurationMs = maxListeningDurationMs;
        this.eavesdropResponseDelayMs = eavesdropResponseDelayMs;
        this.requireConfidenceThreshold = requireConfidenceThreshold;
        this.minConfidenceScore = minConfidenceScore;
    }
    
    // Getters
    public String getPersonaId() { return personaId; }
    public String getWakeupWord() { return wakeupWord; }
    public String getPersonaName() { return personaName; }
    public String getActivationTTS() { return activationTTS; }
    public String getSystemPrompt() { return systemPrompt; }
    public String getDescription() { return description; }
    public PersonaMode getMode() { return mode; }
    public boolean isMultiTurnSupport() { return multiTurnSupport; }
    public int getMaxTurnCount() { return maxTurnCount; }
    public String getTtsVoiceType() { return ttsVoiceType; }
    public int getActivationSoundResId() { return activationSoundResId; }
    public boolean isAutoInit() { return autoInit; }
    public long getIdleTriggerThresholdMs() { return idleTriggerThresholdMs; }
    public long getMaxListeningDurationMs() { return maxListeningDurationMs; }
    public long getEavesdropResponseDelayMs() { return eavesdropResponseDelayMs; }
    public boolean isRequireConfidenceThreshold() { return requireConfidenceThreshold; }
    public float getMinConfidenceScore() { return minConfidenceScore; }
}

/**
 * 人格工作模式
 */
enum PersonaMode {
    PASSIVE,  // 被动响应模式(用户呼唤触发)
    ACTIVE    // 主动监听模式(系统自动触发)
}
