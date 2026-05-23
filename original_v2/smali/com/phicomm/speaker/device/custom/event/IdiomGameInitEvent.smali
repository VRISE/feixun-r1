.class public Lcom/phicomm/speaker/device/custom/event/IdiomGameInitEvent;
.super Ljava/lang/Object;
.source "IdiomGameInitEvent.java"


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/IdiomGameInitEvent;->timestamp:J

    .line 12
    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .registers 3

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/event/IdiomGameInitEvent;->timestamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    const-string v0, "IdiomGameInitEvent{}"

    return-object v0
.end method
