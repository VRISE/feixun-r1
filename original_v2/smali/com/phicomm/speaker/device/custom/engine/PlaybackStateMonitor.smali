.class public final Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"


# static fields
.field private static final MUSIC_AUTO_RESET_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PlaybackStateMonitor"

.field private static final TTS_AUTO_RESET_MS:J = 0x7530L

.field private static final mainHandler:Landroid/os/Handler;

.field private static final musicAutoResetRunnable:Ljava/lang/Runnable;

.field private static final musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final ttsAutoResetRunnable:Ljava/lang/Runnable;

.field private static final ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor$1;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor$1;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsAutoResetRunnable:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor$2;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor$2;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicAutoResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static isAnyPlaying()Z
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isMusicPlaying()Z
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static isTTSPlaying()Z
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static setMusicPlaying(Z)V
    .registers 7
    .param p0, "playing"    # Z

    .prologue
    .line 74
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v1, p0, :cond_3a

    const/4 v0, 0x1

    .line 75
    .local v0, "changed":Z
    :goto_9
    if-eqz v0, :cond_39

    .line 76
    const-string v1, "PlaybackStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Music playing -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz p0, :cond_3c

    .line 78
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifyInteraction()V

    .line 79
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicAutoResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicAutoResetRunnable:Ljava/lang/Runnable;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :cond_39
    :goto_39
    return-void

    .line 74
    .end local v0    # "changed":Z
    :cond_3a
    const/4 v0, 0x0

    goto :goto_9

    .line 82
    .restart local v0    # "changed":Z
    :cond_3c
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->musicAutoResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_39
.end method

.method public static setTTSPlaying(Z)V
    .registers 7
    .param p0, "playing"    # Z

    .prologue
    .line 56
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eq v1, p0, :cond_40

    const/4 v0, 0x1

    .line 57
    .local v0, "changed":Z
    :goto_9
    if-eqz v0, :cond_3f

    .line 58
    const-string v1, "PlaybackStateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS playing -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz p0, :cond_42

    .line 60
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifyInteraction()V

    .line 61
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsAutoResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsAutoResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    const-string v1, "PlaybackStateMonitor"

    const-string v2, "TTS auto-reset scheduled in 30000ms"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_3f
    :goto_3f
    return-void

    .line 56
    .end local v0    # "changed":Z
    :cond_40
    const/4 v0, 0x0

    goto :goto_9

    .line 65
    .restart local v0    # "changed":Z
    :cond_42
    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsAutoResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifyTTSEnded()V

    goto :goto_3f
.end method
