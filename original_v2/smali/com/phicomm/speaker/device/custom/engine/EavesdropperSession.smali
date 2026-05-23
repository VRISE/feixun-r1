.class public Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
.super Ljava/lang/Object;
.source "EavesdropperSession.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EavesdropperSession"


# instance fields
.field private final antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private final asrRecognizer:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

.field private final context:Landroid/content/Context;

.field private volatile isActive:Z

.field private volatile isProcessingASR:Z

.field private final pipeline:Lcom/unisound/vui/engine/ANTPipeline;

.field private final vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

.field private volatile wakeupSuspended:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pipeline"    # Lcom/unisound/vui/engine/ANTPipeline;
    .param p3, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    .line 37
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    .line 39
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z

    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;

    .line 44
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 46
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)V

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;-><init>(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    .line 65
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    invoke-direct {v0, p1, p3}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->asrRecognizer:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
    .param p1, "x1"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startASRRecognition([B)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->onSessionEnded()V

    return-void
.end method

.method static synthetic access$202(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    return p1
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)Lcom/unisound/vui/engine/ANTPipeline;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;

    return-object v0
.end method

.method private declared-synchronized onSessionEnded()V
    .registers 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_7

    .line 165
    :goto_5
    monitor-exit p0

    return-void

    .line 161
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cancel()V

    .line 163
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->resumeSystemWakeup()V

    .line 164
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifySessionEnded()V
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    goto :goto_5

    .line 160
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resumeSystemWakeup()V
    .registers 4

    .prologue
    .line 179
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z

    if-nez v1, :cond_5

    .line 187
    :goto_4
    return-void

    .line 181
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z

    .line 183
    const-string v1, "EavesdropperSession"

    const-string v2, "System wakeup resumed"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_4

    .line 184
    :catch_16
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EavesdropperSession"

    const-string v2, "Failed to resume wakeup"

    invoke-static {v1, v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private declared-synchronized startASRRecognition([B)V
    .registers 4
    .param p1, "audioBuffer"    # [B

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cancel()V

    .line 132
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->resumeSystemWakeup()V

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->asrRecognizer:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)V

    invoke-virtual {v0, p1, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->recognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 154
    monitor-exit p0

    return-void

    .line 128
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private suspendSystemWakeup()V
    .registers 4

    .prologue
    .line 168
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z

    if-eqz v1, :cond_5

    .line 176
    :goto_4
    return-void

    .line 170
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z

    .line 172
    const-string v1, "EavesdropperSession"

    const-string v2, "System wakeup suspended (MIC released to AudioRecord)"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_4

    .line 173
    :catch_15
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EavesdropperSession"

    const-string v2, "Failed to stop wakeup"

    invoke-static {v1, v2, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->wakeupSuspended:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_54

    if-nez v0, :cond_f

    .line 109
    :goto_d
    monitor-exit p0

    return-void

    .line 97
    :cond_f
    :try_start_f
    const-string v0, "EavesdropperSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling session, isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isProcessingASR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cancel()V

    .line 101
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    if-eqz v0, :cond_46

    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->asrRecognizer:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->cancel()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z

    .line 106
    :cond_46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    .line 107
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->resumeSystemWakeup()V

    .line 108
    const-string v0, "EavesdropperSession"

    const-string v1, "Eavesdropper session cancelled"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_f .. :try_end_53} :catchall_54

    goto :goto_d

    .line 93
    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .registers 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->cancel()V

    .line 123
    const-string v0, "EavesdropperSession"

    const-string v1, "Eavesdropper session destroyed"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 124
    monitor-exit p0

    return-void

    .line 122
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    return v0
.end method

.method public declared-synchronized startListening()V
    .registers 3

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    if-eqz v0, :cond_e

    .line 81
    const-string v0, "EavesdropperSession"

    const-string v1, "Session already active, ignoring"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    .line 87
    :goto_c
    monitor-exit p0

    return-void

    .line 84
    :cond_e
    const/4 v0, 0x1

    :try_start_f
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive:Z

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->vadDetector:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->startListening()V

    .line 86
    const-string v0, "EavesdropperSession"

    const-string v1, "Eavesdropper session started (dormant mode, MIC free)"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_c

    .line 80
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
