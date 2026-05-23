.class public Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;
.super Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;
.source "PhicommBindStatusHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mContext:Landroid/content/Context;

.field private final mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 28
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->queryDeviceBoundStatus()V

    return-void
.end method

.method private clearWakeupWord()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 77
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->stopWakeup()V

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$array;->default_wakeup_words:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->updateWakeupWord(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method private onBound()V
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v1, "device is bound"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceBindState(Landroid/content/Context;Z)V

    .line 57
    return-void
.end method

.method private onUnbound()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 60
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v1, "device is unbound"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceBindState(Landroid/content/Context;Z)V

    .line 62
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->clearWakeupWord()V

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isASR()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 73
    :goto_27
    return-void

    .line 67
    :cond_28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_27

    .line 71
    :cond_41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_27
.end method

.method private queryDeviceBoundStatus()V
    .registers 5

    .prologue
    .line 85
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    const-string v2, "query device bound status"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_7
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/ant/device/netmodule/DeviceInfoUtils;->isDeviceBounded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 88
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onBound()V

    .line 96
    :goto_1e
    return-void

    .line 91
    :cond_1f
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onUnbound()V

    .line 92
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/phicomm/speaker/device/R$string;->tts_not_bind:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_1e

    .line 93
    :catch_30
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryDeviceBoundStatus error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method


# virtual methods
.method public enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 51
    invoke-super {p0, p1}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->enterASR(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 52
    return-void
.end method

.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    instance-of v0, p2, Lcom/unisound/vui/transport/out/BindStatusEvent;

    if-nez v0, :cond_8

    .line 34
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    .line 40
    .end local p2    # "msg":Ljava/lang/Object;
    :goto_7
    return-void

    .line 35
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_8
    check-cast p2, Lcom/unisound/vui/transport/out/BindStatusEvent;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/unisound/vui/transport/out/BindStatusEvent;->getData()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 36
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onBound()V

    goto :goto_7

    .line 38
    :cond_18
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;->onUnbound()V

    goto :goto_7
.end method
