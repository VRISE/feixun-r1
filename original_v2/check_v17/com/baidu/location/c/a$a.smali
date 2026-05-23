.class public Lcom/baidu/location/c/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/c/a;


# direct methods
.method public constructor <init>(Lcom/baidu/location/c/a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v2, 0x1

    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-ne v0, v2, :cond_a

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_66

    :cond_a
    :goto_a
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;)V

    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-static {v0}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;)V

    :cond_1c
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_20
    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->a(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_26
    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->b(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_2c
    iget-object v0, p0, Lcom/baidu/location/c/a$a;->a:Lcom/baidu/location/c/a;

    invoke-static {v0, p1}, Lcom/baidu/location/c/a;->c(Lcom/baidu/location/c/a;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_32
    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/a/k;->b(Landroid/os/Message;)V

    goto :goto_a

    :sswitch_3a
    invoke-static {}, Lcom/baidu/location/a/k;->c()Lcom/baidu/location/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/k;->h()V

    goto :goto_a

    :sswitch_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_a

    :catch_46
    move-exception v0

    goto :goto_a

    :sswitch_48
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errorid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    if-lez v1, :cond_a

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_a

    :sswitch_5d
    invoke-static {}, Lcom/baidu/location/a/h;->a()Lcom/baidu/location/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/h;->e()V

    goto :goto_a

    nop

    :sswitch_data_66
    .sparse-switch
        0xb -> :sswitch_20
        0xc -> :sswitch_26
        0xf -> :sswitch_2c
        0x16 -> :sswitch_32
        0x1c -> :sswitch_a
        0x29 -> :sswitch_3a
        0x6e -> :sswitch_a
        0x6f -> :sswitch_a
        0x70 -> :sswitch_a
        0x12e -> :sswitch_a
        0x191 -> :sswitch_42
        0x192 -> :sswitch_a
        0x193 -> :sswitch_a
        0x195 -> :sswitch_48
        0x196 -> :sswitch_5d
        0x197 -> :sswitch_a
    .end sparse-switch
.end method
