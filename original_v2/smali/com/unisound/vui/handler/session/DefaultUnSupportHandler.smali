.class public Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    const-string v0, "session_unsupport"

    iput-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->sessionName:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->playCancelTTS:Z

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    return-void
.end method

.method private a(ZZLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->resetErrorTime()V

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->playCancelTTS:Z

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0, p3}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    :goto_2b
    if-eqz p2, :cond_32

    iget-object v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_32
    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->reset()V

    goto :goto_2b
.end method


# virtual methods
.method protected a(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    const-string v0, "DefaultUnSupportHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->increaseErrorTime()V

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getError()Lnluparser/scheme/Error;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lnluparser/scheme/Error;->getCode()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    const-string v1, "unsupportedDomain"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget v0, Lcom/unisound/vui/transport/R$array;->tts_unsupport_answer:I

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_43
    invoke-interface {p2, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    :goto_49
    return-void

    :cond_4a
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/vui/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/unisound/vui/transport/R$string;->tts_net_is_weak:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_5f
    const-string v1, "bluetooth_error"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_70
    const-string v1, ""

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    const-string v1, "-63551"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    :cond_88
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x83b

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_49

    :cond_92
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->getErrorTime()I

    move-result v1

    if-lez v1, :cond_a3

    sget v0, Lcom/unisound/vui/transport/R$array;->tts_unsupport_answer:I

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_a3
    const-string v1, "2040"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    sget v0, Lcom/unisound/vui/transport/R$array;->tts_no_voice_input:I

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_b6
    sget v0, Lcom/unisound/vui/transport/R$array;->tts_no_voice_input:I

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_43
.end method

.method protected a(Lnluparser/scheme/NLU;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "DefaultUnSupportHandler"

    const-string v1, "acceptInboundEvent0: unsupport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cn.yunzhisheng.pushserver.show"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "cn.yunzhisheng.wechat"

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1f
    const-string v0, "DefaultUnSupportHandler"

    const-string v1, "acceptInboundEvent0: pushserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method protected synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->a(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method public cancelAsrEventTriggered(Lnluparser/scheme/LocalASR;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 7
    .param p1, "localASR"    # Lnluparser/scheme/LocalASR;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->hasActiveHandlers()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->eventReceived:Z

    if-nez v0, :cond_10

    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->fireActiveInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :cond_10
    invoke-virtual {p0, v3}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->mark(Z)V

    sget v0, Lcom/unisound/vui/transport/R$string;->tts_cancel:I

    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->a(ZZLjava/lang/String;)V

    goto :goto_8
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    const-string v0, "DefaultUnSupportHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-doInterrupt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; errorTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->errorTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->eventReceived:Z

    if-eqz v0, :cond_2d

    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->a(Ljava/lang/String;)V

    :cond_2d
    return-void
.end method

.method protected doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v1, Lcom/unisound/vui/util/ExoConstants$b;

    invoke-direct {v1}, Lcom/unisound/vui/util/ExoConstants$b;-><init>()V

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method

.method protected synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->a(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected initPriority()V
    .registers 2

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->setPriority(I)V

    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->playCancelTTS:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->playCancelTTS:Z

    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->reset()V

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    :goto_e
    return v0

    :cond_f
    iget-boolean v1, p0, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->eventReceived:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;->a(ZZLjava/lang/String;)V

    goto :goto_e

    :cond_18
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_e
.end method
