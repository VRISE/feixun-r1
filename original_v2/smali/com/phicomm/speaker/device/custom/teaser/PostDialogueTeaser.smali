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

.field private static volatile sEchoGuardUntil:J

.field private static final sGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;


# instance fields
.field private final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastTeaseAt:J

.field private lastTeaseText:Ljava/lang/String;

.field private llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

.field private ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 77
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getLLM(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 37
    sput-wide p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    return-wide p0
.end method

.method private buildSystemPrompt()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    :try_start_0
    const-string v2, "eavesdropper"

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 237
    .local v0, "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 238
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v1

    .line 240
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

    .line 244
    .end local v0    # "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v1    # "p":Ljava/lang/String;
    :goto_25
    return-object v2

    .line 243
    :catch_26
    move-exception v2

    .line 244
    :cond_27
    const-string v2, "\u4f60\u662f\u4e00\u4e2a\u5634\u8d31\u4f46\u65e0\u6076\u610f\u7684\u70b9\u8bc4\u8005,\u5bf9\u521a\u542c\u5230\u7684\u5bf9\u8bdd\u505a\u4e00\u53e5\u7b80\u77ed\u6bd2\u820c\u70b9\u8bc4\u3002"

    goto :goto_25
.end method

.method private static effectiveLen(Ljava/lang/String;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 263
    if-nez p0, :cond_4

    const/4 v2, 0x0

    .line 269
    :cond_3
    return v2

    .line 264
    :cond_4
    const/4 v2, 0x0

    .line 265
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 267
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    .line 265
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .line 66
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    return-object v0

    .line 66
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
    .line 248
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    if-nez v0, :cond_10

    .line 249
    new-instance v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 251
    :cond_10
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 248
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getTTS()Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .registers 2

    .prologue
    .line 255
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    if-nez v0, :cond_c

    .line 256
    new-instance v0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .line 258
    :cond_c
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->ttsClient:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isEchoGuardActive()Z
    .registers 4

    .prologue
    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "replyText"    # Ljava/lang/String;

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-nez v11, :cond_14

    .line 150
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] busy, skip"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_13
    return-void

    .line 155
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isTTSPlaying()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isMusicPlaying()Z

    move-result v11

    if-eqz v11, :cond_30

    .line 156
    :cond_20
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] audio playing, skip"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_27} :catch_dc
    .catchall {:try_start_14 .. :try_end_27} :catchall_119

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    .line 159
    :cond_30
    :try_start_30
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

    .line 162
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

    .line 164
    .local v2, "dialogue":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->buildSystemPrompt()Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "sysPrompt":Ljava/lang/String;
    const-string v9, "\u4e0a\u9762\u662f\u4f60\u521a\u65c1\u542c\u5230\u7684\u4e00\u6bb5\u7528\u6237\u548c\u667a\u80fd\u97f3\u7bb1\u7684\u5bf9\u8bdd\u8bb0\u5f55\u3002\u8bf7\u57fa\u4e8e\u8fd9\u6bb5\u5bf9\u8bdd,\u7528\u4f60\u7684\u5634\u8d31\u98ce\u683c\u5bf9\u8fd9\u4f4d\u7528\u6237\u6765\u4e00\u53e5\u7b80\u77ed\u8c03\u4f83\u3002\u8981\u6c42: \u53ea\u56de\u590d\u8c03\u4f83\u90a3\u4e00\u53e5\u8bdd,\u4e0d\u8d85\u8fc7 25 \u4e2a\u5b57,\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u524d\u7f00\u3002"

    .line 170
    .local v9, "trigger":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v11, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v2, v5}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v11}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 176
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/Thread;

    const-string v11, "post-tease-llm"

    invoke-direct {v10, v4, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    .local v10, "worker":Ljava/lang/Thread;
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 178
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_a5} :catch_dc
    .catchall {:try_start_30 .. :try_end_a5} :catchall_119

    .line 180
    const/4 v8, 0x0

    .line 182
    .local v8, "teaseText":Ljava/lang/String;
    const-wide/16 v12, 0x3a98

    :try_start_a8
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v12, v13, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v8, v0
    :try_end_b2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_a8 .. :try_end_b2} :catch_cf
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b2} :catch_ff
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_b2} :catch_dc
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_119

    .line 190
    :goto_b2
    if-eqz v8, :cond_be

    :try_start_b4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_123

    .line 191
    :cond_be
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] empty response, done"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_c5} :catch_dc
    .catchall {:try_start_b4 .. :try_end_c5} :catchall_119

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 183
    :catch_cf
    move-exception v7

    .line 184
    .local v7, "te":Ljava/util/concurrent/TimeoutException;
    const/4 v11, 0x1

    :try_start_d1
    invoke-virtual {v4, v11}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 185
    const-string v11, "PostTeaser"

    const-string v12, "[TEASE] LLM timeout 15000ms, discard"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_db} :catch_dc
    .catchall {:try_start_d1 .. :try_end_db} :catchall_119

    goto :goto_b2

    .line 227
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v5    # "sysPrompt":Ljava/lang/String;
    .end local v7    # "te":Ljava/util/concurrent/TimeoutException;
    .end local v8    # "teaseText":Ljava/lang/String;
    .end local v9    # "trigger":Ljava/lang/String;
    .end local v10    # "worker":Ljava/lang/Thread;
    :catch_dc
    move-exception v6

    .line 228
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_dd
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
    :try_end_f5
    .catchall {:try_start_dd .. :try_end_f5} :catchall_119

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 186
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v5    # "sysPrompt":Ljava/lang/String;
    .restart local v8    # "teaseText":Ljava/lang/String;
    .restart local v9    # "trigger":Ljava/lang/String;
    .restart local v10    # "worker":Ljava/lang/Thread;
    :catch_ff
    move-exception v3

    .line 187
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_100
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
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_118} :catch_dc
    .catchall {:try_start_100 .. :try_end_118} :catchall_119

    goto :goto_b2

    .line 230
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v3    # "ee":Ljava/lang/Exception;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .end local v5    # "sysPrompt":Ljava/lang/String;
    .end local v8    # "teaseText":Ljava/lang/String;
    .end local v9    # "trigger":Ljava/lang/String;
    .end local v10    # "worker":Ljava/lang/Thread;
    :catchall_119
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    throw v11

    .line 194
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    .restart local v5    # "sysPrompt":Ljava/lang/String;
    .restart local v8    # "teaseText":Ljava/lang/String;
    .restart local v9    # "trigger":Ljava/lang/String;
    .restart local v10    # "worker":Ljava/lang/Thread;
    :cond_123
    :try_start_123
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 196
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_15d

    const-string v11, "\""

    .line 197
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13e

    const-string v11, "\""

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_14e

    :cond_13e
    const-string v11, "\u201c"

    .line 198
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15d

    const-string v11, "\u201d"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15d

    .line 199
    :cond_14e
    const/4 v11, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 201
    :cond_15d
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16a

    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_123 .. :try_end_166} :catch_dc
    .catchall {:try_start_123 .. :try_end_166} :catchall_119

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_174

    .line 230
    :cond_16a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 205
    :cond_174
    :try_start_174
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 207
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

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x61a8

    add-long/2addr v12, v14

    sput-wide v12, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getTTS()Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    move-result-object v11

    new-instance v12, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v8, v12}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeAndPlay(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    :try_end_1b7
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_1b7} :catch_dc
    .catchall {:try_start_174 .. :try_end_1b7} :catchall_119

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13
.end method


# virtual methods
.method public cancelPending()V
    .registers 3

    .prologue
    .line 138
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 139
    const-string v0, "PostTeaser"

    const-string v1, "[TEASE] pending tease cancelled"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "replyText"    # Ljava/lang/String;

    .prologue
    .line 85
    const-wide/16 v4, 0x4b0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    return-void
.end method

.method public maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "replyText"    # Ljava/lang/String;
    .param p4, "delayMs"    # J

    .prologue
    .line 95
    if-nez p1, :cond_3

    .line 134
    :cond_2
    :goto_2
    return-void

    .line 99
    :cond_3
    :try_start_3
    sget-object v2, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 102
    .local v4, "gen":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 103
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v2, v8, v2

    const-wide/16 v12, 0x7530

    cmp-long v2, v2, v12

    if-gez v2, :cond_5b

    .line 104
    const-string v2, "PostTeaser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEASE] cooldown, skip ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v12, 0x7530

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v14, v8, v14

    sub-long/2addr v12, v14

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "ms left)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_40} :catch_41

    goto :goto_2

    .line 131
    .end local v4    # "gen":I
    .end local v8    # "now":J
    :catch_41
    move-exception v10

    .line 132
    .local v10, "t":Ljava/lang/Throwable;
    const-string v2, "PostTeaser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEASE] maybeTease error: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 108
    .end local v10    # "t":Ljava/lang/Throwable;
    .restart local v4    # "gen":I
    .restart local v8    # "now":J
    :cond_5b
    :try_start_5b
    invoke-static/range {p2 .. p2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_69

    invoke-static/range {p3 .. p3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_71

    .line 109
    :cond_69
    const-string v2, "PostTeaser"

    const-string v3, "[TEASE] text too short, skip"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 112
    :cond_71
    const-string v2, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "u":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "r":Ljava/lang/String;
    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v11, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v11, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_a6} :catch_41

    goto/16 :goto_2
.end method
