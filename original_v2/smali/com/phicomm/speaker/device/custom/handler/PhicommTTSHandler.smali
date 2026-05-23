.class public Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;
.super Lcom/unisound/vui/engine/ANTDuplexHandler;
.source "PhicommTTSHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTDuplexHandler;-><init>()V

    return-void
.end method

.method private isPhicommTTSEventFormat(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 18
    instance-of v0, p1, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    if-eqz v0, :cond_14

    const-string v0, "playTTS"

    check-cast p1, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    .end local p1    # "msg":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
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
    .line 10
    invoke-direct {p0, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;->isPhicommTTSEventFormat(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 11
    check-cast p2, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;

    .end local p2    # "msg":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/phicomm/speaker/device/custom/tts/PhicommEvent;->getTtsContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;->playTTS(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 15
    :goto_f
    return-void

    .line 13
    .restart local p2    # "msg":Ljava/lang/Object;
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTDuplexHandler;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    goto :goto_f
.end method
