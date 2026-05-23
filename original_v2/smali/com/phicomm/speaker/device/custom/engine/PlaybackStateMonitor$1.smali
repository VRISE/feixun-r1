.class Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor$1;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 36
    # getter for: Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->ttsPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 37
    const-string v0, "PlaybackStateMonitor"

    const-string v1, "TTS auto-reset fired (no playingEnd received in 30000ms)"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 40
    :cond_15
    return-void
.end method
