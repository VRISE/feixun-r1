.class public Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;
.super Lcom/unisound/vui/handler/UpdateWakeupWordHandler;
.source "PhicommWakeupWordChangedHandler.java"


# static fields
.field public static final UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    const-class v0, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;

    const-string v1, "UPDATE_WAKEUPWORD"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 59
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 61
    :cond_1d
    return-void
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 47
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 48
    :cond_1a
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    .line 52
    :goto_1e
    return v0

    .line 50
    :cond_1f
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 52
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v1, 0x1

    .line 24
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    .line 25
    :cond_1b
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    .line 31
    :goto_1f
    return v0

    .line 27
    :cond_20
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v1

    .line 28
    goto :goto_1f

    .line 30
    :cond_2c
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_update_wakeup_word_succ:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    move v0, v1

    .line 31
    goto :goto_1f
.end method

.method public onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 37
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 38
    :cond_1a
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/UpdateWakeupWordHandler;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    .line 41
    :goto_1e
    return v0

    .line 40
    :cond_1f
    sget v0, Lcom/phicomm/speaker/device/R$string;->tts_update_wakeup_word_fail:I

    const/4 v1, -0x1

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSString(IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method public updateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->fireActiveInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 17
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;->UPDATE_WAKEUPWORD:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->updateWakeupWord(Ljava/util/List;)V

    .line 19
    return-void
.end method
