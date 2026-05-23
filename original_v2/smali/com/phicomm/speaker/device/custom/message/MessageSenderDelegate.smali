.class public Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
.super Ljava/lang/Object;
.source "MessageSenderDelegate.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;,
        Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;
    }
.end annotation


# static fields
.field private static final MSG_SEND_INTERVAL:I = 0xbb8

.field private static final TAG:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mMessageManager:Landroid/os/MessageDispatchManager;

.field private mSendHandler:Landroid/os/Handler;

.field private mSendMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/device/custom/message/PhicommMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 26
    new-instance v0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$LoopSendHandler;-><init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
    .registers 1

    .prologue
    .line 35
    # getter for: Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;->sDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate$Holder;->access$100()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    return-object v0
.end method

.method private getMessageWhat(II)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "subType"    # I

    .prologue
    .line 77
    mul-int/lit8 v0, p1, 0x64

    add-int/2addr v0, p2

    return v0
.end method

.method private getSentMsgKey(II)Ljava/lang/String;
    .registers 5
    .param p1, "replyType"    # I
    .param p2, "subReplyType"    # I

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sput-object p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->sContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .registers 10
    .param p1, "replyType"    # I
    .param p2, "subReplyType"    # I
    .param p3, "msgId"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getSentMsgKey(II)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;

    .line 69
    .local v1, "send":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    sget-object v2, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received message, type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sent message = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v1, :cond_60

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubReplyType()I

    move-result v2

    if-ne p2, v2, :cond_60

    .line 71
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;->getSubType()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getMessageWhat(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_60
    return-void
.end method

.method public send(III)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "msgId"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 44
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

    .line 47
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 48
    return-void
.end method

.method public send(IILandroid/os/Parcelable;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "subType"    # I
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 40
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
    .line 51
    if-eqz p1, :cond_39

    .line 52
    new-instance v0, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;

    move v1, p4

    move v2, p5

    move v3, p6

    move-object v4, p7

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/phicomm/speaker/device/custom/message/PhicommMessage;-><init>(IIILandroid/os/Parcelable;II)V

    .line 53
    .local v0, "msg":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendMap:Ljava/util/Map;

    invoke-direct {p0, p2, p3}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getSentMsgKey(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-virtual {v1, p0, p2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 55
    invoke-direct {p0, p4, p5}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getMessageWhat(II)I

    move-result v7

    .line 56
    .local v7, "what":I
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 59
    :cond_2c
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mSendHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 62
    .end local v0    # "msg":Lcom/phicomm/speaker/device/custom/message/PhicommMessage;
    .end local v7    # "what":I
    :cond_39
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-virtual {v1, p4, p5, p6, p7}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 63
    return-void
.end method
