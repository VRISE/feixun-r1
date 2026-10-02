.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->playAudio(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

.field final synthetic val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

.field final synthetic val$done:[Z

.field final synthetic val$durationMs:I

.field final synthetic val$finalPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;[ZILandroid/media/MediaPlayer;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$done:[Z

    iput p3, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$durationMs:I

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$finalPlayer:Landroid/media/MediaPlayer;

    iput-object p5, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$done:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_8

    .line 529
    :goto_7
    return-void

    .line 525
    :cond_8
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$done:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 526
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WATCHDOG] onCompletion lost (duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$durationMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms), force complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :try_start_2d
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$finalPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_32} :catch_38

    .line 528
    :goto_32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-interface {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onComplete()V

    goto :goto_7

    .line 527
    :catch_38
    move-exception v0

    goto :goto_32
.end method
