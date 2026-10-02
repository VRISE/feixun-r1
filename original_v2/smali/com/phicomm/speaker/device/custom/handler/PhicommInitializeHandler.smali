.class public Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;


# static fields
.field private static final FX_KEY_OTA_MODE:Ljava/lang/String; = "fxotamode"

.field private static final FX_OTA_MODE_VALUE_SILENT:Ljava/lang/String; = "silent"

.field private static final FX_SYSTEM_PRIVATE:Ljava/lang/String; = "FXSystemPrivate"

.field private static final MAIN_WAKEUP_WORD:Ljava/lang/String; = "\u4f60\u597d\u5c0f\u8fea"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFristBoot:Z

.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field private mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

.field private mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

.field private mSysPrivateManager:Landroid/os/SysPrivateManager;

.field private matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

.field private udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    return-void
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->forceNormalModeAtBoot()V

    return-void
.end method

.method private forceNormalModeAtBoot()V
    .registers 6

    .prologue
    .line 206
    :try_start_0
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 207
    .local v0, "status":I
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BOOT] persisted device status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v2, 0x5

    if-eq v0, v2, :cond_2b

    .line 209
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "[BOOT] normal mode, nothing to do"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "status":I
    :goto_2a
    return-void

    .line 212
    .restart local v0    # "status":I
    :cond_2b
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "[BOOT] device restored in DORMANT, force exit to normal mode"

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    new-instance v3, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;-><init>(Ljava/lang/Boolean;)V

    invoke-interface {v2, v3}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 216
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 217
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 219
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 220
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "[BOOT] force normal mode done, wake word restored"

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_2a

    .line 221
    .end local v0    # "status":I
    :catch_63
    move-exception v1

    .line 222
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v3, "forceNormalModeAtBoot error: "

    invoke-static {v2, v3, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a
.end method

.method private initCustomMatchProcess()V
    .registers 4

    .prologue
    .line 324
    new-instance v0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    .line 325
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->register()V

    .line 326
    return-void
.end method

.method private initCustomUDIDProcess()V
    .registers 4

    .prologue
    .line 319
    new-instance v0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->register()V

    .line 321
    return-void
.end method

.method private initCustomWakeupWord()V
    .registers 9

    .prologue
    .line 231
    const-string v1, "\u4f60\u597d\u5c0f\u8fea"

    .line 234
    .local v1, "customWakeupWord":Ljava/lang/String;
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 235
    .local v0, "currentWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 236
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom wakeup word already set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_28
    return-void

    .line 240
    :cond_29
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting custom wakeup word: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v3, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDefaultWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    :try_start_52
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->setWakeupWord(Landroid/content/Context;Ljava/util/List;)V

    .line 253
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 254
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5, v3}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_61} :catch_88

    .line 259
    :try_start_61
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    new-instance v6, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v6, v1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6f} :catch_a2

    .line 264
    :goto_6f
    :try_start_6f
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Custom wakeup word set successfully: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_87} :catch_88

    goto :goto_28

    .line 265
    :catch_88
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/Throwable;
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set custom wakeup word: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    .line 260
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_a2
    move-exception v4

    .line 261
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_a3
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fireUserEventTriggered(ChangeWakeupWordEvent) failed, ignoring: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_bb} :catch_88

    goto :goto_6f
.end method

.method private initDeviceStatusListener()V
    .registers 2

    .prologue
    .line 314
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 315
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V

    .line 316
    return-void
.end method

.method private initKeyEventProcess()V
    .registers 5

    .prologue
    .line 329
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    new-instance v1, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;-><init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->register()V

    .line 331
    return-void
.end method

.method private initMultiPersonaWakeupWords()V
    .registers 11

    .prologue
    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v3, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "\u4f60\u597d\u5c0f\u8fea"

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPassivePersonas()Ljava/util/List;

    move-result-object v5

    .line 282
    .local v5, "passivePersonas":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .line 283
    .local v0, "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 284
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 289
    .end local v0    # "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    :cond_2c
    new-instance v4, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .end local v3    # "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_36
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/unisound/vui/util/UserPerferenceUtil;->setWakeupWord(Landroid/content/Context;Ljava/util/List;)V

    .line 296
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 297
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7, v4}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 300
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_74

    const-string v2, ""
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4d} :catch_97

    .line 302
    .local v2, "firstWakeupWord":Ljava/lang/String;
    :goto_4d
    :try_start_4d
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v7

    new-instance v8, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v8, v2}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_5b} :catch_7d

    .line 307
    :goto_5b
    :try_start_5b
    sget-object v7, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Multi-persona wakeup words initialized: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v2    # "firstWakeupWord":Ljava/lang/String;
    :goto_73
    return-void

    .line 300
    :cond_74
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    goto :goto_4d

    .line 303
    .restart local v2    # "firstWakeupWord":Ljava/lang/String;
    :catch_7d
    move-exception v6

    .line 304
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fireUserEventTriggered(ChangeWakeupWordEvent) failed, ignoring: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_96} :catch_97

    goto :goto_5b

    .line 308
    .end local v2    # "firstWakeupWord":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_97
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v8, "Failed to initialize multi-persona wakeup words"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73
.end method

.method private initPhicommBusiness()V
    .registers 5

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initDeviceStatusListener()V

    .line 172
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initKeyEventProcess()V

    .line 173
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomUDIDProcess()V

    .line 174
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomMatchProcess()V

    .line 175
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->startMonitorStatus()V

    .line 177
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomWakeupWord()V

    .line 180
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initMultiPersonaWakeupWords()V

    .line 183
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->setContext(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->restorePersonaState(Landroid/content/Context;)V

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$2;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$2;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method

.method private onDormantStatusChanged(Z)V
    .registers 11
    .param p1, "isDormant"    # Z

    .prologue
    .line 334
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v6, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentDormantStatus"

    if-eqz p1, :cond_25

    const-string v0, "1"

    :goto_b
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    const-string v7, "modifyDormantStatus"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8, v6}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    return-void

    .line 335
    :cond_25
    const-string v0, "0"

    goto :goto_b
.end method

.method private playInitDoneTips()V
    .registers 7

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    const-string v2, "FXSystemPrivate"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SysPrivateManager;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    .line 71
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    if-eqz v1, :cond_3c

    const-string v1, "silent"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    const-string v3, "fxotamode"

    invoke-virtual {v2, v3}, Landroid/os/SysPrivateManager;->getBootProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 72
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v2, "playInitDoneTips, silent update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    const-string v2, "fxotamode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/SysPrivateManager;->setBootProp(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 103
    :goto_33
    return-void

    .line 77
    :catch_34
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v2, "\u67e5\u8be2\u9759\u9ed8\u5347\u7ea7\u72b6\u6001\u51fa\u9519: "

    invoke-static {v1, v2, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3c
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 81
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    const-string v2, ""

    sget v3, Lcom/phicomm/speaker/device/R$raw;->bootloader_completed:I

    new-instance v4, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    goto :goto_33

    .line 101
    :cond_56
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$raw;->bootloader_completed:I

    invoke-virtual {v1, v2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(I)V

    .line 102
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    goto :goto_33
.end method

.method private switchASRModeType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    .line 61
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 62
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 63
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 64
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->playInitDoneTips()V

    .line 65
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onDeviceStatusChanged(II)V
    .registers 10
    .param p1, "prevStatus"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x5

    .line 133
    if-ne p1, v2, :cond_16

    if-eq p2, v2, :cond_16

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 136
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 138
    :cond_16
    if-eq p1, v2, :cond_22

    if-ne p2, v2, :cond_22

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 140
    invoke-direct {p0, v6}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 142
    :cond_22
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->isSystemBootloader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 143
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "system boot finish, ignore"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->setSystemBootloader(Landroid/content/Context;Z)V

    .line 164
    :cond_36
    :goto_36
    return-void

    .line 147
    :cond_37
    if-nez p2, :cond_5c

    if-ne p1, v3, :cond_5c

    .line 148
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_stop_match_net:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 152
    :cond_42
    :goto_42
    if-eq p1, v4, :cond_68

    if-ne p2, v4, :cond_68

    .line 153
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 local \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    .line 159
    :cond_50
    :goto_50
    if-ne p1, v2, :cond_77

    if-eq p2, v3, :cond_77

    if-eq p2, v2, :cond_77

    .line 160
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_36

    .line 149
    :cond_5c
    if-nez p2, :cond_42

    if-ne p1, v4, :cond_42

    .line 150
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_close_bluetooth_for_phicomm:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    goto :goto_42

    .line 155
    :cond_68
    if-ne p1, v4, :cond_50

    if-eq p2, v4, :cond_50

    .line 156
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u975e\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 mix \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    goto :goto_50

    .line 161
    :cond_77
    if-ne p1, v3, :cond_36

    if-eq p2, v2, :cond_36

    if-eq p2, v3, :cond_36

    .line 162
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_36
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v3, 0x0

    .line 120
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingEnd, isFristBoot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 122
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_2c

    .line 123
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 124
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 125
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    .line 128
    :cond_2c
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 108
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTTSEventPlayingStart, isFristBoot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 111
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_27

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 114
    :cond_27
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method
