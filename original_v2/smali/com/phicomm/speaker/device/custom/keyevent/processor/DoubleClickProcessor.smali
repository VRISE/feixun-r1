.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "DoubleClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DoubleClickProcessor"


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 3
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method private stopWakeup()V
    .registers 4

    .prologue
    .line 76
    const-string v0, "DoubleClickProcessor"

    const-string v1, "stop wakeup"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnDormantLight()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 81
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 82
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 37
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 41
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 42
    return-void
.end method

.method public onDormantStatus()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onMusicStatus()V
    .registers 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 22
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 27
    return-void
.end method

.method public onNetStatus()V
    .registers 3

    .prologue
    .line 31
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onReadyStatus()V
    .registers 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 65
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 67
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 68
    return-void
.end method

.method public onRecordingStatus()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->onSpeechHandingStatus()V

    .line 60
    return-void
.end method

.method public onRingingStatus()V
    .registers 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 87
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 91
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 92
    return-void
.end method

.method public onSpeechHandingStatus()V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 47
    const-string v0, "DoubleClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopSession()V

    .line 49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 53
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;->stopWakeup()V

    .line 54
    return-void
.end method
