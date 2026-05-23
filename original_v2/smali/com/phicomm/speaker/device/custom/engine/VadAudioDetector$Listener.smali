.class public interface abstract Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;
.super Ljava/lang/Object;
.source "VadAudioDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onIdleTimeout()V
.end method

.method public abstract onSpeechTriggered([BJ)V
.end method

.method public abstract onStateChanged(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V
.end method
