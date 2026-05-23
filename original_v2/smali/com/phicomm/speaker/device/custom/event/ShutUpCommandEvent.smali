.class public Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;
.super Ljava/lang/Object;
.source "ShutUpCommandEvent.java"


# instance fields
.field private durationMs:J

.field private timestamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .param p1, "durationMs"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->timestamp:J

    .line 13
    iput-wide p1, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->durationMs:J

    .line 14
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .registers 3

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->durationMs:J

    return-wide v0
.end method

.method public getResumeTime()J
    .registers 5

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->timestamp:J

    iget-wide v2, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->durationMs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShutUpCommandEvent{duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->durationMs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s, resume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/event/ShutUpCommandEvent;->getResumeTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
