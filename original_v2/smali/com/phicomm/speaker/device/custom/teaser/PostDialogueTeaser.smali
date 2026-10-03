.class public Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"


# static fields
.field private static final LLM_BUDGET_MS:J = 0x3a98L

.field private static final MIN_USER_LEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PostTeaser"

.field private static final TEASE_COOLDOWN_MS:J = 0x7530L

.field private static final TEASE_DELAY_MS:J = 0x4b0L

.field private static final TEASE_TOPIC:Ljava/lang/String; = "r1-teaser"

.field private static volatile sEchoGuardUntil:J

.field private static final sGen:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;


# instance fields
.field private final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastTeaseAt:J

.field private lastTeaseText:Ljava/lang/String;

.field private llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getLLM(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 40
    sput-wide p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    return-wide p0
.end method

.method private buildSystemPrompt()Ljava/lang/String;
    .registers 5

    .prologue
    .line 253
    :try_start_0
    const-string v2, "eavesdropper"

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 254
    .local v0, "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 255
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v1

    .line 257
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

    .line 261
    .end local v0    # "cfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v1    # "p":Ljava/lang/String;
    :goto_25
    return-object v2

    .line 260
    :catch_26
    move-exception v2

    .line 261
    :cond_27
    const-string v2, "\u4f60\u662f\u4e00\u4e2a\u5634\u8d31\u4f46\u65e0\u6076\u610f\u7684\u70b9\u8bc4\u8005,\u5bf9\u521a\u542c\u5230\u7684\u5bf9\u8bdd\u505a\u4e00\u53e5\u7b80\u77ed\u6bd2\u820c\u70b9\u8bc4\u3002"

    goto :goto_25
.end method

.method private static effectiveLen(Ljava/lang/String;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 273
    if-nez p0, :cond_4

    const/4 v2, 0x0

    .line 279
    :cond_3
    return v2

    .line 274
    :cond_4
    const/4 v2, 0x0

    .line 275
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 277
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    .line 275
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_13

    .line 70
    const-class v1, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    monitor-enter v1

    .line 71
    :try_start_7
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    if-nez v0, :cond_12

    .line 72
    new-instance v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .line 74
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 76
    :cond_13
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sInstance:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    return-object v0

    .line 74
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
    .line 265
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    if-nez v0, :cond_10

    .line 266
    new-instance v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 268
    :cond_10
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->llmClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    .line 265
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isEchoGuardActive()Z
    .registers 4

    .prologue
    .line 146
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

.method private runTease(Landroid/content/Context;Ljava/lang/String;)V
    .registers 21
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v13

    if-nez v13, :cond_14

    .line 152
    const-string v13, "PostTeaser"

    const-string v14, "[TEASE] busy, skip"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :goto_13
    return-void

    .line 157
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isTTSPlaying()Z

    move-result v13

    if-nez v13, :cond_20

    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isMusicPlaying()Z

    move-result v13

    if-eqz v13, :cond_30

    .line 158
    :cond_20
    const-string v13, "PostTeaser"

    const-string v14, "[TEASE] audio playing, skip"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_27} :catch_c7
    .catchall {:try_start_14 .. :try_end_27} :catchall_104

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    .line 161
    :cond_30
    :try_start_30
    const-string v13, "PostTeaser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TEASE] start for: user=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7528\u6237\u521a\u624d\u5bf9\u667a\u80fd\u97f3\u7bb1\u8bf4:\u300c"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u300d"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "dialogue":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->buildSystemPrompt()Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "sysPrompt":Ljava/lang/String;
    const-string v11, "\u4e0a\u9762\u662f\u7528\u6237\u521a\u5bf9\u667a\u80fd\u97f3\u7bb1\u8bf4\u7684\u4e00\u53e5\u8bdd\u3002\u8bf7\u7528\u4f60\u7684\u5634\u8d31\u98ce\u683c,\u9488\u5bf9\u4ed6\u8bf4\u7684\u8fd9\u53e5\u8bdd\u6765\u4e00\u53e5\u7b80\u77ed\u8c03\u4f83\u3002\u8981\u6c42: \u53ea\u56de\u590d\u8c03\u4f83\u90a3\u4e00\u53e5\u8bdd,\u4e0d\u8d85\u8fc7 25 \u4e2a\u5b57,\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u524d\u7f00,\u4e5f\u4e0d\u8981\u91cd\u590d\u4ed6\u8bf4\u7684\u8bdd\u3001\u4e0d\u8981\u56de\u7b54\u4ed6\u7684\u95ee\u9898\u3002"

    .line 174
    .local v11, "trigger":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v13, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1, v2, v6}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v13}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 183
    .local v4, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;>;"
    new-instance v12, Ljava/lang/Thread;

    const-string v13, "post-tease-llm"

    invoke-direct {v12, v4, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    .local v12, "worker":Ljava/lang/Thread;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 185
    invoke-virtual {v12}, Ljava/lang/Thread;->start()V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_8d} :catch_c7
    .catchall {:try_start_30 .. :try_end_8d} :catchall_104

    .line 187
    const/4 v5, 0x0

    .line 189
    .local v5, "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    const-wide/16 v14, 0x3a98

    :try_start_90
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v14, v15, v13}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-object v5, v0
    :try_end_9a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_90 .. :try_end_9a} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9a} :catch_ea
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_9a} :catch_c7
    .catchall {:try_start_90 .. :try_end_9a} :catchall_104

    .line 197
    :goto_9a
    if-nez v5, :cond_10e

    const/4 v10, 0x0

    .line 198
    .local v10, "teaseText":Ljava/lang/String;
    :goto_9d
    if-eqz v10, :cond_a9

    :try_start_9f
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_111

    .line 199
    :cond_a9
    const-string v13, "PostTeaser"

    const-string v14, "[TEASE] empty response, done"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_b0} :catch_c7
    .catchall {:try_start_9f .. :try_end_b0} :catchall_104

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 190
    .end local v10    # "teaseText":Ljava/lang/String;
    :catch_ba
    move-exception v8

    .line 191
    .local v8, "te":Ljava/util/concurrent/TimeoutException;
    const/4 v13, 0x1

    :try_start_bc
    invoke-virtual {v4, v13}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 192
    const-string v13, "PostTeaser"

    const-string v14, "[TEASE] LLM timeout 15000ms, discard"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_c6} :catch_c7
    .catchall {:try_start_bc .. :try_end_c6} :catchall_104

    goto :goto_9a

    .line 244
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;>;"
    .end local v5    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .end local v6    # "sysPrompt":Ljava/lang/String;
    .end local v8    # "te":Ljava/util/concurrent/TimeoutException;
    .end local v11    # "trigger":Ljava/lang/String;
    .end local v12    # "worker":Ljava/lang/Thread;
    :catch_c7
    move-exception v7

    .line 245
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_c8
    const-string v13, "PostTeaser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TEASE] runTease error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_c8 .. :try_end_e0} :catchall_104

    .line 247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 193
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;>;"
    .restart local v5    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .restart local v6    # "sysPrompt":Ljava/lang/String;
    .restart local v11    # "trigger":Ljava/lang/String;
    .restart local v12    # "worker":Ljava/lang/Thread;
    :catch_ea
    move-exception v3

    .line 194
    .local v3, "ee":Ljava/lang/Exception;
    :try_start_eb
    const-string v13, "PostTeaser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TEASE] LLM error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_103} :catch_c7
    .catchall {:try_start_eb .. :try_end_103} :catchall_104

    goto :goto_9a

    .line 247
    .end local v2    # "dialogue":Ljava/lang/String;
    .end local v3    # "ee":Ljava/lang/Exception;
    .end local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;>;"
    .end local v5    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .end local v6    # "sysPrompt":Ljava/lang/String;
    .end local v11    # "trigger":Ljava/lang/String;
    .end local v12    # "worker":Ljava/lang/Thread;
    :catchall_104
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    throw v13

    .line 197
    .restart local v2    # "dialogue":Ljava/lang/String;
    .restart local v4    # "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;>;"
    .restart local v5    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .restart local v6    # "sysPrompt":Ljava/lang/String;
    .restart local v11    # "trigger":Ljava/lang/String;
    .restart local v12    # "worker":Ljava/lang/Thread;
    :cond_10e
    :try_start_10e
    iget-object v10, v5, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    goto :goto_9d

    .line 202
    .restart local v10    # "teaseText":Ljava/lang/String;
    :cond_111
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 204
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_14b

    const-string v13, "\""

    .line 205
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12c

    const-string v13, "\""

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13c

    :cond_12c
    const-string v13, "\u201c"

    .line 206
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14b

    const-string v13, "\u201d"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14b

    .line 207
    :cond_13c
    const/4 v13, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 209
    :cond_14b
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_158

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_154} :catch_c7
    .catchall {:try_start_10e .. :try_end_154} :catchall_104

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_162

    .line 247
    :cond_158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 213
    :cond_162
    :try_start_162
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseText:Ljava/lang/String;

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    .line 215
    const-string v13, "PostTeaser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[TEASE] play: \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x61a8

    add-long v14, v14, v16

    sput-wide v14, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    .line 223
    if-nez v5, :cond_1b6

    const/4 v9, 0x0

    .line 224
    .local v9, "teaseAudio":[B
    :goto_199
    if-eqz v9, :cond_1b9

    array-length v13, v9

    if-lez v13, :cond_1b9

    .line 225
    iget-object v13, v5, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audioFormat:Ljava/lang/String;

    new-instance v14, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;)V

    move-object/from16 v0, p1

    invoke-static {v0, v9, v13, v14}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;->play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_1ac} :catch_c7
    .catchall {:try_start_162 .. :try_end_1ac} :catchall_104

    .line 247
    :goto_1ac
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_13

    .line 223
    .end local v9    # "teaseAudio":[B
    :cond_1b6
    :try_start_1b6
    iget-object v9, v5, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B

    goto :goto_199

    .line 241
    .restart local v9    # "teaseAudio":[B
    :cond_1b9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x7d0

    add-long v14, v14, v16

    sput-wide v14, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J

    .line 242
    const-string v13, "PostTeaser"

    const-string v14, "[TEASE] \u670d\u52a1\u7aef\u6ca1\u7ed9\u8bed\u97f3, \u672c\u8f6e\u4e0d\u64ad(\u53ea\u7528\u8c46\u5305\u97f3\u8272)"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_1b6 .. :try_end_1ca} :catch_c7
    .catchall {:try_start_1b6 .. :try_end_1ca} :catchall_104

    goto :goto_1ac
.end method


# virtual methods
.method public cancelPending()V
    .registers 3

    .prologue
    .line 140
    sget-object v0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 141
    const-string v0, "PostTeaser"

    const-string v1, "[TEASE] pending tease cancelled"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public maybeTease(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;

    .prologue
    .line 92
    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;J)V

    .line 93
    return-void
.end method

.method public maybeTease(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userText"    # Ljava/lang/String;
    .param p3, "delayMs"    # J

    .prologue
    .line 101
    if-nez p1, :cond_3

    .line 136
    :goto_2
    return-void

    .line 105
    :cond_3
    :try_start_3
    sget-object v7, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 108
    .local v2, "gen":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 109
    .local v4, "now":J
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x7530

    cmp-long v7, v8, v10

    if-gez v7, :cond_57

    .line 110
    const-string v7, "PostTeaser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TEASE] cooldown, skip ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/16 v10, 0x7530

    iget-wide v12, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->lastTeaseAt:J

    sub-long v12, v4, v12

    sub-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms left)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3c} :catch_3d

    goto :goto_2

    .line 133
    .end local v2    # "gen":I
    .end local v4    # "now":J
    :catch_3d
    move-exception v3

    .line 134
    .local v3, "t":Ljava/lang/Throwable;
    const-string v7, "PostTeaser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TEASE] maybeTease error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 114
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v2    # "gen":I
    .restart local v4    # "now":J
    :cond_57
    :try_start_57
    invoke-static/range {p2 .. p2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->effectiveLen(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_66

    .line 115
    const-string v7, "PostTeaser"

    const-string v8, "[TEASE] text too short, skip"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :cond_66
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "u":Ljava/lang/String;
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;

    move-object/from16 v0, p1

    invoke-direct {v8, p0, v2, v0, v6}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;-><init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;ILandroid/content/Context;Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_7f} :catch_3d

    goto :goto_2
.end method
