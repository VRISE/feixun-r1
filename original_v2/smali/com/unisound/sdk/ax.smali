.class public Lcom/unisound/sdk/ax;
.super Lcom/unisound/sdk/z;


# static fields
.field protected static e:Lcom/unisound/sdk/ax;

.field private static g:Ljava/lang/Object;


# instance fields
.field f:I

.field private h:Lcom/unisound/client/IAudioSource;

.field private i:Lcn/yunzhisheng/asr/a;

.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/sdk/ax;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Lcom/unisound/client/IAudioSource;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/z;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ax;->h:Lcom/unisound/client/IAudioSource;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/ax;->f:I

    iput-object p1, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iput-object p3, p0, Lcom/unisound/sdk/ax;->h:Lcom/unisound/client/IAudioSource;

    sput-object p0, Lcom/unisound/sdk/ax;->e:Lcom/unisound/sdk/ax;

    return-void
.end method

.method public static n()V
    .registers 1

    sget-object v0, Lcom/unisound/sdk/ax;->e:Lcom/unisound/sdk/ax;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unisound/sdk/ax;->e:Lcom/unisound/sdk/ax;

    invoke-virtual {v0}, Lcom/unisound/sdk/ax;->k()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->s()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->t()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->ai()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    :goto_2f
    iget-object v1, p0, Lcom/unisound/sdk/ax;->h:Lcom/unisound/client/IAudioSource;

    invoke-interface {v1}, Lcom/unisound/client/IAudioSource;->openAudioIn()I

    move-result v1

    if-nez v1, :cond_78

    invoke-static {v0}, Lcom/unisound/sdk/ax;->b(Z)V

    invoke-static {v0}, Lcom/unisound/sdk/ax;->c(Z)V

    :goto_3d
    return v0

    :cond_3e
    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->ai()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    goto :goto_2f

    :cond_4b
    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->ai()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    goto :goto_2f

    :cond_58
    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->av()Z

    move-result v1

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->ai()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    goto :goto_2f

    :cond_6d
    iget-object v1, p0, Lcom/unisound/sdk/ax;->c:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->ai()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    goto :goto_2f

    :cond_78
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method protected b()V
    .registers 3

    sget-object v1, Lcom/unisound/sdk/ax;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-static {v0}, Lcom/unisound/sdk/ax;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ax;->h:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioIn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ax;->j:[B

    sget-object v0, Lcom/unisound/sdk/ax;->e:Lcom/unisound/sdk/ax;

    if-ne v0, p0, :cond_16

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/sdk/ax;->e:Lcom/unisound/sdk/ax;

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected c()[B
    .registers 9

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/unisound/sdk/ax;->j:[B

    array-length v1, v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Record Read     "

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/unisound/sdk/ax;->h:Lcom/unisound/client/IAudioSource;

    iget-object v3, p0, Lcom/unisound/sdk/ax;->j:[B

    invoke-interface {v2, v3, v1}, Lcom/unisound/client/IAudioSource;->readData([BI)I

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->a()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->l()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->s()Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->k()I

    move-result v2

    if-eq v2, v5, :cond_64

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "4mic getOneShotReady != 1"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_4f
    :goto_4f
    return-object v0

    :cond_50
    iget-object v2, p0, Lcom/unisound/sdk/ax;->i:Lcn/yunzhisheng/asr/a;

    iget-object v2, v2, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->j()I

    move-result v2

    if-eq v2, v5, :cond_64

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "4mic getOneShotReady\t != 1"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_4f

    :cond_64
    sget-boolean v2, Lcom/unisound/common/y;->l:Z

    if-eqz v2, :cond_96

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "RecordingThread:: read = "

    aput-object v3, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, " size = "

    aput-object v3, v2, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/unisound/sdk/ax;->j:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, " first byte "

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/unisound/sdk/ax;->j:[B

    aget-byte v4, v4, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_96
    if-lez v1, :cond_9f

    iget-object v0, p0, Lcom/unisound/sdk/ax;->j:[B

    invoke-static {v0, v6, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_4f

    :cond_9f
    const/16 v2, -0x9

    if-ne v1, v2, :cond_c9

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_b0

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "RecordingThread:: stop signal received "

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_b0
    iput-boolean v5, p0, Lcom/unisound/sdk/ax;->a:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/ax;->d()V

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "RecordingThread"

    aput-object v1, v0, v6

    const-string v1, "stop signal received"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/ax;->d:[B

    invoke-static {v0, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_4f

    :cond_c9
    if-gez v1, :cond_4f

    iput-boolean v5, p0, Lcom/unisound/sdk/ax;->a:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/ax;->d()V

    invoke-virtual {p0}, Lcom/unisound/sdk/ax;->i()V

    const-string v0, "RecordingThread :: read error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ax;->d:[B

    invoke-static {v0, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto/16 :goto_4f
.end method
