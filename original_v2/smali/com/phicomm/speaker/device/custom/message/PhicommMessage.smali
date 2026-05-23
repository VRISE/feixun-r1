.class public Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
.super Ljava/lang/Object;
.source "PhicommMessage.java"


# instance fields
.field private data:Landroid/os/Parcelable;

.field private msgId:I

.field private replyType:I

.field private subReplyType:I

.field private subType:I

.field private type:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "type2"    # I
    .param p2, "subType2"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 15
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 16
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "type2"    # I
    .param p2, "subType2"    # I
    .param p3, "msgId2"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 20
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 21
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 22
    return-void
.end method

.method public constructor <init>(IIILandroid/os/Parcelable;)V
    .registers 5
    .param p1, "type2"    # I
    .param p2, "subType2"    # I
    .param p3, "msgId2"    # I
    .param p4, "data2"    # Landroid/os/Parcelable;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 26
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 27
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 28
    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 29
    return-void
.end method

.method public constructor <init>(IIILandroid/os/Parcelable;II)V
    .registers 7
    .param p1, "type2"    # I
    .param p2, "subType2"    # I
    .param p3, "msgId2"    # I
    .param p4, "data2"    # Landroid/os/Parcelable;
    .param p5, "replyType2"    # I
    .param p6, "subReplyType2"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 33
    iput p2, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 34
    iput p3, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 35
    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 36
    iput p5, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    .line 37
    iput p6, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    .line 38
    return-void
.end method


# virtual methods
.method public getData()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    return v0
.end method

.method public getReplyType()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    return v0
.end method

.method public getSubReplyType()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    return v0
.end method

.method public getSubType()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    return v0
.end method

.method public setData(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "data2"    # Landroid/os/Parcelable;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    .line 70
    return-void
.end method

.method public setMsgId(I)V
    .registers 2
    .param p1, "msgId2"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    .line 62
    return-void
.end method

.method public setReplyType(I)V
    .registers 2
    .param p1, "replyType2"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    .line 78
    return-void
.end method

.method public setSubReplyType(I)V
    .registers 2
    .param p1, "subReplyType2"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    .line 86
    return-void
.end method

.method public setSubType(I)V
    .registers 2
    .param p1, "subType2"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    .line 54
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type2"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhicommMessage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->msgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->data:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", replyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->replyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subReplyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->subReplyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
