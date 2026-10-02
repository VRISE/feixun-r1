.class public Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"


# static fields
.field private static final LLM_BUDGET_MS:J = 0x3a98L

.field private static final MIN_REPLY_LEN:I = 0x2

.field private static final MIN_USER_LEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PostTeaser"

.field private static final TEASE_COOLDOWN_MS:J = 0x7530L

.field private static final TEASE_DELAY_MS:J = 0x4b0L

.field private static volatile sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;


# instance fields
.field private final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastTeaseAt:J

.field private lastTeaseText:Ljava/lang/String;

.field private llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

.field private ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getLLM(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v0

    return-object v0
.end method

.method private buildSystemPrompt()Ljava/lang/String;
    .registers 5

    .prologue
    .line 190
    :try_start_0
    const-string v2, "eavesdropper"

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 191
    .local v0, "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 192
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "p":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n\u8865\u5145\u7ea6\u675f: \u4f60\u73b0\u5728\u4e0d\u662f\u5b9e\u65f6\u5077\u542c,\u800c\u662f\u542c\u5b8c\u4e00\u6574\u6bb5\u5bf9\u8bdd\u540e\u505a\u4e8b\u540e\u70b9\u8bc4,\u4e00\u6b21\u53ea\u70b9\u8bc4\u4e00\u53e5,\u7b80\u77ed\u3001\u6bd2\u820c\u3001\u4f46\u65e0\u6076\u610f\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v2

    .line 198
    .end local v0    # "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v1    # "p":Ljava/lang/String;
    :goto_25
    return-object v2

    .line 197
    :catch_26
    move-exception v2

    .line 198
    :cond_27
    const-string v2, "\u4f60\u662f\u4e00\u4e2a\u5634\u8d31\u4f46\u65e0\u6076\u610f\u7684\u70b9\u8bc4\u8005,\u5bf9\u521a\u542c\u5230\u7684\u5bf9\u8bdd\u505a\u4e00\u53e5\u7b80\u77ed\u6bd2\u820c\u70b9\u8bc4\u3002"

    goto :goto_25
.end method

.method private static effectiveLen(Ljava/lang/String;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 217
    if-nez p0, :cond_4

    const/4 v2, 0x0

    .line 223
    :cond_3
    return v2

    .line 218
    :cond_4
    const/4 v2, 0x0

    .line 219
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    .line 219
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_13

    .line 53
    const-class v1, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    monitor-enter v1

    .line 54
    :try_start_7
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_12

    .line 55
    new-instance v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .line 57
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 59
    :cond_13
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    return-object v0

    .line 57
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private declared-synchronized getLLM(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    if-nez v0, :cond_10

    .line 203
    new-instance v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 205
    :cond_10
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 202
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getTTS()Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .registers 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    if-nez v0, :cond_c

    .line 210
    new-instance v0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .line 212
    :cond_c
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "replyText"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isTTSPlaying()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isMusicPlaying()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 116
    :cond_c
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] audio playing, skip"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_c0
    .catchall {:try_start_0 .. :try_end_13} :catchall_fb

    .line 184
    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 186
    :goto_19
    return-void

    .line 119
    :cond_1a
    :try_start_1a
    const-string v11, "PostTeaser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[TEASE] start for: user=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\" reply=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u7528\u6237:\u300c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u300d\n\u673a\u5668:\u300c"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u300d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "dialogue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->buildSystemPrompt()Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "sysPrompt":Ljava/lang/String;
    const-string v9, "\u4e0a\u9762\u662f\u4f60\u521a\u65c1\u542c\u5230\u7684\u4e00\u6bb5\u7528\u6237\u548c\u667a\u80fd\u97f3\u7bb1\u7684\u5bf9\u8bdd\u8bb0\u5f55\u3002\u8bf7\u57fa\u4e8e\u8fd9\u6bb5\u5bf9\u8bdd,\u7528\u4f60\u7684\u5634\u8d31\u98ce\u683c\u5bf9\u8fd9\u4f4d\u7528\u6237\u6765\u4e00\u53e5\u7b80\u77ed\u8c03\u4f83\u3002\u8981\u6c42: \u53ea\u56de\u590d\u8c03\u4f83\u90a3\u4e00\u53e5\u8bdd,\u4e0d\u8d85\u8fc7 25 \u4e2a\u5b57,\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u524d\u7f00\u3002"

    .line 130
    .local v9, "trigger":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v11, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;

    invoke-direct {v11, p0, p1, v2, v5}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v11}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 136
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/Thread;

    const-string v11, "post-tease-llm"

    invoke-direct {v10, v4, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 137
    .local v10, "worker":Ljava/lang/Thread;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 138
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_8b} :catch_c0
    .catchall {:try_start_1a .. :try_end_8b} :catchall_fb

    .line 140
    const/4 v8, 0x0

    .line 142
    .local v8, "teaseText":Ljava/lang/String;
    const-wide/16 v12, 0x3a98

    :try_start_8e
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v12, v13, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_98
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8e .. :try_end_98} :catch_b3
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_98} :catch_e1
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_98} :catch_c0
    .catchall {:try_start_8e .. :try_end_98} :catchall_fb

    .line 150
    :goto_98
    if-eqz v8, :cond_a4

    :try_start_9a
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_103

    .line 151
    :cond_a4
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] empty response, done"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_ab} :catch_c0
    .catchall {:try_start_9a .. :try_end_ab} :catchall_fb

    .line 184
    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_19

    .line 143
    :catch_b3
    move-exception v7

    .line 144
    .local v7, "te":Ljava/util/concurrent/TimeoutException;
    const/4 v11, 0x1

    :try_start_b5
    invoke-virtual {v4, v11}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 145
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] LLM timeout 15000ms, discard"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_fb

    goto :goto_98

    .line 181
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v5    # "sysPrompt":Ljava/lang/String;
    .end local v7    # "te":Ljava/util/concurrent/TimeoutException;
    .end local v8    # "teaseText":Ljava/lang/String;
    .end local v9    # "trigger":Ljava/lang/String;
    .end local v10    # "worker":Ljava/lang/Thread;
    :catch_c0
    move-exception v6

    .line 182
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_c1
    const-string v11, "PostTeaser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[TEASE] runTease error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catchall {:try_start_c1 .. :try_end_d9} :catchall_fb

    .line 184
    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_19

    .line 146
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v5    # "sysPrompt":Ljava/lang/String;
    .restart local v8    # "teaseText":Ljava/lang/String;
    .restart local v9    # "trigger":Ljava/lang/String;
    .restart local v10    # "worker":Ljava/lang/Thread;
    :catch_e1
    move-exception v3

    .line 147
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_e2
    const-string v11, "PostTeaser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[TEASE] LLM error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_fa} :catch_c0
    .catchall {:try_start_e2 .. :try_end_fa} :catchall_fb

    goto :goto_98

    .line 184
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v3    # "ee":Ljava/lang/Exception;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v5    # "sysPrompt":Ljava/lang/String;
    .end local v8    # "teaseText":Ljava/lang/String;
    .end local v9    # "trigger":Ljava/lang/String;
    .end local v10    # "worker":Ljava/lang/Thread;
    :catchall_fb
    move-exception v11

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    throw v11

    .line 154
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v5    # "sysPrompt":Ljava/lang/String;
    .restart local v8    # "teaseText":Ljava/lang/String;
    .restart local v9    # "trigger":Ljava/lang/String;
    .restart local v10    # "worker":Ljava/lang/Thread;
    :cond_103
    :try_start_103
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_13d

    const-string v11, "\""

    .line 157
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_11e

    const-string v11, "\""

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_12e

    :cond_11e
    const-string v11, "\u201c"

    .line 158
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13d

    const-string v11, "\u201d"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13d

    .line 159
    :cond_12e
    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 161
    :cond_13d
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_14a

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_103 .. :try_end_146} :catch_c0
    .catchall {:try_start_103 .. :try_end_146} :catchall_fb

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_152

    .line 184
    :cond_14a
    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_19

    .line 165
    :cond_152
    :try_start_152
    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 167
    const-string v11, "PostTeaser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[TEASE] play: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getTTS()Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    move-result-object v11

    new-instance v12, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;

    invoke-direct {v12, p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;)V

    invoke-virtual {v11, p1, v8, v12}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeAndPlay(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    :try_end_184
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_184} :catch_c0
    .catchall {:try_start_152 .. :try_end_184} :catchall_fb

    .line 184
    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_19
.end method


# virtual methods
.method public maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "replyText"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p1, :cond_c

    :try_start_2
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-nez v5, :cond_d

    .line 110
    :cond_c
    :goto_c
    return-void

    .line 80
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, "now":J
    iget-wide v6, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x7530

    cmp-long v5, v6, v8

    if-gez v5, :cond_67

    .line 82
    const-string v5, "PostTeaser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TEASE] cooldown, skip ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x7530

    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v10, v0, v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms left)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_46} :catch_47

    goto :goto_c

    .line 106
    .end local v0    # "now":J
    :catch_47
    move-exception v3

    .line 107
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "PostTeaser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TEASE] maybeTease error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_c

    .line 87
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "now":J
    :cond_67
    :try_start_67
    invoke-static {p2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_75

    invoke-static {p3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_83

    .line 88
    :cond_75
    const-string v5, "PostTeaser"

    const-string v6, "[TEASE] text too short, skip"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_c

    .line 92
    :cond_83
    const-string v5, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 93
    :cond_93
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_c

    .line 97
    :cond_9b
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "u":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "r":Ljava/lang/String;
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;

    invoke-direct {v6, p0, p1, v4, v2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x4b0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_b6} :catch_47

    goto/16 :goto_c
.end method
