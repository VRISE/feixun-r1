.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 522
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 525
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u9891\u64ad\u653e\u9519\u8bef: what="

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

    .line 526
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 527
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    const-string v1, "\u64ad\u653e\u9519\u8bef"

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onError(Ljava/lang/String;)V

    .line 528
    const/4 v0, 0x1

    return v0
.end method
