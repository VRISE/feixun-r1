.class public Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "PhicommInterceptHandler.java"


# instance fields
.field private mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

.field private playTTS:Z


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/light/LightListener;)V
    .registers 3
    .param p1, "lightListener"    # Lcom/unisound/vui/handler/session/light/LightListener;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 18
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStop()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 56
    :cond_c
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 24
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 45
    :cond_d
    :goto_d
    return v0

    .line 27
    :cond_e
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 28
    const-string v2, "doFinishAllInterrupt"

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 29
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 30
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStart()V

    .line 31
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/phicomm/speaker/device/R$string;->tts_net_is_weak:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 32
    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 33
    goto :goto_d

    .line 34
    :cond_36
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 35
    const-string v2, "doFinishAllInterrupt"

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 36
    iput-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->playTTS:Z

    .line 37
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;->mLightListener:Lcom/unisound/vui/handler/session/light/LightListener;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/light/LightListener;->onRecognizeStart()V

    .line 38
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/phicomm/speaker/device/R$string;->tts_not_bind:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 39
    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    move v0, v1

    .line 40
    goto :goto_d

    .line 41
    :cond_5e
    invoke-static {}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->getInstance()Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 44
    invoke-static {}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->getInstance()Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/utils/MediaPlayerUtils;->stop()V

    move v0, v1

    .line 45
    goto :goto_d
.end method
