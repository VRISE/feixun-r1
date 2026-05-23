.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;
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


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 513
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 516
    const-string v0, "XfyunTtsClient"

    const-string v1, "\u97f3\u9891\u64ad\u653e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 518
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-interface {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onComplete()V

    .line 519
    return-void
.end method
