.class public Lcom/phicomm/speaker/device/custom/api/CustomApiManager;
.super Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;
.source "CustomApiManager.java"


# static fields
.field public static final AMBIENT_LIGHT_OFF:Ljava/lang/String; = "0"

.field public static final AMBIENT_LIGHT_ON:Ljava/lang/String; = "1"

.field public static final DORMANT_OFF:Ljava/lang/String; = "0"

.field public static final DORMANT_ON:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_LIGHT_OFF:Ljava/lang/String; = "1"

.field private static final TYPE_LIGHT_ON:Ljava/lang/String; = "0"

.field public static final TYPE_RINGING:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mListenerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/api/CustomApiListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

.field private phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p3, "phicommPlayer"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;-><init>()V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    .line 56
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 58
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .line 59
    const-string v0, "selfDefinedManager"

    invoke-static {v0, p0}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->associateSessionCenter(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/SessionExecuteHandler;)V

    .line 60
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 61
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 62
    return-void
.end method

.method private closeAmbientLight()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 560
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 561
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->closeAmbientLight()V

    .line 562
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 564
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_close_ambientlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 565
    return v3
.end method

.method private closeSleepMode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 543
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_d

    .line 547
    :goto_c
    return v2

    .line 546
    :cond_d
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredOneClickEvent()V

    goto :goto_c
.end method

.method private getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;
    .registers 6
    .param p1, "statusCode"    # I

    .prologue
    .line 511
    new-instance v0, Lcom/unisound/ant/device/service/ActionResponse;

    invoke-direct {v0}, Lcom/unisound/ant/device/service/ActionResponse;-><init>()V

    .line 512
    .local v0, "response":Lcom/unisound/ant/device/service/ActionResponse;
    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionStatus(I)V

    .line 513
    invoke-static {p1}, Lcom/unisound/ant/device/bean/ActionStatus;->getStateDetail(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setDetailInfo(Ljava/lang/String;)V

    .line 514
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/service/ActionResponse;->setActionTimestamp(Ljava/lang/String;)V

    .line 516
    return-object v0
.end method

.method private getDormantStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 496
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_e

    .line 497
    const-string v0, "1"

    .line 499
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "0"

    goto :goto_d
.end method

.method private handleAuditionRinging(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, -0x1

    .line 360
    .local v5, "status":I
    :try_start_1
    const-string v6, "alarmFile"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "alarmFile":Ljava/lang/Object;
    if-eqz v1, :cond_40

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingingFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 362
    const/4 v5, 0x0

    .line 363
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 364
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-eqz v3, :cond_40

    .line 365
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .line 366
    .local v4, "listener":Lcom/phicomm/speaker/device/custom/api/CustomApiListener;
    const/4 v7, 0x1

    invoke-interface {v4, v7, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiListener;->onCustomEvent(ILjava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_38

    goto :goto_27

    .line 370
    .end local v1    # "alarmFile":Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    .end local v4    # "listener":Lcom/phicomm/speaker/device/custom/api/CustomApiListener;
    :catch_38
    move-exception v2

    .line 371
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v7, "handleAuditionRinging error : "

    invoke-static {v6, v7, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_40
    const-string v6, "audition"

    invoke-direct {p0, v6, v5}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 374
    return-void
.end method

.method private handleAuditionTtsSpeaker(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 379
    .local v2, "status":I
    :try_start_1
    const-string v3, "ttsSpeaker"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "speaker":Ljava/lang/String;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audition tts speaker, speaker is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 382
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->listeningTtsSpeaker(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_3b

    move-result v2

    .line 389
    .end local v1    # "speaker":Ljava/lang/String;
    :goto_2d
    const-string v3, "auditionTtsSpeaker"

    invoke-direct {p0, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 390
    return-void

    .line 384
    .restart local v1    # "speaker":Ljava/lang/String;
    :cond_33
    :try_start_33
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "audition tts speaker, but speaker is null"

    invoke-static {v3, v4}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_2d

    .line 386
    .end local v1    # "speaker":Ljava/lang/String;
    :catch_3b
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleAuditionTtsSpeaker error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method

.method private handleCheckDeviceState()V
    .registers 5

    .prologue
    .line 231
    const-string v0, "checkDeviceStateManager"

    const/4 v1, 0x0

    new-instance v2, Lcom/unisound/ant/device/bean/DevicePlayingType;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mPhicommPlayer:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->getDevicePlayingType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/unisound/ant/device/bean/DevicePlayingType;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method private handleGetAmbientLightStatus()V
    .registers 4

    .prologue
    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "currentAmbientLightStatus"

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "1"

    :goto_11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v1, "getAmbientLightStatus"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 355
    return-void

    .line 353
    :cond_1b
    const-string v1, "0"

    goto :goto_11
.end method

.method private handleGetDeviceInfo()V
    .registers 4

    .prologue
    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ttsPlayer"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getUserTTSModelType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v1, "wakeUpWord"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getActuallyMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string v1, "getDeviceInfoManager"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 462
    return-void
.end method

.method private handleGetDormantStatus()V
    .registers 4

    .prologue
    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "currentDormantStatus"

    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->getDormantStatus()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v1, "getDormantStatus"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 316
    return-void
.end method

.method private handleGetLightingStatus()V
    .registers 4

    .prologue
    .line 452
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 453
    .local v0, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "isLighting"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDormantLightState(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->parseDormantLightStatus(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v1, "getLightingStatusManager"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 455
    return-void
.end method

.method private handleModifyAmbientLightStatus(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 320
    .local v1, "isAmbientLight":Z
    const/4 v3, -0x1

    .line 321
    .local v3, "status":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v2, "resContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    const-string v5, "isAmbientLight"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 324
    .local v4, "switchAmbientLight":Ljava/lang/Object;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyAmbientLightStatus switchAmbientLight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz v4, :cond_42

    .line 326
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_33

    .line 327
    const/4 v1, 0x0

    .line 329
    :cond_33
    if-eqz v1, :cond_59

    .line 330
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->openAmbientLight()I

    move-result v3

    .line 331
    if-nez v3, :cond_48

    .line 332
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_42} :catch_50

    .line 348
    .end local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_42
    :goto_42
    const-string v5, "modifyAmbientLightStatus"

    invoke-direct {p0, v5, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 349
    return-void

    .line 334
    .restart local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_48
    :try_start_48
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_42

    .line 345
    .end local v4    # "switchAmbientLight":Ljava/lang/Object;
    :catch_50
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v6, "modifyAmbientLightStatus error : "

    invoke-static {v5, v6, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 337
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "switchAmbientLight":Ljava/lang/Object;
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->closeAmbientLight()I

    move-result v3

    .line 338
    if-nez v3, :cond_67

    .line 339
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 341
    :cond_67
    const-string v5, "currentAmbientLightStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6e} :catch_50

    goto :goto_42
.end method

.method private handleModifyDormantLightStatus(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 269
    .local v2, "status":I
    :try_start_1
    const-string v3, "isLighting"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "isLighting":Ljava/lang/Object;
    if-eqz v1, :cond_f

    .line 271
    check-cast v1, Ljava/lang/String;

    .end local v1    # "isLighting":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processChangeLightingStatus(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_15

    move-result v2

    .line 276
    :cond_f
    :goto_f
    const-string v3, "modifyDormantLightStatus"

    invoke-direct {p0, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 277
    return-void

    .line 273
    :catch_15
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleModifyDormantLightStatus error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private handleModifyDormantStatus(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 281
    .local v1, "isDormant":Z
    const/4 v3, -0x1

    .line 282
    .local v3, "status":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 284
    .local v2, "resContent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    const-string v5, "isDormant"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 285
    .local v4, "switchSleepMode":Ljava/lang/Object;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "modifyDormantStatus switchSleepMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/phicomm/speaker/device/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-eqz v4, :cond_42

    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_33

    .line 288
    const/4 v1, 0x0

    .line 290
    :cond_33
    if-eqz v1, :cond_59

    .line 291
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->openSleepMode()I

    move-result v3

    .line 292
    if-nez v3, :cond_48

    .line 293
    const-string v5, "currentDormantStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_42} :catch_50

    .line 309
    .end local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_42
    :goto_42
    const-string v5, "modifyDormantStatus"

    invoke-direct {p0, v5, v3, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 310
    return-void

    .line 295
    .restart local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_48
    :try_start_48
    const-string v5, "currentDormantStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_50

    goto :goto_42

    .line 306
    .end local v4    # "switchSleepMode":Ljava/lang/Object;
    :catch_50
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v6, "modifyDormantStatus error : "

    invoke-static {v5, v6, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 298
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "switchSleepMode":Ljava/lang/Object;
    :cond_59
    :try_start_59
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->closeSleepMode()I

    move-result v3

    .line 299
    if-nez v3, :cond_67

    .line 300
    const-string v5, "currentDormantStatus"

    const-string v6, "0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 302
    :cond_67
    const-string v5, "currentDormantStatus"

    const-string v6, "1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6e} :catch_50

    goto :goto_42
.end method

.method private handleModifyTtsPlayer(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 249
    .local v1, "status":I
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v3

    .line 250
    .local v3, "ttsPlaying":Z
    sget-object v4, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTTSPlaying = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-nez v3, :cond_3e

    .line 253
    :try_start_21
    const-string v4, "ttsPlayer"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "ttsPlayer":Ljava/lang/Object;
    if-eqz v2, :cond_2f

    .line 255
    check-cast v2, Ljava/lang/String;

    .end local v2    # "ttsPlayer":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processSwitchTTSSpeaker(Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2e} :catch_35

    move-result v1

    .line 263
    :cond_2f
    :goto_2f
    const-string v4, "modifyTtsPlayer"

    invoke-direct {p0, v4, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 264
    return-void

    .line 257
    :catch_35
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v5, "handleModifyTtsPlayer error : "

    invoke-static {v4, v5, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3e
    const/16 v1, -0x65

    goto :goto_2f
.end method

.method private handleModifyWakeUpWord(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, -0x1

    .line 237
    .local v1, "status":I
    :try_start_1
    const-string v3, "wakeUpWord"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 238
    .local v2, "wakeUpWord":Ljava/lang/Object;
    if-eqz v2, :cond_f

    .line 239
    check-cast v2, Ljava/lang/String;

    .end local v2    # "wakeUpWord":Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->processChangeWakeupWord(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_15

    move-result v1

    .line 244
    :cond_f
    :goto_f
    const-string v3, "modifyWakeUpWord"

    invoke-direct {p0, v3, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 245
    return-void

    .line 241
    :catch_15
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "handleModifyWakeUpWord error : "

    invoke-static {v3, v4, v0}, Lcom/phicomm/speaker/device/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private handleResetDevice()V
    .registers 3

    .prologue
    .line 225
    sget-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v1, "handleResetDevice: "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->resetDevice()V

    .line 227
    const-string v0, "resetDevice"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method private handleSelfDefinedCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V
    .registers 8
    .param p1, "command"    # Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/JsonObject;

    const-class v4, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;

    .line 94
    .local v2, "selfDefinationRequestInfo":Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getOperationType()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "operationType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 96
    sget-object v3, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    const-string v4, "operationType is null, ignore"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_1f
    return-void

    .line 99
    :cond_20
    const v0, 0xffff

    .line 100
    .local v0, "c":C
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_126

    .line 180
    :cond_2a
    :goto_2a
    packed-switch v0, :pswitch_data_15c

    .line 221
    :goto_2d
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->getActionResponse(I)Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->reponseCloudCommandWithoutAck(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto :goto_1f

    .line 102
    :sswitch_3e
    const-string v3, "modifyWakeUpWord"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 103
    const/4 v0, 0x1

    .line 104
    goto :goto_2a

    .line 108
    :sswitch_48
    const-string v3, "resetDevice"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 109
    const/16 v0, 0xa

    .line 110
    goto :goto_2a

    .line 114
    :sswitch_53
    const-string v3, "auditionTtsSpeaker"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 115
    const/16 v0, 0x9

    .line 116
    goto :goto_2a

    .line 120
    :sswitch_5e
    const-string v3, "modifyDormantStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 121
    const/4 v0, 0x4

    .line 122
    goto :goto_2a

    .line 126
    :sswitch_68
    const-string v3, "getDormantStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 127
    const/4 v0, 0x5

    .line 128
    goto :goto_2a

    .line 132
    :sswitch_72
    const-string v3, "modifyDormantLightStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 133
    const/4 v0, 0x3

    .line 134
    goto :goto_2a

    .line 138
    :sswitch_7c
    const-string v3, "getAmbientLightStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 139
    const/4 v0, 0x7

    .line 140
    goto :goto_2a

    .line 144
    :sswitch_86
    const-string v3, "modifyAmbientLightStatus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 145
    const/4 v0, 0x6

    .line 146
    goto :goto_2a

    .line 150
    :sswitch_90
    const-string v3, "audition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 151
    const/16 v0, 0x8

    .line 152
    goto :goto_2a

    .line 156
    :sswitch_9b
    const-string v3, "getDeviceInfoManager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 157
    const/16 v0, 0xc

    .line 158
    goto :goto_2a

    .line 162
    :sswitch_a6
    const-string v3, "modifyTtsPlayer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 163
    const/4 v0, 0x2

    .line 164
    goto/16 :goto_2a

    .line 168
    :sswitch_b1
    const-string v3, "checkDeviceStateManager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 169
    const/4 v0, 0x0

    .line 170
    goto/16 :goto_2a

    .line 174
    :sswitch_bc
    const-string v3, "getLightingStatusManager"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 175
    const/16 v0, 0xb

    goto/16 :goto_2a

    .line 182
    :pswitch_c8
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleCheckDeviceState()V

    goto/16 :goto_2d

    .line 185
    :pswitch_cd
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyWakeUpWord(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 188
    :pswitch_d6
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyTtsPlayer(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 191
    :pswitch_df
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyDormantLightStatus(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 194
    :pswitch_e8
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyDormantStatus(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 197
    :pswitch_f1
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetDormantStatus()V

    goto/16 :goto_2d

    .line 200
    :pswitch_f6
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleModifyAmbientLightStatus(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 203
    :pswitch_ff
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetAmbientLightStatus()V

    goto/16 :goto_2d

    .line 206
    :pswitch_104
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleAuditionRinging(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 209
    :pswitch_10d
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/SelfDefinationRequestInfo;->getContent()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleAuditionTtsSpeaker(Ljava/util/Map;)V

    goto/16 :goto_2d

    .line 212
    :pswitch_116
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleResetDevice()V

    goto/16 :goto_2d

    .line 215
    :pswitch_11b
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetLightingStatus()V

    goto/16 :goto_2d

    .line 218
    :pswitch_120
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleGetDeviceInfo()V

    goto/16 :goto_2d

    .line 100
    nop

    :sswitch_data_126
    .sparse-switch
        -0x6b4a949d -> :sswitch_3e
        -0x48774f7b -> :sswitch_48
        -0x45d18747 -> :sswitch_53
        -0x3d9ddb27 -> :sswitch_5e
        -0x13195443 -> :sswitch_68
        -0xfad13df -> :sswitch_72
        -0x15aaf1a -> :sswitch_7c
        0x835294a -> :sswitch_86
        0x3a2daa4d -> :sswitch_90
        0x48a62233 -> :sswitch_9b
        0x59049f1a -> :sswitch_a6
        0x7005de7a -> :sswitch_b1
        0x760e75f9 -> :sswitch_bc
    .end sparse-switch

    .line 180
    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_c8
        :pswitch_cd
        :pswitch_d6
        :pswitch_df
        :pswitch_e8
        :pswitch_f1
        :pswitch_f6
        :pswitch_ff
        :pswitch_104
        :pswitch_10d
        :pswitch_116
        :pswitch_11b
        :pswitch_120
    .end packed-switch
.end method

.method private isWakeupWordValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "wakeupWord"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_16

    .line 480
    const/4 v0, 0x1

    .line 483
    :goto_15
    return v0

    .line 482
    :cond_16
    sget-object v0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change wakeup word error,new wakeup word is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private listeningTtsSpeaker(Ljava/lang/String;)I
    .registers 7
    .param p1, "speaker"    # Ljava/lang/String;

    .prologue
    .line 394
    const v0, 0xffff

    .line 395
    .local v0, "c":C
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_72

    .line 427
    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_88

    .line 444
    sget-object v2, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audition tts speaker, but speaker is wrong, speaker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v2, -0x191

    .line 448
    :goto_27
    return v2

    .line 397
    :sswitch_28
    const-string v2, "CHILDREN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 398
    const/4 v0, 0x3

    .line 399
    goto :goto_a

    .line 403
    :sswitch_32
    const-string v2, "LZL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 404
    const/4 v0, 0x5

    .line 405
    goto :goto_a

    .line 409
    :sswitch_3c
    const-string v2, "MALE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 410
    const/4 v0, 0x2

    .line 411
    goto :goto_a

    .line 415
    :sswitch_46
    const-string v2, "SWEET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 416
    const/4 v0, 0x4

    .line 417
    goto :goto_a

    .line 421
    :sswitch_50
    const-string v2, "FEMALE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 422
    const/4 v0, 0x1

    goto :goto_a

    .line 429
    :pswitch_5a
    const-string v1, "system/unisound/audio/tts_audition/tts_speaker_xiaowen.wav"

    .line 447
    .local v1, "speakerFile":Ljava/lang/String;
    :goto_5c
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->play(Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    .line 448
    const/4 v2, 0x0

    goto :goto_27

    .line 432
    .end local v1    # "speakerFile":Ljava/lang/String;
    :pswitch_66
    const-string v1, "system/unisound/audio/tts_audition/tts_speaker_xiaofeng.wav"

    .line 433
    .restart local v1    # "speakerFile":Ljava/lang/String;
    goto :goto_5c

    .line 435
    .end local v1    # "speakerFile":Ljava/lang/String;
    :pswitch_69
    const-string v1, "system/unisound/audio/tts_audition/tts_speaker_tangtang.wav"

    .line 436
    .restart local v1    # "speakerFile":Ljava/lang/String;
    goto :goto_5c

    .line 438
    .end local v1    # "speakerFile":Ljava/lang/String;
    :pswitch_6c
    const-string v1, "system/unisound/audio/tts_audition/tts_speaker_xuanxuan.wav"

    .line 439
    .restart local v1    # "speakerFile":Ljava/lang/String;
    goto :goto_5c

    .line 441
    .end local v1    # "speakerFile":Ljava/lang/String;
    :pswitch_6f
    const-string v1, "system/unisound/audio/tts_audition/tts_speaker_lingling.wav"

    .line 442
    .restart local v1    # "speakerFile":Ljava/lang/String;
    goto :goto_5c

    .line 395
    :sswitch_data_72
    .sparse-switch
        -0x6e6fb201 -> :sswitch_28
        0x1287e -> :sswitch_32
        0x23fe0d -> :sswitch_3c
        0x4ba36d0 -> :sswitch_46
        0x7b638f4c -> :sswitch_50
    .end sparse-switch

    .line 427
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_66
        :pswitch_69
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method private openAmbientLight()I
    .registers 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->getAmbientLightState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 552
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->openAmbientLight()V

    .line 553
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/PhicommPerferenceUtil;->setAmbientLightState(Landroid/content/Context;Z)V

    .line 555
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_open_ambientlight:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method private openSleepMode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    .line 539
    :goto_c
    return v2

    .line 538
    :cond_d
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->triggeredDoubleClickEvent()V

    goto :goto_c
.end method

.method private parseDormantLightStatus(Z)Ljava/lang/String;
    .registers 3
    .param p1, "dormantLightState"    # Z

    .prologue
    .line 492
    if-eqz p1, :cond_5

    const-string v0, "0"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "1"

    goto :goto_4
.end method

.method private processChangeLightingStatus(Ljava/lang/String;)I
    .registers 6
    .param p1, "lighting"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 520
    sget-object v1, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processChangeLightingStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_27

    .line 522
    const/16 v0, -0x1f5

    .line 531
    :goto_26
    return v0

    .line 524
    :cond_27
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 525
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnDormantLight()V

    .line 526
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    goto :goto_26

    .line 529
    :cond_3b
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 530
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDormantLightState(Landroid/content/Context;Z)V

    goto :goto_26
.end method

.method private processChangeWakeupWord(Ljava/lang/String;)I
    .registers 5
    .param p1, "wakeupWord"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->isWakeupWordValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 466
    const/16 v1, -0x12d

    .line 475
    :goto_8
    return v1

    .line 468
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 471
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 472
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 473
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 474
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v1

    new-instance v2, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {v2, p1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 475
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private processSwitchTTSSpeaker(Ljava/lang/String;)I
    .registers 4
    .param p1, "ttsSpeaker"    # Ljava/lang/String;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-static {v0, v1, p1}, Lcom/phicomm/speaker/device/utils/TTSUtils;->switchSpeaker(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method private responseToClient(Ljava/lang/String;I)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->responseToClient(Ljava/lang/String;ILjava/lang/Object;)V

    .line 504
    return-void
.end method

.method private responseToClient(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "content"    # Ljava/lang/Object;

    .prologue
    .line 507
    invoke-static {}, Lcom/unisound/ant/device/sessionlayer/SessionRegister;->getUpDownMessageManager()Lcom/unisound/ant/device/message/UpDownMessageManager;

    move-result-object v0

    const-string v1, "selfDefinedManager"

    const/4 v2, 0x0

    const-string v3, "selfDefinedManager"

    const-string v4, "selfDefinedManager"

    new-instance v5, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;

    invoke-direct {v5, p1, p2, p3}, Lcom/unisound/ant/device/bean/SelfDefinationResponseInfo;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/ant/device/message/UpDownMessageManager;->onReportStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 508
    return-void
.end method


# virtual methods
.method public addListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 66
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-nez v0, :cond_14

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 88
    :goto_5
    return-void

    .line 83
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->handleSelfDefinedCommand(Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;)V

    goto :goto_5

    .line 81
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public removeListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/api/CustomApiListener;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/api/CustomApiListener;>;"
    if-eqz v0, :cond_d

    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    :cond_d
    return-void
.end method
