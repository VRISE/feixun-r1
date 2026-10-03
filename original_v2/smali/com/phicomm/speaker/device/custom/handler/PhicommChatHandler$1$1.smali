.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;
.super Ljava/lang/Object;
.source "PhicommChatHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 442
    const-string v0, "PhicommChat"

    const-string v1, "\u8c46\u5305\u8bed\u97f3\u64ad\u5b8c \u2192 \u624b\u52a8\u8d70 TTS \u7ed3\u675f\u6d41\u7a0b"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->handleTtsPlayingEnd()Z
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    .line 444
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string v0, "PhicommChat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8c46\u5305\u8bed\u97f3\u64ad\u653e\u5931\u8d25, \u9000\u56de\u539f\u5382 TTS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$600(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 450
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    iget-object v1, v1, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$600(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 452
    :cond_31
    return-void
.end method
