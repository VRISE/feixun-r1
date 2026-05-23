.class public Lcom/phicomm/speaker/device/custom/match/MatchProcessor;
.super Ljava/lang/Object;
.source "MatchProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "MatchProcessor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field protected mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field protected mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

.field private mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 30
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    .line 32
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 33
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 34
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 35
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 36
    return-void
.end method

.method private dispatchReadyStatus(Ljava/lang/Object;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 118
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onRecordingStatus(Ljava/lang/Object;)V

    .line 124
    :goto_b
    return-void

    .line 119
    :cond_c
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isSpeechHandling(Lcom/unisound/vui/engine/ANTEngine;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 120
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onSpeechHandingStatus(Ljava/lang/Object;)V

    goto :goto_b

    .line 122
    :cond_18
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onReadyStatus(Ljava/lang/Object;)V

    goto :goto_b
.end method

.method private isRecordingStatus(Lcom/unisound/vui/engine/ANTEngine;)Z
    .registers 3
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 127
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    return v0
.end method

.method private isRingingStatus()Z
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    sget-object v1, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->ALARM_PLAYING:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

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
    .param p1, "mANTEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 131
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

.method private onRingingStatus(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 109
    const-string v0, "MatchProcessor"

    const-string v1, "onRingingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopRinging()V

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 113
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method private processPhijoinConnectNet(Ljava/lang/Object;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 66
    .local v0, "status":I
    const-string v1, "MatchProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPhijoinConnectNet device status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->isRingingStatus()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 68
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onRingingStatus(Ljava/lang/Object;)V

    .line 100
    :goto_27
    return-void

    .line 71
    :cond_28
    packed-switch v0, :pswitch_data_86

    :pswitch_2b
    goto :goto_27

    .line 73
    :pswitch_2c
    const-string v1, "MatchProcessor"

    const-string v2, "onReadyStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->dispatchReadyStatus(Ljava/lang/Object;)V

    goto :goto_27

    .line 77
    :pswitch_37
    const-string v1, "MatchProcessor"

    const-string v2, "onMusicStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 79
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->exitMusicDomain()V

    .line 80
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 81
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_27

    .line 84
    :pswitch_51
    const-string v1, "MatchProcessor"

    const-string v2, "onNetStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 87
    :pswitch_59
    const-string v1, "MatchProcessor"

    const-string v2, "onBlueToothStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 89
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 90
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 91
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_27

    .line 97
    :pswitch_73
    const-string v1, "MatchProcessor"

    const-string v2, "onDormantStatus"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 99
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    goto :goto_27

    .line 71
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_37
        :pswitch_51
        :pswitch_59
        :pswitch_2b
        :pswitch_73
    .end packed-switch
.end method

.method private startPhijoinConnectNet(Ljava/lang/Object;)V
    .registers 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 57
    const-string v0, "MatchProcessor"

    const-string v1, "startPhijoinConnectNet"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openPhijoinConnectNetStatus(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 62
    return-void
.end method

.method private turnOffWakeupLightsIfNeeds()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isRecognition()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 156
    :cond_10
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 158
    :cond_15
    return-void
.end method


# virtual methods
.method public onReadyStatus(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 149
    const-string v0, "MatchProcessor"

    const-string v1, "onReadyStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 151
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public onReceive(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 45
    sget v0, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_MATCH_PHIJOIN_CONFIG:I

    if-ne p2, v0, :cond_e

    .line 46
    const-string v0, "MatchProcessor"

    const-string v1, "onReceive phijoin config"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p4}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->processPhijoinConnectNet(Ljava/lang/Object;)V

    .line 49
    :cond_e
    return-void
.end method

.method public onRecordingStatus(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 144
    const-string v0, "MatchProcessor"

    const-string v1, "onRecordingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->onSpeechHandingStatus(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onSpeechHandingStatus(Ljava/lang/Object;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 135
    const-string v0, "MatchProcessor"

    const-string v1, "onSpeechHandingStatus"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_match_net:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->cancelRecognize()V

    .line 140
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->startPhijoinConnectNet(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public register()V
    .registers 3

    .prologue
    .line 39
    const-string v0, "MatchProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const/high16 v1, 0x40000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 41
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 52
    const-string v0, "MatchProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 54
    return-void
.end method
