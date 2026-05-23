.class public abstract Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;
.super Ljava/lang/Object;
.source "PhicommClickProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommStatusListener;


# instance fields
.field private deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field protected mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field protected mContext:Landroid/content/Context;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field protected mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field protected mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 4
    .param p1, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 20
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 21
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 23
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 24
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 25
    return-void
.end method

.method private dispatchDeviceStatus(I)V
    .registers 3
    .param p1, "deviceStatus"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isRingingStatus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onRingingStatus()V

    .line 61
    :goto_9
    return-void

    .line 43
    :cond_a
    packed-switch p1, :pswitch_data_22

    :pswitch_d
    goto :goto_9

    .line 45
    :pswitch_e
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchReadyStatus()V

    goto :goto_9

    .line 48
    :pswitch_12
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchMusicStatus()V

    goto :goto_9

    .line 51
    :pswitch_16
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onNetStatus()V

    goto :goto_9

    .line 54
    :pswitch_1a
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onBlueToothStatus()V

    goto :goto_9

    .line 60
    :pswitch_1e
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onDormantStatus()V

    goto :goto_9

    .line 43
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_d
        :pswitch_1e
    .end packed-switch
.end method

.method private dispatchMusicStatus()V
    .registers 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onMusicStatus()V

    .line 81
    return-void
.end method

.method private dispatchReadyStatus()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 71
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onRecordingStatus()V

    .line 77
    :goto_b
    return-void

    .line 72
    :cond_c
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 73
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onSpeechHandingStatus()V

    goto :goto_b

    .line 75
    :cond_18
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onReadyStatus()V

    goto :goto_b
.end method

.method private isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z
    .registers 3
    .param p1, "mANTEngine2"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    return v0
.end method

.method private isRingingStatus()Z
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z
    .registers 3
    .param p1, "mANTEngine2"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 88
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public final onTriggered()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->deviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->dispatchDeviceStatus(I)V

    .line 29
    return-void
.end method

.method public turnOffWakeupLightsIfNeeds()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 34
    :cond_10
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 36
    :cond_15
    return-void
.end method
