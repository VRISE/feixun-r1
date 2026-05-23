.class public Lcom/unisound/common/ab;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/unisound/common/ac;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0, p1}, Lcom/unisound/common/ab;->a(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/unisound/common/ab;->a:Lcom/unisound/common/ac;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unisound/common/ab;->a:Lcom/unisound/common/ac;

    invoke-interface {v0, p1}, Lcom/unisound/common/ac;->a(Landroid/os/Message;)Z

    :cond_12
    return-void
.end method

.method public removeSendMessage()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/common/ab;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public sendMessage(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unisound/common/ab;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/unisound/common/ab;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMessageLisenter(Lcom/unisound/common/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/ab;->a:Lcom/unisound/common/ac;

    return-void
.end method
