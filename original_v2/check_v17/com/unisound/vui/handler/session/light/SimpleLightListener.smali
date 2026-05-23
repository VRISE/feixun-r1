.class public Lcom/unisound/vui/handler/session/light/SimpleLightListener;
.super Ljava/lang/Object;
.source "SimpleLightListener.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/light/LightListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterrupt()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onNetConnected()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public onNetDisconnected()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public onRecognizeStart()V
    .registers 1

    .prologue
    .line 15
    return-void
.end method

.method public onRecognizeStop()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onTTSEnd()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public onWakeupResume()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public onWakeupStop()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public onWakeupSuccess(I)V
    .registers 2
    .param p1, "angle"    # I

    .prologue
    .line 11
    return-void
.end method
