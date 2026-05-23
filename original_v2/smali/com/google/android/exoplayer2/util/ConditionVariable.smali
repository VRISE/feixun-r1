.class public final Lcom/google/android/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 57
    monitor-enter p0

    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_c

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    goto :goto_1

    .line 57
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()Z
    .registers 3

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 47
    .local v0, "wasOpen":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 48
    monitor-exit p0

    return v0

    .line 46
    .end local v0    # "wasOpen":Z
    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized open()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 32
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_10

    if-eqz v1, :cond_9

    .line 33
    const/4 v0, 0x0

    .line 37
    :goto_7
    monitor-exit p0

    return v0

    .line 35
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_10

    goto :goto_7

    .line 32
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
