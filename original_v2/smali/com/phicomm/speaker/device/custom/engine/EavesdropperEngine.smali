.class public Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;
.super Ljava/lang/Object;
.source "EavesdropperEngine.java"


# static fields
.field private static final SESSION_COOLDOWN_MS:J

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;


# instance fields
.field private antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private context:Landroid/content/Context;

.field private volatile isRunning:Z

.field private volatile isWakeupProcessing:Z

.field private volatile lastDiagLogTime:J

.field private volatile lastDiagReason:Ljava/lang/String;

.field private volatile lastSessionEndTime:J

.field private volatile listeningStartTime:J

.field private pipeline:Lcom/unisound/vui/engine/ANTPipeline;

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile schedulerStarted:Z

.field private session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

.field private final wakeupProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pipeline"    # Lcom/unisound/vui/engine/ANTPipeline;
    .param p3, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    .line 51
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->schedulerStarted:Z

    .line 54
    iput-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->listeningStartTime:J

    .line 57
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->wakeupProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    iput-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    .line 64
    iput-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagLogTime:J

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagReason:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->context:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;

    .line 70
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 71
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 72
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    .line 73
    sput-object p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->wakeupProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$402(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z

    return p1
.end method

.method private checkIdleThreshold()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 259
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->shouldTriggerActiveListening(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 260
    const-string v2, "not_idle_enough"

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->diagLog(Ljava/lang/String;)V

    .line 294
    :goto_f
    return-void

    .line 265
    :cond_10
    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z

    if-eqz v2, :cond_1a

    .line 266
    const-string v2, "wakeup_processing"

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->diagLog(Ljava/lang/String;)V

    goto :goto_f

    .line 271
    :cond_1a
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isAnyPlaying()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playing tts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isTTSPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " music="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isMusicPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->diagLog(Ljava/lang/String;)V

    goto :goto_f

    .line 279
    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    sub-long v0, v2, v4

    .line 280
    .local v0, "sinceLastEnd":J
    iget-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_7a

    cmp-long v2, v0, v6

    if-gez v2, :cond_7a

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cooldown remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v4, v6, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->diagLog(Ljava/lang/String;)V

    goto :goto_f

    .line 285
    :cond_7a
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive()Z

    move-result v2

    if-eqz v2, :cond_88

    .line 286
    const-string v2, "session_already_active"

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->diagLog(Ljava/lang/String;)V

    goto :goto_f

    .line 290
    :cond_88
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->startActiveListening(Landroid/content/Context;)V

    .line 291
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startListening()V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->listeningStartTime:J

    .line 293
    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v3, "[GO] Idle threshold reached, started eavesdropper session"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f
.end method

.method private checkListeningDuration()V
    .registers 9

    .prologue
    .line 313
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening()Z

    move-result v1

    if-nez v1, :cond_7

    .line 329
    :cond_6
    :goto_6
    return-void

    .line 317
    :cond_7
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivePersona()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 318
    .local v0, "activeConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->listeningStartTime:J

    sub-long v2, v4, v6

    .line 320
    .local v2, "elapsed":J
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getMaxListeningDurationMs()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    .line 321
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v4, "Max listening duration reached, cancelling session"

    invoke-static {v1, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    if-eqz v1, :cond_2b

    .line 323
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->cancel()V

    .line 325
    :cond_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    .line 326
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListening()V

    goto :goto_6
.end method

.method private diagLog(Ljava/lang/String;)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    .local v0, "now":J
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagReason:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const/4 v2, 0x1

    .line 302
    .local v2, "reasonChanged":Z
    :goto_d
    if-nez v2, :cond_19

    iget-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagLogTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-ltz v3, :cond_35

    .line 303
    :cond_19
    sget-object v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SKIP] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagLogTime:J

    .line 305
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastDiagReason:Ljava/lang/String;

    .line 307
    :cond_35
    return-void

    .line 301
    .end local v2    # "reasonChanged":Z
    :cond_36
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static notifyInteraction()V
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v0, :cond_9

    .line 90
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->onInteractionDetected()V

    .line 92
    :cond_9
    return-void
.end method

.method public static notifySessionEnded()V
    .registers 4

    .prologue
    .line 115
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v0, :cond_13

    .line 116
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    .line 117
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Session ended, cooldown started"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_13
    return-void
.end method

.method public static notifyTTSEnded()V
    .registers 4

    .prologue
    .line 100
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    iget-boolean v1, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    iget-object v1, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    if-eqz v1, :cond_1e

    .line 102
    :try_start_10
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v2, "TTS ended, force stopWakeup to keep dormant alive"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    iget-object v1, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1e} :catch_1f

    .line 108
    .local v0, "t":Ljava/lang/Throwable;
    :cond_1e
    :goto_1e
    return-void

    .line 104
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1f
    move-exception v0

    .line 105
    .restart local v0    # "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopWakeup after TTS failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public static notifyWakeupDetected()V
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v0, :cond_9

    .line 81
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->onWakeupDetected()V

    .line 83
    :cond_9
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_11

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 246
    :cond_11
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    if-eqz v0, :cond_1a

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->destroy()V

    .line 249
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    .line 250
    const/4 v0, 0x0

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->instance:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .line 252
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Eavesdropper engine destroyed"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    return v0
.end method

.method public onInteractionDetected()V
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->cancel()V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    .line 202
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z

    .line 203
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Interaction detected, cancelling eavesdropper session"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$3;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$3;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    return-void
.end method

.method public onWakeupDetected()V
    .registers 7

    .prologue
    .line 169
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->wakeupProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 170
    .local v0, "count":I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z

    .line 173
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 174
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->cancel()V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->lastSessionEndTime:J

    .line 178
    :cond_20
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wakeup detected, cancelling eavesdropper session (active count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    return-void
.end method

.method public start()V
    .registers 8

    .prologue
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    .line 126
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    if-eqz v0, :cond_f

    .line 127
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Engine already running"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_e
    :goto_e
    return-void

    .line 133
    :cond_f
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 134
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListening()V

    .line 135
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Cleaned up stale active listening state before start"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_1f
    iput-boolean v4, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->listeningStartTime:J

    .line 141
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Eavesdropper engine started (dormant mode)"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startListening()V

    .line 149
    :cond_3b
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->schedulerStarted:Z

    if-nez v0, :cond_e

    .line 150
    iput-boolean v4, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->schedulerStarted:Z

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_e
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    if-nez v0, :cond_5

    .line 237
    :goto_4
    return-void

    .line 223
    :cond_5
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->cancel()V

    .line 229
    :cond_e
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 230
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->stopActiveListening()V

    .line 231
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Stopped active listening mode on engine stop"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z

    .line 236
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;

    const-string v1, "Eavesdropper engine session stopped (scheduler kept alive)"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
