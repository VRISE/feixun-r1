.class Lcom/baidu/location/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method constructor <init>(Lcom/baidu/location/g;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    const-string v0, "baidu_location_client"

    const-string v1, "baidu location connected ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->b(Lcom/baidu/location/g;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;)Lcom/baidu/location/g$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_13

    :cond_37
    const/4 v0, 0x0

    const/16 v1, 0xb

    :try_start_3a
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;)Landroid/os/Messenger;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->e(Lcom/baidu/location/g;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->g(Lcom/baidu/location/g;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_72
    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;)Lcom/baidu/location/g$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_80} :catch_81

    goto :goto_13

    :catch_81
    move-exception v0

    goto :goto_13
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/baidu/location/k;->a:Lcom/baidu/location/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Z)Z

    return-void
.end method
