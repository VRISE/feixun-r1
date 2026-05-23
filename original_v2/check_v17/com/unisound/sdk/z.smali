.class public abstract Lcom/unisound/sdk/z;
.super Ljava/lang/Thread;


# static fields
.field private static h:Z

.field private static i:Z


# instance fields
.field protected volatile a:Z

.field protected b:Lcom/unisound/sdk/au;

.field protected c:Lcn/yunzhisheng/asr/a;

.field protected d:[B

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/z;->h:Z

    sput-boolean v0, Lcom/unisound/sdk/z;->i:Z

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->a:Z

    iput-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    iput-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x64

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/unisound/sdk/z;->d:[B

    iput-object p1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->e:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Z)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->a:Z

    iput-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    iput-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x64

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/unisound/sdk/z;->d:[B

    iput-object p1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->e:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/z;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/unisound/sdk/z;->h:Z

    return-void
.end method

.method public static c(Z)V
    .registers 1

    sput-boolean p0, Lcom/unisound/sdk/z;->i:Z

    return-void
.end method

.method public static l()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/sdk/z;->h:Z

    return v0
.end method

.method public static m()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/sdk/z;->i:Z

    return v0
.end method


# virtual methods
.method protected a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/au;->b(Z)V

    :cond_7
    return-void
.end method

.method protected a(Z[BII)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/au;->a(Z[BII)V

    :cond_7
    return-void
.end method

.method protected a([B)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->x()I

    move-result v3

    iget-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_16
    if-ltz v1, :cond_27

    iget-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v2, v0

    if-lt v2, v3, :cond_28

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/z;->e:Z

    :cond_27
    return-void

    :cond_28
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_16
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected abstract c()[B
.end method

.method public d()V
    .registers 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->e()Z

    move-result v0

    if-nez v0, :cond_13

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputSourceThread::stopRecording"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/unisound/sdk/z;->a:Z

    :cond_13
    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/z;->a:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public g()V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->f()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->d()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputSourceThread::cancel"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    :cond_17
    return-void
.end method

.method protected h()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/j;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_2e

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "add wav header to recordingfile!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->au()I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/unisound/common/j;->a(Ljava/lang/String;II)Z

    :cond_2e
    iget-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Lcom/unisound/sdk/au;->j()V

    :cond_35
    return-void
.end method

.method protected i()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/z;->b:Lcom/unisound/sdk/au;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/au;->k()V

    :cond_7
    return-void
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/z;->a:Z

    return v0
.end method

.method public k()V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->g()V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v0, 0xfa0

    :try_start_b
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/z;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "InputSourceThread::waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19
.end method

.method public run()V
    .registers 9

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "Recording InputSource Thread start"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_37

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "InputSourceThread -> ThreadName = "

    aput-object v1, v0, v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_37
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_3c
    invoke-virtual {p0}, Lcom/unisound/sdk/z;->a()Z

    move-result v0

    if-eqz v0, :cond_13f

    iget-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v0

    if-eqz v0, :cond_70

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    :cond_70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/z;->a(Z)V

    :cond_74
    :goto_74
    invoke-virtual {p0}, Lcom/unisound/sdk/z;->e()Z

    move-result v0

    if-nez v0, :cond_143

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->f()Z

    move-result v0

    if-nez v0, :cond_143

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->c()[B

    move-result-object v0

    if-eqz v0, :cond_74

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_c0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InputSourceThread::read size ="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "thread = "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_c0
    iget-object v1, p0, Lcom/unisound/sdk/z;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->a()Z

    move-result v1

    if-eqz v1, :cond_ea

    iget-boolean v1, p0, Lcom/unisound/sdk/z;->f:Z

    if-nez v1, :cond_ea

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/z;->f:Z

    array-length v1, v0

    const/16 v2, 0x2c

    if-le v1, v2, :cond_ea

    const/16 v1, 0x2c

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x2b

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "InputSourceThread ignore wav header!"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_ea
    iget-boolean v1, p0, Lcom/unisound/sdk/z;->e:Z

    if-nez v1, :cond_f1

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/z;->a([B)V

    :cond_f1
    iget-boolean v1, p0, Lcom/unisound/sdk/z;->e:Z

    if-eqz v1, :cond_74

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/unisound/sdk/z;->a(Z[BII)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_fb} :catch_fd
    .catchall {:try_start_3c .. :try_end_fb} :catchall_16d

    goto/16 :goto_74

    :catch_fd
    move-exception v0

    const/4 v1, 0x1

    :try_start_ff
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "recording error"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10c
    .catchall {:try_start_ff .. :try_end_10c} :catchall_16d

    iget-object v0, p0, Lcom/unisound/sdk/z;->d:[B

    iget-object v1, p0, Lcom/unisound/sdk/z;->d:[B

    array-length v1, v1

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v7, v0, v6, v7}, Lcom/unisound/sdk/z;->a(Z[BII)V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->i()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "recording error"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "InputSourceThread::recording destory"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_135
    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "Recording InputSource Thread stop"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    return-void

    :cond_13f
    const/4 v0, 0x0

    :try_start_140
    invoke-virtual {p0, v0}, Lcom/unisound/sdk/z;->a(Z)V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_fd
    .catchall {:try_start_140 .. :try_end_143} :catchall_16d

    :cond_143
    iget-object v0, p0, Lcom/unisound/sdk/z;->d:[B

    iget-object v1, p0, Lcom/unisound/sdk/z;->d:[B

    array-length v1, v1

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v7, v0, v6, v7}, Lcom/unisound/sdk/z;->a(Z[BII)V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->h()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "recording stopped"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "InputSourceThread::recording destory"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_135

    :catchall_16d
    move-exception v0

    iget-object v1, p0, Lcom/unisound/sdk/z;->d:[B

    iget-object v2, p0, Lcom/unisound/sdk/z;->d:[B

    array-length v2, v2

    invoke-static {v1, v6, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v7, v1, v6, v7}, Lcom/unisound/sdk/z;->a(Z[BII)V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->b()V

    iget-object v1, p0, Lcom/unisound/sdk/z;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/unisound/sdk/z;->h()V

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "recording stopped"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "InputSourceThread::recording destory"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    throw v0
.end method
