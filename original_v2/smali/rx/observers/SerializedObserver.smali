.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/SerializedObserver$FastList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_DRAIN_ITERATION:I = 0x400


# instance fields
.field private final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private queue:Lrx/observers/SerializedObserver$FastList;

.field private volatile terminated:Z


# direct methods
.method public constructor <init>(Lrx/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    .line 71
    iput-object p1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    .line 72
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .prologue
    .line 164
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_5

    .line 184
    :goto_4
    return-void

    .line 167
    :cond_5
    monitor-enter p0

    .line 168
    :try_start_6
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_f

    .line 169
    monitor-exit p0

    goto :goto_4

    .line 182
    :catchall_c
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v1

    .line 171
    :cond_f
    const/4 v1, 0x1

    :try_start_10
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 172
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2c

    .line 173
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 174
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_21

    .line 175
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 176
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 178
    :cond_21
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 179
    monitor-exit p0

    goto :goto_4

    .line 181
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_c

    .line 183
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_4
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 136
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_8

    .line 160
    :goto_7
    return-void

    .line 139
    :cond_8
    monitor-enter p0

    .line 140
    :try_start_9
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_12

    .line 141
    monitor-exit p0

    goto :goto_7

    .line 158
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1

    .line 143
    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 144
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2f

    .line 149
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 150
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v0, :cond_24

    .line 151
    new-instance v0, Lrx/observers/SerializedObserver$FastList;

    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v0}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 152
    .restart local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 154
    :cond_24
    iget-object v1, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 155
    monitor-exit p0

    goto :goto_7

    .line 157
    .end local v0    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2f
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 158
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_f

    .line 159
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x1

    .line 76
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v7, :cond_6

    .line 126
    :goto_5
    return-void

    .line 79
    :cond_6
    monitor-enter p0

    .line 80
    :try_start_7
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v7, :cond_10

    .line 81
    monitor-exit p0

    goto :goto_5

    .line 93
    :catchall_d
    move-exception v7

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v7

    .line 83
    :cond_10
    :try_start_10
    iget-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v7, :cond_2a

    .line 84
    iget-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 85
    .local v5, "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v5, :cond_1f

    .line 86
    new-instance v5, Lrx/observers/SerializedObserver$FastList;

    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    invoke-direct {v5}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    .line 87
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    iput-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 89
    :cond_1f
    iget-object v7, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v7, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 90
    monitor-exit p0

    goto :goto_5

    .line 92
    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_2a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 93
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_d

    .line 95
    :try_start_2e
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v7, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_33} :catch_45

    .line 103
    :cond_33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    const/16 v7, 0x400

    if-ge v2, v7, :cond_33

    .line 105
    monitor-enter p0

    .line 106
    :try_start_39
    iget-object v5, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 107
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    if-nez v5, :cond_55

    .line 108
    const/4 v7, 0x0

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_5

    .line 112
    .end local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :catchall_42
    move-exception v7

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_42

    throw v7

    .line 96
    .end local v2    # "i":I
    :catch_45
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    iput-boolean v9, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 98
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 99
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v7, v8}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 111
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "i":I
    .restart local v5    # "list":Lrx/observers/SerializedObserver$FastList;
    :cond_55
    const/4 v7, 0x0

    :try_start_56
    iput-object v7, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 112
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_42

    .line 113
    iget-object v0, v5, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5d
    if-ge v3, v4, :cond_63

    aget-object v6, v0, v3

    .line 114
    .local v6, "o":Ljava/lang/Object;
    if-nez v6, :cond_66

    .line 103
    .end local v6    # "o":Ljava/lang/Object;
    :cond_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 118
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_66
    :try_start_66
    iget-object v7, p0, Lrx/observers/SerializedObserver;->nl:Lrx/internal/operators/NotificationLite;

    iget-object v8, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-virtual {v7, v8, v6}, Lrx/internal/operators/NotificationLite;->accept(Lrx/Observer;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 119
    const/4 v7, 0x1

    iput-boolean v7, p0, Lrx/observers/SerializedObserver;->terminated:Z
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_73} :catch_74

    goto :goto_5

    .line 122
    :catch_74
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/lang/Throwable;
    iput-boolean v9, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 124
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 125
    iget-object v7, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-static {v1, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    invoke-interface {v7, v8}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d
.end method
