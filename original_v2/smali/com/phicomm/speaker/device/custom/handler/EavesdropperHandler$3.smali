.class Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;
.super Ljava/lang/Object;
.source "EavesdropperHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$finalResponse:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;->this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;->val$finalResponse:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 199
    # getter for: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS estimated done after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$3;->val$finalResponse:Ljava/lang/String;

    .line 200
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chars,trigger setTTSPlaying(false)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "TTS \u4f30\u8ba1\u64ad\u653e\u5b8c\u6210"

    # invokes: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$100(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 204
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    .line 205
    return-void
.end method
