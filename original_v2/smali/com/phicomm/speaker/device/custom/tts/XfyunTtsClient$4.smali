.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

.field final synthetic val$watchdog:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Landroid/os/Handler;[ZLcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$watchdog:Landroid/os/Handler;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$done:[Z

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 535
    const-string v0, "XfyunTtsClient"

    const-string v1, "\u97f3\u9891\u64ad\u653e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$watchdog:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 537
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$done:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_15

    .line 541
    :goto_14
    return-void

    .line 538
    :cond_15
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$done:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 539
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 540
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-interface {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onComplete()V

    goto :goto_14
.end method
