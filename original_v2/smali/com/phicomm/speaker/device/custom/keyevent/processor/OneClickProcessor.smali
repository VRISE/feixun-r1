.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;
.super Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.source "OneClickProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneClickProcessor"


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 3
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onBlueToothStatus()V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 42
    const-string v0, "OneClickProcessor"

    const-string v1, "onBlueToothStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 45
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 46
    return-void
.end method

.method public onDormantStatus()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v0, "OneClickProcessor"

    const-string v1, "onDormantStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_stop_dormant:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onMusicStatus()V
    .registers 4

    .prologue
    .line 23
    const-string v0, "OneClickProcessor"

    const-string v1, "onMusicStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 29
    return-void
.end method

.method public onNetStatus()V
    .registers 4

    .prologue
    .line 33
    const-string v0, "OneClickProcessor"

    const-string v1, "onNetStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeConnectNetStatus()V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 37
    return-void
.end method

.method public onReadyStatus()V
    .registers 3

    .prologue
    .line 67
    const-string v0, "OneClickProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 69
    return-void
.end method

.method public onRecordingStatus()V
    .registers 3

    .prologue
    .line 59
    const-string v0, "OneClickProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelAll()V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 62
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->doWakeupSuccess()V

    .line 63
    return-void
.end method

.method public onRingingStatus()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "OneClickProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 86
    return-void
.end method

.method public onSpeechHandingStatus()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "OneClickProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 52
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelAll()V

    .line 54
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 55
    return-void
.end method
