.class Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;
.super Ljava/lang/Object;
.source "EavesdropperHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->generateAndPlayEavesdropResponse(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic val$finalResponse:Ljava/lang/String;

.field final synthetic val$ttsPlayed:[Z


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;[Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$finalResponse:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$ttsPlayed:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 8
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d2\u5634 TTS \u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u964d\u7ea7\u5230\u539f\u5382 TTS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$100(Ljava/lang/String;)V

    .line 172
    # getter for: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u63d2\u5634 TTS \u5931\u8d25: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$finalResponse:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$ttsPlayed:[Z

    aput-boolean v4, v1, v4

    .line 177
    const/16 v1, 0x9c4

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->val$finalResponse:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit16 v2, v2, 0xfa

    add-int/lit16 v2, v2, 0x5dc

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 178
    .local v0, "estimatedMs":I
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2$1;

    invoke-direct {v2, p0}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u63d2\u5634 TTS \u64ad\u653e\u6210\u529f: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$100(Ljava/lang/String;)V

    .line 163
    # getter for: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63d2\u5634 TTS \u64ad\u653e\u6210\u529f: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 166
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    .line 167
    return-void
.end method
