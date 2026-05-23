.class Lcom/baidu/location/b/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/e;->a:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :pswitch_a
    goto :goto_4

    :pswitch_b
    iget-object v1, p0, Lcom/baidu/location/b/e;->a:Lcom/baidu/location/b/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    goto :goto_4

    :pswitch_15
    iget-object v1, p0, Lcom/baidu/location/b/e;->a:Lcom/baidu/location/b/d;

    const-string v2, "&og=1"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v2, v0}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_4

    :pswitch_21
    iget-object v1, p0, Lcom/baidu/location/b/e;->a:Lcom/baidu/location/b/d;

    const-string v2, "&og=2"

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-static {v1, v2, v0}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Ljava/lang/String;Landroid/location/Location;)V

    goto :goto_4

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_15
        :pswitch_21
    .end packed-switch
.end method
