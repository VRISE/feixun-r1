.class public Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "EavesdropperHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/eav_event.log"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

.field private xfyunTtsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
    .registers 4
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;
    .param p1, "x1"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->generateAndPlayEavesdropResponse(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private generateAndPlayEavesdropResponse(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
    .registers 16
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "userSpeech"    # Ljava/lang/String;
    .param p3, "config"    # Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p3}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "systemPrompt":Ljava/lang/String;
    const-string v8, "eavesdropper"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->getHistory(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    move-result-object v3

    .line 117
    .local v3, "history":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->getFormattedHistory()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "historyText":Ljava/lang/String;
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Eavesdropper history turns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LLM call: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" hist_turns="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u63d2\u5634\u6a21\u5f0f LLM \u8c03\u7528: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 124
    const/4 v5, 0x0

    .line 125
    .local v5, "response":Ljava/lang/String;
    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    if-eqz v8, :cond_119

    .line 126
    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-virtual {v8, p2, v4, v6}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 132
    :goto_71
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14a

    .line 133
    :cond_79
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    const-string v9, "LLM null/empty response, using fallback"

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v8, "LLM \u8fd4\u56de\u4e3a\u7a7a,\u4f7f\u7528 fallback"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 135
    const-string v5, "\u55ef? \u542c\u5230\u5565\u4e86, \u4f60\u521a\u624d\u5600\u5495\u5565\u5462?"

    .line 143
    :goto_87
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playTTS: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u51c6\u5907\u64ad\u653e TTS: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 147
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 150
    move-object v2, v5

    .line 151
    .local v2, "finalResponse":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v7, v8, [Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 153
    .local v7, "ttsPlayed":[Z
    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->xfyunTtsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    if-nez v8, :cond_183

    .line 154
    const-string v8, "\u9519\u8bef: xfyunTtsClient \u4e3a null,\u964d\u7ea7\u5230\u539f\u5382 TTS"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 155
    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 156
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 193
    :goto_d7
    const/4 v8, 0x0

    aget-boolean v8, v7, v8

    if-nez v8, :cond_118

    .line 194
    const/16 v8, 0x9c4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit16 v9, v9, 0xfa

    add-int/lit16 v9, v9, 0x5dc

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 195
    .local v1, "estimatedMs":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u4f7f\u7528\u4f30\u8ba1\u65f6\u95f4: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 196
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;

    invoke-direct {v9, p0, v2}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;-><init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Ljava/lang/String;)V

    int-to-long v10, v1

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    .end local v1    # "estimatedMs":I
    .end local v2    # "finalResponse":Ljava/lang/String;
    .end local v3    # "history":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .end local v4    # "historyText":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "systemPrompt":Ljava/lang/String;
    .end local v7    # "ttsPlayed":[Z
    :cond_118
    :goto_118
    return-void

    .line 128
    .restart local v3    # "history":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .restart local v4    # "historyText":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "systemPrompt":Ljava/lang/String;
    :cond_119
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    const-string v9, "openAIClient not initialized!"

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v8, "openAIClient \u672a\u521d\u59cb\u5316"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_125} :catch_127

    goto/16 :goto_71

    .line 209
    .end local v3    # "history":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .end local v4    # "historyText":Ljava/lang/String;
    .end local v5    # "response":Ljava/lang/String;
    .end local v6    # "systemPrompt":Ljava/lang/String;
    :catch_127
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    const-string v9, "Failed to generate eavesdrop response"

    invoke-static {v8, v9, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u751f\u6210\u63d2\u5634\u56de\u590d\u5931\u8d25: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    goto :goto_118

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "history":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .restart local v4    # "historyText":Ljava/lang/String;
    .restart local v5    # "response":Ljava/lang/String;
    .restart local v6    # "systemPrompt":Ljava/lang/String;
    :cond_14a
    :try_start_14a
    sget-object v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LLM response: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LLM \u8fd4\u56de: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3, p2, v5}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->addTurn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_87

    .line 158
    .restart local v2    # "finalResponse":Ljava/lang/String;
    .restart local v7    # "ttsPlayed":[Z
    :cond_183
    const-string v8, "\u8c03\u7528\u8baf\u98de TTS: synthesizeAndPlay"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 159
    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->xfyunTtsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iget-object v9, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->context:Landroid/content/Context;

    new-instance v10, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;

    invoke-direct {v10, p0, p1, v2, v7}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;-><init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;[Z)V

    invoke-virtual {v8, v9, v5, v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeAndPlay(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V

    .line 187
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 188
    const-string v8, "\u8baf\u98de TTS \u8c03\u7528\u5df2\u53d1\u8d77 (\u5f02\u6b65\u6267\u884c\u4e2d)"

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_19d} :catch_127

    goto/16 :goto_d7
.end method

.method private isOtherModeWorking(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 220
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isShutUpDisabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 221
    const/4 v0, 0x1

    .line 223
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static writeLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sdcard/eav_event.log"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 42
    .local v1, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "timestamp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    sget-object v4, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 44
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 48
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "timestamp":Ljava/lang/String;
    :goto_3c
    return-void

    .line 45
    :catch_3d
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5199\u5165\u65e5\u5fd7\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method


# virtual methods
.method public acceptInboundEvent0(Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;)Z
    .registers 3
    .param p1, "evt"    # Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->getUserSpeech()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->acceptInboundEvent0(Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;)Z

    move-result v0

    return v0
.end method

.method public eventReceived(Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 11
    .param p1, "evt"    # Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->getUserSpeech()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "userSpeech":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->getConfidence()F

    move-result v7

    .line 78
    .local v7, "confidence":F
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler triggered: \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" conf="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->isOtherModeWorking(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 82
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    const-string v1, "Other mode is working, skip eavesdropping"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_37
    return-void

    .line 87
    :cond_38
    const-string v0, "eavesdropper"

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->activatePersona(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivePersona()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v6

    .line 94
    .local v6, "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-virtual {v6}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getEavesdropResponseDelayMs()J

    move-result-wide v2

    .line 95
    .local v2, "delay":J
    new-instance v0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;JLcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_37
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    check-cast p1, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->eventReceived(Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 229
    const/16 v0, 0x15e

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->setPriority(I)V

    .line 230
    return-void
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 56
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->context:Landroid/content/Context;

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v0

    .line 58
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    new-instance v1, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-direct {v1, v0}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 61
    new-instance v1, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;-><init>()V

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->xfyunTtsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .line 63
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EavesdropperHandler initialized with model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "EavesdropperHandler \u521d\u59cb\u5316\u5b8c\u6210"

    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    return v1
.end method
