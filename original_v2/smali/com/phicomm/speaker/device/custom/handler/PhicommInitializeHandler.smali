.class public Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;


# static fields
.field private static final FX_KEY_OTA_MODE:Ljava/lang/String; = "fxotamode"

.field private static final FX_OTA_MODE_VALUE_SILENT:Ljava/lang/String; = "silent"

.field private static final FX_SYSTEM_PRIVATE:Ljava/lang/String; = "FXSystemPrivate"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFristBoot:Z

.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field private mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

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
    .line 42
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

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 50
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

.method private initCustomMatchProcess()V
    .registers 4

    .prologue
    .line 302
    new-instance v0, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    .line 303
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->matchProcessor:Lcom/phicomm/speaker/device/custom/match/MatchProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/match/MatchProcessor;->register()V

    .line 304
    return-void
.end method

.method private initCustomUDIDProcess()V
    .registers 4

    .prologue
    .line 297
    new-instance v0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->udidProcessor:Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->register()V

    .line 299
    return-void
.end method

.method private initCustomWakeupWord()V
    .registers 9

    .prologue
    .line 203
    const-string v1, "\u4e8c\u5e08\u5144"

    .line 206
    .local v1, "customWakeupWord":Ljava/lang/String;
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "currentWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_29

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 208
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

    .line 240
    :goto_28
    return-void

    .line 212
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

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v3, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDefaultWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    :try_start_52
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->setWakeupWord(Landroid/content/Context;Ljava/util/List;)V

    .line 225
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 226
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5, v3}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_61} :catch_88

    .line 231
    :try_start_61
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    new-instance v6, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v6, v1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6f} :catch_a2

    .line 236
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

    .line 237
    :catch_88
    move-exception v2

    .line 238
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

    .line 232
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_a2
    move-exception v4

    .line 233
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
    .line 292
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 293
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V

    .line 294
    return-void
.end method

.method private initEavesdropperEngine()V
    .registers 5

    .prologue
    .line 286
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    .line 287
    .local v0, "pipeline":Lcom/unisound/vui/engine/ANTPipeline;
    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v1, v2, v0, v3}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTPipeline;Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .line 288
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v2, "Eavesdropper engine initialized (will start on dormant)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private initKeyEventProcess()V
    .registers 5

    .prologue
    .line 307
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    new-instance v1, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventController;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;-><init>(Lcom/unisound/vui/custom/event/interaction/key/KeyEventController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    .line 308
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mKeyEventProcessor:Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/PhicommKeyEventProcessor;->register()V

    .line 309
    return-void
.end method

.method private initMultiPersonaWakeupWords()V
    .registers 11

    .prologue
    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPassivePersonas()Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, "passivePersonas":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    .line 251
    .local v0, "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 252
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getWakeupWord()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 257
    .end local v0    # "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    :cond_27
    new-instance v4, Ljava/util/ArrayList;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 261
    .end local v3    # "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "newWakeupWords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_31
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/unisound/vui/util/UserPerferenceUtil;->setWakeupWord(Landroid/content/Context;Ljava/util/List;)V

    .line 264
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 265
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7, v4}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 268
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6f

    const-string v2, ""
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_48} :catch_92

    .line 270
    .local v2, "firstWakeupWord":Ljava/lang/String;
    :goto_48
    :try_start_48
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v7}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v7

    new-instance v8, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v8, v2}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_56} :catch_78

    .line 275
    :goto_56
    :try_start_56
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

    .line 279
    .end local v2    # "firstWakeupWord":Ljava/lang/String;
    :goto_6e
    return-void

    .line 268
    :cond_6f
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, v7

    goto :goto_48

    .line 271
    .restart local v2    # "firstWakeupWord":Ljava/lang/String;
    :catch_78
    move-exception v6

    .line 272
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
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_91} :catch_92

    goto :goto_56

    .line 276
    .end local v2    # "firstWakeupWord":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_92
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v7, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v8, "Failed to initialize multi-persona wakeup words"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e
.end method

.method private initPhicommBusiness()V
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initDeviceStatusListener()V

    .line 177
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initKeyEventProcess()V

    .line 178
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomUDIDProcess()V

    .line 179
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomMatchProcess()V

    .line 180
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->startMonitorStatus()V

    .line 182
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initCustomWakeupWord()V

    .line 185
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initMultiPersonaWakeupWords()V

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->setContext(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->restorePersonaState(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initEavesdropperEngine()V

    .line 196
    return-void
.end method

.method private onDormantStatusChanged(Z)V
    .registers 11
    .param p1, "isDormant"    # Z

    .prologue
    .line 312
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v6, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentDormantStatus"

    if-eqz p1, :cond_37

    const-string v0, "1"

    :goto_b
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
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

    .line 317
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v0, :cond_36

    .line 318
    if-eqz p1, :cond_3a

    .line 319
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "Dormant entered \u2192 start Eavesdropper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->start()V

    .line 326
    :cond_36
    :goto_36
    return-void

    .line 313
    :cond_37
    const-string v0, "0"

    goto :goto_b

    .line 322
    :cond_3a
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "Dormant exited \u2192 stop Eavesdropper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->stop()V

    goto :goto_36
.end method

.method private playInitDoneTips()V
    .registers 7

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    const-string v2, "FXSystemPrivate"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SysPrivateManager;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    .line 69
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

    .line 70
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v2, "playInitDoneTips, silent update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSysPrivateManager:Landroid/os/SysPrivateManager;

    const-string v2, "fxotamode"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/SysPrivateManager;->setBootProp(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 101
    :goto_33
    return-void

    .line 75
    :catch_34
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v2, "\u67e5\u8be2\u9759\u9ed8\u5347\u7ea7\u72b6\u6001\u51fa\u9519: "

    invoke-static {v1, v2, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3c
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 79
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    const-string v2, ""

    sget v3, Lcom/phicomm/speaker/device/R$raw;->bootloader_completed:I

    new-instance v4, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(Ljava/lang/String;ILcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V

    goto :goto_33

    .line 99
    :cond_56
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$raw;->bootloader_completed:I

    invoke-virtual {v1, v2}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playBeepSound(I)V

    .line 100
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    goto :goto_33
.end method

.method private switchASRModeType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->setASROption(ILjava/lang/Object;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    .line 59
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 60
    new-instance v0, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;-><init>(Lcom/unisound/vui/engine/ANTEngine;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    .line 61
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->playInitDoneTips()V

    .line 63
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

    .line 138
    if-ne p1, v2, :cond_16

    if-eq p2, v2, :cond_16

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 141
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 143
    :cond_16
    if-eq p1, v2, :cond_22

    if-ne p2, v2, :cond_22

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    .line 145
    invoke-direct {p0, v6}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->onDormantStatusChanged(Z)V

    .line 147
    :cond_22
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->isSystemBootloader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 148
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "system boot finish, ignore"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/phicomm/speaker/device/Receiver/MessageReceiver;->setSystemBootloader(Landroid/content/Context;Z)V

    .line 169
    :cond_36
    :goto_36
    return-void

    .line 152
    :cond_37
    if-nez p2, :cond_5c

    if-ne p1, v3, :cond_5c

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_stop_match_net:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    .line 157
    :cond_42
    :goto_42
    if-eq p1, v4, :cond_68

    if-ne p2, v4, :cond_68

    .line 158
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 local \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    .line 164
    :cond_50
    :goto_50
    if-ne p1, v2, :cond_77

    if-eq p2, v3, :cond_77

    if-eq p2, v2, :cond_77

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_36

    .line 154
    :cond_5c
    if-nez p2, :cond_42

    if-ne p1, v4, :cond_42

    .line 155
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    sget v1, Lcom/phicomm/speaker/device/R$string;->tts_close_bluetooth_for_phicomm:I

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->playTTS(I)V

    goto :goto_42

    .line 160
    :cond_68
    if-ne p1, v4, :cond_50

    if-eq p2, v4, :cond_50

    .line 161
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "-----\u5df2\u5207\u6362\u6210\u975e\u84dd\u7259\u6a21\u5f0f, ASR \u6362\u6210 mix \u6a21\u5f0f-----"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->switchASRModeType(I)V

    goto :goto_50

    .line 166
    :cond_77
    if-ne p1, v3, :cond_36

    if-eq p2, v2, :cond_36

    if-eq p2, v3, :cond_36

    .line 167
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    goto :goto_36
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v3, 0x0

    .line 118
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

    .line 119
    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 120
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_2c

    .line 121
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->startWakeup()V

    .line 123
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V

    .line 128
    :cond_2c
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mEavesdropperEngine:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 129
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->TAG:Ljava/lang/String;

    const-string v1, "Eavesdropper running, force stopWakeup after TTS to keep dormant"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 133
    :cond_44
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 106
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

    .line 108
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 109
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z

    if-eqz v0, :cond_27

    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mSpeechManager:Lcom/phicomm/speaker/device/custom/speech/SpeechManager;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/speech/SpeechManager;->stopWakeup()V

    .line 112
    :cond_27
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method
