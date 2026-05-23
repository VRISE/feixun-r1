.class Lcom/baidu/location/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method private constructor <init>(Lcom/baidu/location/g;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/g;Lcom/baidu/location/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->j(Lcom/baidu/location/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/g;->b(Lcom/baidu/location/g;Z)Z

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1e
    monitor-exit v1

    :goto_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->k(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->k(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_4d

    :cond_34
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_4d

    :cond_48
    monitor-exit v1

    goto :goto_1f

    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_8 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->m(Lcom/baidu/location/g;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->n(Lcom/baidu/location/g;)Lcom/baidu/location/g$b;

    move-result-object v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    new-instance v2, Lcom/baidu/location/g$b;

    iget-object v3, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-direct {v2, v3}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;)V

    invoke-static {v0, v2}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Lcom/baidu/location/g$b;)Lcom/baidu/location/g$b;

    :cond_69
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;)Lcom/baidu/location/g$a;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v2}, Lcom/baidu/location/g;->n(Lcom/baidu/location/g;)Lcom/baidu/location/g$b;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v3}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v3

    iget v3, v3, Lcom/baidu/location/h;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/baidu/location/g$a;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    goto :goto_1f

    :cond_83
    iget-object v0, p0, Lcom/baidu/location/g$b;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;)Lcom/baidu/location/g$a;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/location/g$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_4d .. :try_end_92} :catchall_4a

    goto :goto_1f
.end method
