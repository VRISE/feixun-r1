.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "TripleClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TripleClickProcessor"


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 3
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private openBluetooth()V
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 86
    const-string v0, "TripleClickProcessor"

    const-string v1, "openBluetooth"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openBlueToothStatus()V

    .line 88
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .registers 3

    .prologue
    .line 34
    const-string v0, "TripleClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->resetBlueToothStatus()V

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 38
    return-void
.end method

.method public onDormantStatus()V
    .registers 4

    .prologue
    .line 66
    const-string v0, "TripleClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 68
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->openBluetooth()V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onMusicStatus()V
    .registers 3

    .prologue
    .line 20
    const-string v0, "TripleClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 22
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 23
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 24
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->openBluetooth()V

    .line 25
    return-void
.end method

.method public onNetStatus()V
    .registers 3

    .prologue
    .line 29
    const-string v0, "TripleClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public onReadyStatus()V
    .registers 3

    .prologue
    .line 59
    const-string v0, "TripleClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 61
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->openBluetooth()V

    .line 62
    return-void
.end method

.method public onRecordingStatus()V
    .registers 3

    .prologue
    .line 53
    const-string v0, "TripleClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->onSpeechHandingStatus()V

    .line 55
    return-void
.end method

.method public onRingingStatus()V
    .registers 3

    .prologue
    .line 77
    const-string v0, "TripleClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 80
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 81
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->openBluetooth()V

    .line 82
    return-void
.end method

.method public onSpeechHandingStatus()V
    .registers 3

    .prologue
    .line 42
    const-string v0, "TripleClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 47
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->openBluetooth()V

    .line 48
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 49
    return-void
.end method
