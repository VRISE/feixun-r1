.class public Lcom/phicomm/speaker/device/data/PhicommIotResponse;
.super Ljava/lang/Object;
.source "PhicommIotResponse.java"


# instance fields
.field private message:Ljava/lang/String;

.field private status:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->status:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->message:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "status"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->status:I

    .line 28
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->text:Ljava/lang/String;

    .line 44
    return-void
.end method
