.class Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;
.super Ljava/lang/Object;
.source "DoubaoVoicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;->play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

.field final synthetic val$done:[Z

.field final synthetic val$durationMs:I

.field final synthetic val$watchdog:Landroid/os/Handler;

.field final synthetic val$watchdogTask:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILandroid/os/Handler;[Ljava/lang/Runnable;[ZLcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    .registers 6

    .prologue
    .line 94
    iput p1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$durationMs:I

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$watchdog:Landroid/os/Handler;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$watchdogTask:[Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$done:[Z

    iput-object p5, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v0, "DoubaoVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c46\u5305\u8bed\u97f3\u64ad\u653e\u5b8c\u6210 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$durationMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$watchdog:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$watchdogTask:[Ljava/lang/Runnable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$done:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_31

    .line 104
    :cond_30
    :goto_30
    return-void

    .line 100
    :cond_31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$done:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    .line 101
    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-interface {v0}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;->onComplete()V

    goto :goto_30
.end method
