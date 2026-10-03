.class Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;
.super Ljava/lang/Object;
.source "DoubaoVoicePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

.field final synthetic val$watchdog:Landroid/os/Handler;

.field final synthetic val$watchdogTask:[Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;[Ljava/lang/Runnable;[ZLcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    .registers 5

    .prologue
    .line 107
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$watchdog:Landroid/os/Handler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$watchdogTask:[Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$done:[Z

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 110
    const-string v0, "DoubaoVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c46\u5305\u8bed\u97f3\u64ad\u653e\u9519\u8bef: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$watchdog:Landroid/os/Handler;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$watchdogTask:[Ljava/lang/Runnable;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$done:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_34

    .line 117
    :cond_33
    :goto_33
    return v4

    .line 113
    :cond_34
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$done:[Z

    aput-boolean v4, v0, v3

    .line 114
    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\u9519\u8bef what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;->onError(Ljava/lang/String;)V

    goto :goto_33
.end method
