.class Lcom/unisound/passport/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unisound/passport/d;


# direct methods
.method public constructor <init>(Lcom/unisound/passport/d;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/passport/d;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_a2

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_5

    :sswitch_1a
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_5

    :sswitch_2e
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_5

    :sswitch_42
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_5

    :sswitch_56
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v1, 0x4b5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/unisound/passport/PassportListener;->onEvent(IJ)V

    goto :goto_5

    :sswitch_6a
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v1, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    const/16 v2, 0x515

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/unisound/passport/PassportListener;->onResult(ILjava/lang/String;)V

    goto :goto_5

    :sswitch_7e
    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v0, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/passport/g;->a:Lcom/unisound/passport/d;

    iget-object v1, v0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/unisound/passport/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/unisound/passport/PassportListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_5

    nop

    :sswitch_data_a2
    .sparse-switch
        0x4b1 -> :sswitch_6
        0x4b2 -> :sswitch_1a
        0x4b3 -> :sswitch_2e
        0x4b4 -> :sswitch_42
        0x4b5 -> :sswitch_56
        0x515 -> :sswitch_6a
        0x579 -> :sswitch_7e
    .end sparse-switch
.end method
