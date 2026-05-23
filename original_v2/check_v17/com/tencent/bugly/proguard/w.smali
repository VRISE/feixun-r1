.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Lcom/tencent/bugly/proguard/w;


# instance fields
.field private b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    new-instance v0, Lcom/tencent/bugly/proguard/w$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/w$1;-><init>(Lcom/tencent/bugly/proguard/w;)V

    .line 30
    const/4 v1, 0x3

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 38
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 39
    :cond_1e
    const-string v0, "[AsyncTaskHandler] ScheduledExecutorService is not valiable!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 47
    :cond_26
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/w;
    .registers 2

    .prologue
    .line 53
    const-class v1, Lcom/tencent/bugly/proguard/w;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/tencent/bugly/proguard/w;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/w;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;

    .line 56
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/w;->a:Lcom/tencent/bugly/proguard/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Runnable;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 122
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v2

    if-nez v2, :cond_13

    .line 123
    const-string v1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1e

    .line 140
    :cond_11
    :goto_11
    monitor-exit p0

    return v0

    .line 127
    :cond_13
    if-nez p1, :cond_21

    .line 128
    :try_start_15
    const-string v1, "[AsyncTaskHandler] Task input is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_11

    .line 122
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 132
    :cond_21
    :try_start_21
    const-string v2, "[AsyncTaskHandler] Post a normal task: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_21 .. :try_end_34} :catchall_1e

    .line 134
    :try_start_34
    iget-object v2, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_3b
    .catchall {:try_start_34 .. :try_end_39} :catchall_1e

    move v0, v1

    .line 135
    goto :goto_11

    .line 136
    :catch_3b
    move-exception v1

    .line 137
    :try_start_3c
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_11

    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_1e

    goto :goto_11
.end method

.method public final declared-synchronized a(Ljava/lang/Runnable;J)Z
    .registers 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 94
    monitor-enter p0

    :try_start_5
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/w;->c()Z

    move-result v4

    if-nez v4, :cond_15

    .line 95
    const-string v1, "[AsyncTaskHandler] Async handler was closed, should not post task."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_20

    .line 114
    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    .line 99
    :cond_15
    if-nez p1, :cond_23

    .line 100
    :try_start_17
    const-string v1, "[AsyncTaskHandler] Task input is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_20

    goto :goto_13

    .line 94
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 104
    :cond_23
    cmp-long v4, p2, v2

    if-lez v4, :cond_4a

    .line 106
    :goto_27
    :try_start_27
    const-string v2, "[AsyncTaskHandler] Post a delay(time: %dms) task: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_20

    .line 108
    :try_start_41
    iget-object v2, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, p1, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_48} :catch_4c
    .catchall {:try_start_41 .. :try_end_48} :catchall_20

    move v0, v1

    .line 109
    goto :goto_13

    :cond_4a
    move-wide p2, v2

    .line 104
    goto :goto_27

    .line 110
    :catch_4c
    move-exception v1

    .line 111
    :try_start_4d
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_13

    .line 112
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_20

    goto :goto_13
.end method

.method public final declared-synchronized b()V
    .registers 3

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 177
    const-string v0, "[AsyncTaskHandler] Close async handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 188
    :cond_1a
    monitor-exit p0

    return-void

    .line 176
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 2

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/bugly/proguard/w;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
