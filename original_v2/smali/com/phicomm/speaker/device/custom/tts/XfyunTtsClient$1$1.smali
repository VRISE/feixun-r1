.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;

.field final synthetic val$audioPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 232
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;->this$1:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;->val$audioPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .prologue
    .line 235
    const-string v0, "TTS \u64ad\u653e\u5b8c\u6210"

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 236
    const-string v0, "XfyunTtsClient"

    const-string v1, "TTS \u64ad\u653e\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;->this$1:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;->val$audioPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onSuccess(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS \u64ad\u653e\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 243
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS \u64ad\u653e\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;->this$1:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u64ad\u653e\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    .line 245
    return-void
.end method
