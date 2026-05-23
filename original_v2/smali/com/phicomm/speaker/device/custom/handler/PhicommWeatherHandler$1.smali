.class Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;
.super Ljava/lang/Object;
.source "PhicommWeatherHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic val$evt:Lnluparser/scheme/NLU;

.field final synthetic val$finalCity:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$finalCity:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$evt:Lnluparser/scheme/NLU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 88
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$finalCity:Ljava/lang/String;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->fetchWeatherText(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "text":Ljava/lang/String;
    const-string v2, "PhicommWeatherHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "weather TTS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->content:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    :try_start_25
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 93
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 94
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler$1;->val$evt:Lnluparser/scheme/NLU;

    invoke-virtual {v2, v3, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_3b} :catch_3c

    .line 99
    :goto_3b
    return-void

    .line 96
    :catch_3c
    move-exception v0

    .line 97
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "PhicommWeatherHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTTS failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method
