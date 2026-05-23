.class public Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
.super Ljava/lang/Object;
.source "PhicommSettingHandler.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/setting/SettingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;,
        Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PhicommSettingHandler"


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mMsgCenter:Landroid/os/MessageDispatchManager;

.field private final mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    .line 38
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    .line 39
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 40
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Lcom/unisound/vui/engine/ANTEngine;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p1, "x1"    # Lnluparser/scheme/NLU;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeAmbientLight(Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 216
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeAmbientLight()V

    .line 217
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 218
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->onAmbientLightStatusChanged(Z)V

    .line 220
    :cond_16
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_close_ambientlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private closeBluetoothMode(Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_close_bluetooth:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "tts":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1c

    .line 195
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeBlueToothStatus()V

    .line 200
    :goto_18
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 201
    return-void

    .line 197
    :cond_1c
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_cant_help_you:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private closeSoundEffect(Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeSoundEffect()V

    .line 234
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_close_soundeffect:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method private onAmbientLightStatusChanged(Z)V
    .registers 11
    .param p1, "isAmbientLightOn"    # Z

    .prologue
    .line 240
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v6, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentAmbientLightStatus"

    if-eqz p1, :cond_25

    const-string v0, "1"

    :goto_b
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    const-string v7, "modifyAmbientLightStatus"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v6}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    return-void

    .line 241
    :cond_25
    const-string v0, "0"

    goto :goto_b
.end method

.method private openAmbientLight(Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 205
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openAmbientLight()V

    .line 206
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 207
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->onAmbientLightStatusChanged(Z)V

    .line 209
    :cond_16
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_open_ambientlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private openBluetoothMode(Lnluparser/scheme/NLU;)V
    .registers 6
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "tts":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    .line 185
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredTropleClickEvent()V

    .line 189
    :goto_18
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 190
    return-void

    .line 187
    :cond_1c
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/phicomm/speaker/device/R$string;->tts_open_bluetooth:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private openSleepMode(Lnluparser/scheme/NLU;)V
    .registers 4
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredDoubleClickEvent()V

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_start_dormant:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method private openSoundEffect(Lnluparser/scheme/NLU;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openSoundEffect()V

    .line 227
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_open_soundeffect:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    .registers 5
    .param p1, "nlu"    # Lnluparser/scheme/NLU;
    .param p2, "ttsData"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Llogreport/FullLog;

    invoke-direct {v1, p1, p2}, Llogreport/FullLog;-><init>(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 321
    return-void
.end method

.method private sendPhicommSmartHomeCommand(Ljava/lang/Object;)V
    .registers 11
    .param p1, "nluData"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-static {p1}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "dataJson":Ljava/lang/String;
    const-string v4, "PhicommSettingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPhicommSmartHomeCommand: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p1

    .line 253
    check-cast v3, Lnluparser/scheme/NLU;

    .line 254
    .local v3, "nlu":Lnluparser/scheme/NLU;
    new-instance v2, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    invoke-direct {v2, p0, v3}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;-><init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;)V

    .line 255
    .local v2, "iotReceiver":Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
    new-instance v1, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;-><init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;Lnluparser/scheme/NLU;)V

    .line 256
    .local v1, "ioTRunnable":Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;
    invoke-virtual {v2, v1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->setIoTRunnable(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;)V

    .line 257
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/high16 v5, 0x1000000

    invoke-virtual {v4, v2, v5}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 258
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/high16 v5, 0x800000

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 259
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    return-void
.end method

.method private unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    if-eqz v0, :cond_9

    .line 313
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    invoke-virtual {v0, p1}, Landroid/os/MessageDispatchManager;->unregisterMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;)V

    .line 315
    :cond_9
    return-void
.end method


# virtual methods
.method public handleOrder(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 46
    const v0, 0xffff

    .line 47
    .local v0, "c":C
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    .line 67
    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_64

    .line 78
    const-string v1, "PhicommSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOrder: type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_2b
    return-void

    .line 49
    :sswitch_2c
    const-string v1, "ACT_PHICOMM_BACKUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50
    const/4 v0, 0x3

    .line 51
    goto :goto_a

    .line 55
    :sswitch_36
    const-string v1, "ACT_PHICOMM_OTA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 56
    const/4 v0, 0x2

    .line 57
    goto :goto_a

    .line 61
    :sswitch_40
    const-string v1, "ACT_PHICOMM_VERSION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 62
    const/4 v0, 0x1

    goto :goto_a

    .line 69
    :pswitch_4a
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommVersion()V

    goto :goto_2b

    .line 72
    :pswitch_4e
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommOTA()V

    goto :goto_2b

    .line 75
    :pswitch_52
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendphicommBackup()V

    goto :goto_2b

    .line 47
    :sswitch_data_56
    .sparse-switch
        -0x7ace482f -> :sswitch_2c
        -0x65e6c8b3 -> :sswitch_36
        0x4aac1c89 -> :sswitch_40
    .end sparse-switch

    .line 67
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
    .end packed-switch
.end method

.method public handleOrder(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 85
    const v0, 0xffff

    .line 86
    .local v0, "c":C
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_ac

    .line 136
    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_ce

    .line 162
    const-string v1, "PhicommSettingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOrder: type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .end local p2    # "data":Ljava/lang/Object;
    :goto_2b
    return-void

    .line 88
    .restart local p2    # "data":Ljava/lang/Object;
    :sswitch_2c
    const-string v1, "ACT_PHICOMM_OPEN_AMBIENTLIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 89
    const/4 v0, 0x2

    .line 90
    goto :goto_a

    .line 94
    :sswitch_36
    const-string v1, "ACT_PHICOMM_OPEN_SOUNDEFFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 95
    const/4 v0, 0x4

    .line 96
    goto :goto_a

    .line 100
    :sswitch_40
    const-string v1, "ACT_PHICOMM_CLOSE_AMBIENTLIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 101
    const/4 v0, 0x3

    .line 102
    goto :goto_a

    .line 106
    :sswitch_4a
    const-string v1, "ACT_PHICOMM_OPEN_SLEEP_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 107
    const/16 v0, 0x8

    .line 108
    goto :goto_a

    .line 112
    :sswitch_55
    const-string v1, "ACT_PHICOMM_CLOSE_SOUNDEFFECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 113
    const/4 v0, 0x5

    .line 114
    goto :goto_a

    .line 118
    :sswitch_5f
    const-string v1, "ACT_PHICOMM_CLOSE_BLUETOOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 119
    const/4 v0, 0x7

    .line 120
    goto :goto_a

    .line 124
    :sswitch_69
    const-string v1, "ACT_PHICOMM_OPEN_BLUETOOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    const/4 v0, 0x6

    .line 126
    goto :goto_a

    .line 130
    :sswitch_73
    const-string v1, "ACT_PHICOMM_SMART_HOME"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 131
    const/4 v0, 0x1

    goto :goto_a

    .line 138
    :pswitch_7d
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendPhicommSmartHomeCommand(Ljava/lang/Object;)V

    goto :goto_2b

    .line 141
    :pswitch_81
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openAmbientLight(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 144
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_87
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeAmbientLight(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 147
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_8d
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openSoundEffect(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 150
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_93
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeSoundEffect(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 153
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_99
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openBluetoothMode(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 156
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_9f
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->closeBluetoothMode(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 159
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_a5
    check-cast p2, Lnluparser/scheme/NLU;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->openSleepMode(Lnluparser/scheme/NLU;)V

    goto :goto_2b

    .line 86
    nop

    :sswitch_data_ac
    .sparse-switch
        -0x74a4001c -> :sswitch_2c
        -0x5b8a8be6 -> :sswitch_36
        -0x2f7883ec -> :sswitch_40
        -0xc4259ef -> :sswitch_4a
        0x2ad1b1ea -> :sswitch_55
        0x494b57b8 -> :sswitch_5f
        0x4c59e5e8 -> :sswitch_69
        0x70ded844 -> :sswitch_73
    .end sparse-switch

    .line 136
    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_81
        :pswitch_87
        :pswitch_8d
        :pswitch_93
        :pswitch_99
        :pswitch_9f
        :pswitch_a5
    .end packed-switch
.end method

.method public sendPhicommOTA()V
    .registers 6

    .prologue
    .line 173
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendPhicommOTA"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 175
    return-void
.end method

.method public sendPhicommVersion()V
    .registers 6

    .prologue
    .line 168
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendPhicommVersion"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 170
    return-void
.end method

.method public sendphicommBackup()V
    .registers 6

    .prologue
    .line 178
    const-string v0, "PhicommSettingHandler"

    const-string v1, "sendphicommBackup"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mMsgCenter:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x4000

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 180
    return-void
.end method
