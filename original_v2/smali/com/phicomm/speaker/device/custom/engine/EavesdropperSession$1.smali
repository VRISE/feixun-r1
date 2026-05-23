.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;
.super Ljava/lang/Object;
.source "EavesdropperSession.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/ANTEngine;)V
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
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIdleTimeout()V
    .registers 3

    .prologue
    .line 60
    const-string v0, "EavesdropperSession"

    const-string v1, "VAD idle timeout, releasing MIC and resuming wakeup"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    # invokes: Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->onSessionEnded()V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->access$100(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;)V

    .line 62
    return-void
.end method

.method public onSpeechTriggered([BJ)V
    .registers 8
    .param p1, "audioBuffer"    # [B
    .param p2, "speechDurationMs"    # J

    .prologue
    .line 49
    const-string v0, "EavesdropperSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Speech triggered, duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    # invokes: Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startASRRecognition([B)V
    invoke-static {v0, p1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;[B)V

    .line 51
    return-void
.end method

.method public onStateChanged(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V
    .registers 6
    .param p1, "oldState"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .param p2, "newState"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .prologue
    .line 55
    const-string v0, "EavesdropperSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAD state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method
