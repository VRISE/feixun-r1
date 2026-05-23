.class public Lcom/phicomm/speaker/device/custom/speech/SpeechManager;
.super Ljava/lang/Object;
.source "SpeechManager.java"


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 2
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 12
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 43
    return-void
.end method

.method public cancelRecognize()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 28
    return-void
.end method

.method public cancelTTS()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 38
    return-void
.end method

.method public doWakeupSuccess()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0xc81

    const-string v2, "{\"local_asr\":[{\"engine_mode\":\"wakeup\",\"result_type\":\"full\",\"recognition_result\":\"  \u5c0f\u8baf\u5c0f\u8baf   \",\"score\":6.08,\"utteranceTime\":1230,\"outRecordingTime\":212210,\"delayTime\":280}]}"

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 47
    return-void
.end method

.method public exitMusicDomain()V
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 51
    return-void
.end method

.method public playTTS(I)V
    .registers 6
    .param p1, "ttsID"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    new-instance v1, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    const-string v2, "playTTS"

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->write(Ljava/lang/Object;)V

    .line 34
    :cond_1e
    return-void
.end method

.method public startRecognize()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->enterASR()V

    .line 24
    return-void
.end method

.method public startWakeup()V
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 16
    return-void
.end method

.method public stopRinging()V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 59
    return-void
.end method

.method public stopSession()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doActiveInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 55
    return-void
.end method

.method public stopWakeup()V
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 20
    return-void
.end method
