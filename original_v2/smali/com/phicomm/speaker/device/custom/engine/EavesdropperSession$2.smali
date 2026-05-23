.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;
.super Ljava/lang/Object;
.source "EavesdropperSession.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startASRRecognition([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->access$202(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;Z)Z

    .line 150
    const-string v0, "EavesdropperSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifySessionEnded()V

    .line 152
    return-void
.end method

.method public onResult(Ljava/lang/String;F)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "confidence"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isProcessingASR:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->access$202(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;Z)Z

    .line 138
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 139
    const-string v0, "EavesdropperSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fire EavesdropperTriggerEvent: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->pipeline:Lcom/unisound/vui/engine/ANTPipeline;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->access$300(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;

    invoke-direct {v1, p1, p2}, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 144
    :goto_3a
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifySessionEnded()V

    .line 145
    return-void

    .line 142
    :cond_3e
    const-string v0, "EavesdropperSession"

    const-string v1, "ASR empty/junk, no event fired"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method
