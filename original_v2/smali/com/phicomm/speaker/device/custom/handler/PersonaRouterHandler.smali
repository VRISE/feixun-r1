.class public Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PersonaRouterHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptInboundEvent0(Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;)Z
    .registers 3
    .param p1, "evt"    # Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;->getPersonaId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->acceptInboundEvent0(Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;)Z

    move-result v0

    return v0
.end method

.method public eventReceived(Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 9
    .param p1, "evt"    # Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;->getPersonaId()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "personaId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;->getWakeupWord()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "wakeupWord":Ljava/lang/String;
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DEBUG] Received persona activation: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' \u2192 \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->activatePersona(Ljava/lang/String;)V

    .line 33
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    const-string v4, "[DEBUG] PersonaManager.activatePersona called"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByPersonaId(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 37
    .local v0, "config":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-nez v0, :cond_59

    .line 38
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persona config not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_58
    :goto_58
    return-void

    .line 42
    :cond_59
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DEBUG] Found persona config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivationTTS()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f3

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivationTTS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f3

    .line 46
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DEBUG] Playing activation TTS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivationTTS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getActivationTTS()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 62
    :goto_a8
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persona activated successfully: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    .line 68
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->isAutoInit()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 69
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-init triggered for persona: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    new-instance v4, Lcom/phicomm/speaker/device/custom/event/IdiomGameInitEvent;

    invoke-direct {v4}, Lcom/phicomm/speaker/device/custom/event/IdiomGameInitEvent;-><init>()V

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto/16 :goto_58

    .line 49
    :cond_f3
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DEBUG] No activation TTS configured for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    check-cast p1, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->eventReceived(Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 77
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;->setPriority(I)V

    .line 78
    return-void
.end method
