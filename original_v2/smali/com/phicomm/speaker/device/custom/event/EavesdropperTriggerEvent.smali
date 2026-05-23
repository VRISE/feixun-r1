.class public Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;
.super Ljava/lang/Object;
.source "EavesdropperTriggerEvent.java"


# instance fields
.field private confidence:F

.field private timestamp:J

.field private userSpeech:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 5
    .param p1, "userSpeech"    # Ljava/lang/String;
    .param p2, "confidence"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->userSpeech:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->confidence:F

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->timestamp:J

    .line 16
    return-void
.end method


# virtual methods
.method public getConfidence()F
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->confidence:F

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->timestamp:J

    return-wide v0
.end method

.method public getUserSpeech()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->userSpeech:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EavesdropperTriggerEvent{speech=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->userSpeech:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;->confidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
