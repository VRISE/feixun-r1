.class final Lcn/kuwo/autosdk/t;
.super Ljava/lang/Thread;


# instance fields
.field private volatile a:Ljava/lang/Runnable;

.field private volatile b:I

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/autosdk/t;)V
    .registers 2

    invoke-direct {p0}, Lcn/kuwo/autosdk/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;I)V
    .registers 4

    iput-object p1, p0, Lcn/kuwo/autosdk/t;->a:Ljava/lang/Runnable;

    iput p2, p0, Lcn/kuwo/autosdk/t;->b:I

    iget-boolean v0, p0, Lcn/kuwo/autosdk/t;->c:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcn/kuwo/autosdk/t;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/t;->c:Z

    :goto_e
    return-void

    :cond_f
    monitor-enter p0

    :try_start_10
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_e

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public run()V
    .registers 5

    const/4 v3, 0x5

    :goto_1
    iget v0, p0, Lcn/kuwo/autosdk/t;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcn/kuwo/autosdk/t;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lcn/kuwo/autosdk/r;->a()I

    move-result v0

    if-lt v0, v3, :cond_15

    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/t;->c:Z

    return-void

    :cond_15
    monitor-enter p0

    :try_start_16
    invoke-static {}, Lcn/kuwo/autosdk/r;->b()[Lcn/kuwo/autosdk/t;

    move-result-object v1

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    :try_start_1b
    invoke-static {}, Lcn/kuwo/autosdk/r;->a()I

    move-result v0

    if-lt v0, v3, :cond_27

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_40

    :try_start_22
    monitor-exit p0

    goto :goto_11

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    invoke-static {}, Lcn/kuwo/autosdk/r;->b()[Lcn/kuwo/autosdk/t;

    move-result-object v0

    invoke-static {}, Lcn/kuwo/autosdk/r;->a()I

    move-result v2

    aput-object p0, v0, v2

    invoke-static {}, Lcn/kuwo/autosdk/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcn/kuwo/autosdk/r;->a(I)V

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_27 .. :try_end_3b} :catchall_40

    :try_start_3b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_43
    .catchall {:try_start_3b .. :try_end_3e} :catchall_24

    :try_start_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_24

    goto :goto_1

    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw v0

    :catch_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_24

    goto :goto_11
.end method
