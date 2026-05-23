.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeAndPlay(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

.field final synthetic val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Landroid/content/Context;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS \u5408\u6210\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 252
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS \u5408\u6210\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5408\u6210\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTS \u5408\u6210\u6210\u529f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 229
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS \u5408\u6210\u6210\u529f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;->val$context:Landroid/content/Context;

    new-instance v2, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;

    invoke-direct {v2, p0, p1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1$1;-><init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;Ljava/lang/String;)V

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->playAudio(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    invoke-static {v0, v1, p1, v2}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$100(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V

    .line 247
    return-void
.end method
