.class public final Lcom/google/android/exoplayer2/util/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "libraries"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 5

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-eqz v1, :cond_9

    .line 48
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    .line 59
    :goto_7
    monitor-exit p0

    return v1

    .line 50
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_20

    .line 52
    :try_start_c
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v3, :cond_1a

    aget-object v0, v2, v1

    .line 53
    .local v0, "lib":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 55
    .end local v0    # "lib":Ljava/lang/String;
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1d
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1d} :catch_23
    .catchall {:try_start_c .. :try_end_1d} :catchall_20

    .line 59
    :goto_1d
    :try_start_1d
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->isAvailable:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_20

    goto :goto_7

    .line 47
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1

    .line 56
    :catch_23
    move-exception v1

    goto :goto_1d
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4
    .param p1, "libraries"    # [Ljava/lang/String;

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->loadAttempted:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_6
    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
