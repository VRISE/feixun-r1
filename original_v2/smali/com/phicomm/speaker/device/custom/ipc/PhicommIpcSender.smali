.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;
.super Ljava/lang/Object;
.source "PhicommIpcSender.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcSender;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommIpcSender"


# instance fields
.field private mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 14
    return-void
.end method


# virtual methods
.method public send(III)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 28
    return-void
.end method

.method public send(IIILandroid/os/Parcelable;)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, -0x1

    .line 31
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method public send(IILandroid/os/Parcelable;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 24
    return-void
.end method

.method public send(ZIIIIILandroid/os/Parcelable;)V
    .registers 16
    .param p1, "loopUntilReply"    # Z
    .param p2, "replyType"    # I
    .param p3, "subReplyType"    # I
    .param p4, "type"    # I
    .param p5, "subType"    # I
    .param p6, "msgId"    # I
    .param p7, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->mSender:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 36
    return-void
.end method

.method public sendMessage(IIILandroid/os/Parcelable;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IIILandroid/os/Parcelable;)V

    .line 20
    return-void
.end method
