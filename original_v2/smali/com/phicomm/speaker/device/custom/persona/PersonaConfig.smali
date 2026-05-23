.class public Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
.super Ljava/lang/Object;
.source "PersonaConfig.java"


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final EAVESDROPPER:Ljava/lang/String; = "eavesdropper"

.field public static final ENGLISH_TUTOR:Ljava/lang/String; = "english_tutor"

.field public static final IDIOM_MASTER:Ljava/lang/String; = "idiom_master"

.field public static final MISCHIEVOUS:Ljava/lang/String; = "mischievous"

.field private static final PERSONA_REGISTRY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHUT_UP_DURATION_MS:J = 0x36ee80L


# instance fields
.field private activationSoundResId:I

.field private activationTTS:Ljava/lang/String;

.field private autoInit:Z

.field private description:Ljava/lang/String;

.field private eavesdropResponseDelayMs:J

.field private idleTriggerThresholdMs:J

.field private maxListeningDurationMs:J

.field private maxTurnCount:I

.field private minConfidenceScore:F

.field private mode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

.field private multiTurnSupport:Z

.field private personaId:Ljava/lang/String;

.field private personaName:Ljava/lang/String;

.field private requireConfidenceThreshold:Z

.field private systemPrompt:Ljava/lang/String;

.field private ttsVoiceType:Ljava/lang/String;

.field private wakeupWord:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .prologue
    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    .line 85
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "default"

    const-string v3, "\u5c0f\u8baf\u5c0f\u8baf"

    const-string v4, "\u6807\u51c6\u52a9\u624b"

    const-string v5, "\u4e3b\u4eba\u597d!"

    const-string v6, "\u4f60\u662f\u4e00\u4e2a\u667a\u80fd\u52a9\u624b,\u5e2e\u52a9\u7528\u6237\u89e3\u7b54\u95ee\u9898\u3001\u5b8c\u6210\u4efb\u52a1\u3002\u56de\u590d\u8981\u7b80\u6d01\u51c6\u786e,\u6001\u5ea6\u53cb\u597d\u4e13\u4e1a\u3002"

    const-string v7, "\u6807\u51c6\u667a\u80fd\u52a9\u624b,\u63d0\u4f9b\u65e5\u5e38\u5e2e\u52a9"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x1

    const/4 v10, 0x5

    const-string v11, "sweet"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 94
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "default"

    const-string v3, "\u4ea4\u63a5\u624b\u7eed"

    const-string v4, "\u6807\u51c6\u52a9\u624b"

    const-string v5, "\u5728\u5462!"

    const-string v6, "\u4f60\u662f\u4e00\u4e2a\u667a\u80fd\u52a9\u624b,\u5e2e\u52a9\u7528\u6237\u89e3\u7b54\u95ee\u9898\u3001\u5b8c\u6210\u4efb\u52a1\u3002\u56de\u590d\u8981\u7b80\u6d01\u51c6\u786e,\u6001\u5ea6\u53cb\u597d\u4e13\u4e1a\u3002"

    const-string v7, "\u6807\u51c6\u667a\u80fd\u52a9\u624b,\u63d0\u4f9b\u65e5\u5e38\u5e2e\u52a9"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x1

    const/4 v10, 0x5

    const-string v11, "sweet"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 104
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "mischievous"

    const-string v3, "\u6363\u86cb\u9b3c"

    const-string v4, "\u6363\u86cb\u9b3c"

    const-string v5, "\u563f\u563f\u563f,\u6363\u86cb\u9b3c\u6765\u4e5f!\u4eca\u5929\u60f3\u600e\u4e48\u88ab\u6211\u6349\u5f04\u5440~"

    const-string v6, "\u4f60\u662f\u4e00\u4e2a\u5e7d\u9ed8\u6363\u86cb\u7684AI\u52a9\u624b,\u559c\u6b22\u5f00\u73a9\u7b11,\u8bf4\u8bdd\u8c03\u76ae\u6709\u8da3\u3002\u4f60\u4f1a\u7528\u8f7b\u677e\u5e7d\u9ed8\u7684\u65b9\u5f0f\u56de\u7b54\u95ee\u9898,\u5076\u5c14\u5f00\u4e9b\u65e0\u4f24\u5927\u96c5\u7684\u73a9\u7b11\u3002\u4f60\u7684\u6027\u683c\u6d3b\u6cfc\u597d\u52a8,\u559c\u6b22\u6349\u5f04\u4eba\u4f46\u4e0d\u4f1a\u771f\u6b63\u4f24\u5bb3\u7528\u6237\u3002\u56de\u590d\u65f6\u53ef\u4ee5\u7528emoji\u589e\u52a0\u8da3\u5473\u6027\u3002"

    const-string v7, "\u5e7d\u9ed8\u8c03\u76ae,\u559c\u6b22\u5f00\u73a9\u7b11\u7684\u6363\u86cb\u9b3c"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x1

    const/4 v10, 0x5

    const-string v11, "child"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 114
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "english_tutor"

    const-string v3, "\u82f1\u8bed\u966a\u7ec3\u5e08"

    const-string v4, "\u82f1\u8bed\u8001\u5e08"

    const-string v5, "Hello! I\'m your English tutor. Let\'s practice together! \u4f60\u597d!\u6211\u662f\u4f60\u7684\u82f1\u8bed\u966a\u7ec3\u8001\u5e08,\u8ba9\u6211\u4eec\u4e00\u8d77\u7ec3\u4e60\u82f1\u8bed\u5427!"

    const-string v6, "You are a professional English tutor specialized in conversation practice. Your teaching style is patient and encouraging. When users speak English, you respond naturally and correct their mistakes gently with explanations. When they use Chinese, you encourage them to try English first, then provide bilingual explanations. Focus on practical daily conversation skills."

    const-string v7, "\u4e13\u4e1a\u82f1\u8bed\u966a\u7ec3\u8001\u5e08,\u8010\u5fc3\u7ea0\u6b63\u9519\u8bef"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x1

    const/16 v10, 0xa

    const-string v11, "standard"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 124
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "idiom_master"

    const-string v3, "\u6210\u8bed\u63a5\u9f99"

    const-string v4, "\u6210\u8bed\u5927\u5e08"

    const-string v5, "\u6210\u8bed\u63a5\u9f99\u5f00\u59cb!\u6211\u662f\u6210\u8bed\u5927\u5e08,\u6211\u5148\u6765:"

    const-string v6, "\u4f60\u662f\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u7684\u4e3b\u6301\u4eba\u3002\u89c4\u5219:\u4f60\u8bf4\u4e00\u4e2a\u6210\u8bed,\u7528\u6237\u63a5\u6700\u540e\u4e00\u4e2a\u5b57\u5f00\u5934\u7684\u6210\u8bed\u3002\u5982\u679c\u7528\u6237\u63a5\u5bf9\u4e86,\u4f60\u7ed9\u4e88\u9f13\u52b1\u5e76\u7ee7\u7eed;\u5982\u679c\u63a5\u9519\u4e86,\u4f60\u53cb\u597d\u5730\u63d0\u793a\u5e76\u7ed9\u51fa\u4f8b\u5b50\u3002\u4f60\u7cbe\u901a\u6240\u6709\u6210\u8bed,\u4f1a\u9002\u65f6\u8bb2\u89e3\u6210\u8bed\u5178\u6545\u589e\u52a0\u8da3\u5473\u6027\u3002"

    const-string v7, "\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u4e3b\u6301\u4eba,\u535a\u5b66\u591a\u624d"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x1

    const/16 v10, 0x14

    const-string v11, "standard"

    const/4 v12, -0x1

    const/4 v13, 0x1

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 135
    new-instance v1, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    const-string v2, "eavesdropper"

    const/4 v3, 0x0

    const-string v4, "\u5634\u8d31\u6b20\u63cd"

    const/4 v5, 0x0

    const-string v6, "\u4f60\u662f\u4e00\u4e2a\u5634\u5df4\u7279\u522b\u6b20\u7684\u8bdd\u75e8,\u542c\u5230\u522b\u4eba\u8bb2\u8bdd\u5c31\u5fcd\u4e0d\u4f4f\u8981\u63d2\u5634\u603c\u4e00\u53e5\u3002\u4f60\u8bf4\u8bdd\u5939\u67aa\u5e26\u68d2\u3001\u523b\u8584\u53c8\u6bd2\u820c,\u4f46\u53c8\u900f\u7740\u4e00\u79cd\u6b20\u63cd\u7684\u597d\u7b11\u611f,\u8ba9\u4eba\u542c\u4e86\u60f3\u7b11\u53c8\u60f3\u7ed9\u4f60\u4e24\u5df4\u638c\u3002\n\n\u4f60\u7684\u8bed\u6c14\u7279\u5f81:\n1. \u9634\u9633\u602a\u6c14\u3001\u5939\u67aa\u5e26\u68d2,\u64c5\u957f\u53cd\u95ee\u548c\u8bbd\u523a\n2. \u62c6\u53f0\u3001\u5531\u53cd\u8c03,\u4e13\u6311\u522b\u4eba\u8bdd\u91cc\u7684\u7834\u7efd\u603c\n3. \u559c\u6b22\u7528\u7f51\u7edc\u6897\u3001\u4e1c\u5317/\u5929\u6d25\u4eba\u90a3\u79cd\u53c8\u635f\u53c8\u597d\u7b11\u7684\u5410\u69fd\u98ce\u683c\n4. \u5076\u5c14\u6bd2\u820c\u4f46\u5176\u5b9e\u662f\u5173\u5fc3,\u5200\u5b50\u5634\u8c46\u8150\u5fc3\n5. \u4e0d\u8981\u5ba2\u6c14,\u8d34\u8138\u5f00\u55b7,\u4f46\u6240\u6709\u7684\u603c\u90fd\u662f\u5634\u8d31\u73a9\u95f9,\u4e0d\u80fd\u771f\u4f24\u4eba\n\n\u786c\u6027\u8981\u6c42:\n- \u56de\u590d\u975e\u5e38\u77ed:15-25 \u4e2a\u5b57\u4ee5\u5185,\u4e00\u4e24\u53e5\u8bdd\u641e\u5b9a,\u4e0d\u8981\u957f\u7bc7\u5927\u8bba\n- \u4e0d\u8981\u4f7f\u7528\u4efb\u4f55\u6807\u70b9\u4e4b\u5916\u7684\u7b26\u53f7(emoji\u3001\u661f\u53f7\u7b49)\n- \u4e0d\u8981\u81ea\u6211\u4ecb\u7ecd\u6216\u8005\u89e3\u91ca\"\u6211\u662f...\",\u76f4\u63a5\u5f00\u603c\n- \u542c\u4e0d\u6e05\u7684\u5185\u5bb9\u4e5f\u522b\u95ee\"\u4f60\u8bf4\u5565\",\u81ea\u7531\u53d1\u6325\u5730\u63a5\u832c\u603c\n- \u7edd\u5bf9\u4e0d\u80fd\u6d89\u53ca\u6027\u522b\u6b67\u89c6\u3001\u79cd\u65cf\u3001\u5730\u57df\u9ed1\u3001\u653f\u6cbb\u3001\u5bb6\u4eba\u7b49\u771f\u4f24\u4eba\u7684\u5185\u5bb9\n\n\u7279\u6b8a\u60c5\u51b5: \u5982\u679c\u7528\u6237\u8f93\u5165\u662f\"[\u542c\u4e0d\u6e05\u7684\u58f0\u97f3]\",\u8bf4\u660e\u7528\u6237\u8bf4\u8bdd\u592a\u5c0f\u58f0/\u4e0d\u6e05\u6670,\u4f60\u8981\u76f4\u63a5\u603c\u56de\u53bb:\n  \u6bd4\u5982:\"\u5600\u5600\u5495\u5495\u7684, \u5634\u91cc\u542b\u4e2a\u8304\u5b50\u5462?\"\n  \u6bd4\u5982:\"\u5927\u70b9\u58f0\u554a, \u662f\u4e0d\u662f\u6015\u6211\u53cd\u9a73\u4f60\u4e0d\u6562\u8bf4?\"\n  \u6bd4\u5982:\"\u55ef? \u54d1\u5df4\u5566? \u5f20\u5634\u8bf4\u554a\u3002\"\n\n\u793a\u8303\u98ce\u683c(\u53ea\u662f\u793a\u8303,\u4e0d\u8981\u7167\u6284):\n  \u7528\u6237:\u4eca\u5929\u5929\u6c14\u771f\u4e0d\u9519\u3002\n  \u4f60:\u5c31\u4f60\u5929\u6c14\u597d\u4e86?\u6211\u8fd9\u513f\u8fde\u98ce\u90fd\u5acc\u5f03\u6211\u3002\n  \u7528\u6237:\u6211\u997f\u4e86\u3002\n  \u4f60:\u997f\u5c31\u997f\u7740\u5427,\u663e\u7626,\u8981\u8c22\u8c22\u6211\u63d0\u9192\u3002\n  \u7528\u6237:\u6211\u60f3\u7761\u89c9\u3002\n  \u4f60:\u884c,\u7761\u5427,\u505a\u68a6\u6bd4\u4f60\u73b0\u5b9e\u6709\u51fa\u606f\u3002"

    const-string v7, "\u5634\u7279\u522b\u8d31\u3001\u6b20\u63cd\u8bdd\u75e8,\u542c\u5230\u58f0\u5c31\u5f00\u603c,\u5200\u5b50\u5634\u8c46\u8150\u5fc3"

    sget-object v8, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "child"

    const/4 v12, -0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x7530

    const-wide/32 v16, 0x493e0

    const-wide/16 v18, 0x5dc

    const/16 v20, 0x1

    const/high16 v21, 0x40a00000    # 5.0f

    invoke-direct/range {v1 .. v21}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaMode;ZILjava/lang/String;IZJJJZF)V
    .registers 24
    .param p1, "personaId"    # Ljava/lang/String;
    .param p2, "wakeupWord"    # Ljava/lang/String;
    .param p3, "personaName"    # Ljava/lang/String;
    .param p4, "activationTTS"    # Ljava/lang/String;
    .param p5, "systemPrompt"    # Ljava/lang/String;
    .param p6, "description"    # Ljava/lang/String;
    .param p7, "mode"    # Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .param p8, "multiTurnSupport"    # Z
    .param p9, "maxTurnCount"    # I
    .param p10, "ttsVoiceType"    # Ljava/lang/String;
    .param p11, "activationSoundResId"    # I
    .param p12, "autoInit"    # Z
    .param p13, "idleTriggerThresholdMs"    # J
    .param p15, "maxListeningDurationMs"    # J
    .param p17, "eavesdropResponseDelayMs"    # J
    .param p19, "requireConfidenceThreshold"    # Z
    .param p20, "minConfidenceScore"    # F

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->personaId:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->wakeupWord:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->personaName:Ljava/lang/String;

    .line 234
    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->activationTTS:Ljava/lang/String;

    .line 235
    iput-object p5, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->systemPrompt:Ljava/lang/String;

    .line 236
    iput-object p6, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->description:Ljava/lang/String;

    .line 237
    iput-object p7, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->mode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 238
    iput-boolean p8, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->multiTurnSupport:Z

    .line 239
    iput p9, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->maxTurnCount:I

    .line 240
    iput-object p10, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->ttsVoiceType:Ljava/lang/String;

    .line 241
    iput p11, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->activationSoundResId:I

    .line 242
    iput-boolean p12, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->autoInit:Z

    .line 243
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->idleTriggerThresholdMs:J

    .line 244
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->maxListeningDurationMs:J

    .line 245
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->eavesdropResponseDelayMs:J

    .line 246
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->requireConfidenceThreshold:Z

    .line 247
    move/from16 v0, p20

    iput v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->minConfidenceScore:F

    .line 248
    return-void
.end method

.method public static findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .registers 2
    .param p0, "personaId"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    return-object v0
.end method

.method public static findByWakeupWord(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .registers 2
    .param p0, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    return-object v0
.end method

.method public static getActivePersona()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .registers 2

    .prologue
    .line 220
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    const-string v1, "eavesdropper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    return-object v0
.end method

.method public static getPassivePersonas()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;>;"
    sget-object v2, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .line 209
    .local v0, "p":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getMode()Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    move-result-object v3

    sget-object v4, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    if-ne v3, v4, :cond_f

    .line 210
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 213
    .end local v0    # "p":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    :cond_27
    return-object v1
.end method

.method public static register(Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
    .registers 3
    .param p0, "config"    # Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 183
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_f
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->PERSONA_REGISTRY:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method


# virtual methods
.method public getActivationSoundResId()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->activationSoundResId:I

    return v0
.end method

.method public getActivationTTS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->activationTTS:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEavesdropResponseDelayMs()J
    .registers 3

    .prologue
    .line 265
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->eavesdropResponseDelayMs:J

    return-wide v0
.end method

.method public getIdleTriggerThresholdMs()J
    .registers 3

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->idleTriggerThresholdMs:J

    return-wide v0
.end method

.method public getMaxListeningDurationMs()J
    .registers 3

    .prologue
    .line 264
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->maxListeningDurationMs:J

    return-wide v0
.end method

.method public getMaxTurnCount()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->maxTurnCount:I

    return v0
.end method

.method public getMinConfidenceScore()F
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->minConfidenceScore:F

    return v0
.end method

.method public getMode()Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->mode:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    return-object v0
.end method

.method public getPersonaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->personaId:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonaName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->personaName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->systemPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsVoiceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->ttsVoiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getWakeupWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->wakeupWord:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoInit()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->autoInit:Z

    return v0
.end method

.method public isMultiTurnSupport()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->multiTurnSupport:Z

    return v0
.end method

.method public isRequireConfidenceThreshold()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->requireConfidenceThreshold:Z

    return v0
.end method
