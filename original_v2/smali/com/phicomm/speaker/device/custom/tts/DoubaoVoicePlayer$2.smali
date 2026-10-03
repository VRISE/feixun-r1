.class Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;
.super Ljava/lang/Object;
.source "DoubaoVoicePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$finalPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>([ZILandroid/media/MediaPlayer;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    .registers 5

    .prologue
    .line 80
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$done:[Z

    iput p2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$durationMs:I

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$finalPlayer:Landroid/media/MediaPlayer;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$done:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_8

    .line 90
    :cond_7
    :goto_7
    return-void

    .line 84
    :cond_8
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$done:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v3

    .line 85
    const-string v0, "DoubaoVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WATCHDOG] onCompletion lost (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$durationMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms), force complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 88
    :try_start_30
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$finalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_35} :catch_3f

    .line 89
    :goto_35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-interface {v0}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;->onComplete()V

    goto :goto_7

    .line 88
    :catch_3f
    move-exception v0

    goto :goto_35
.end method
