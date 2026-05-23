.class public Lcom/unisound/sdk/bx;
.super Lcom/unisound/sdk/bs;


# static fields
.field public static final c:I = 0x32

.field public static d:Z

.field private static final g:Ljava/text/SimpleDateFormat;

.field private static h:I


# instance fields
.field e:I

.field f:I

.field private i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private j:Lcom/unisound/sdk/by;

.field private k:Z

.field private volatile l:I

.field private volatile m:I

.field private n:Lcom/unisound/sdk/BlockingAudioTrack;

.field private o:Z

.field private p:Z

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Boolean;

.field private s:Ljava/lang/Boolean;

.field private t:Lcom/unisound/client/IAudioSource;

.field private u:Lcom/unisound/sdk/bw;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/unisound/sdk/bx;->g:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x32

    sput v0, Lcom/unisound/sdk/bx;->h:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/bx;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bw;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->m()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bs;-><init>(ZZ)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->k:Z

    iput v2, p0, Lcom/unisound/sdk/bx;->l:I

    iput v2, p0, Lcom/unisound/sdk/bx;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->o:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bx;->p:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    iput v2, p0, Lcom/unisound/sdk/bx;->e:I

    iput v2, p0, Lcom/unisound/sdk/bx;->f:I

    iput-object p1, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->x()I

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->y()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/unisound/sdk/bx;->e:I

    invoke-virtual {p1}, Lcom/unisound/sdk/bw;->H()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bx;->f:I

    return-void
.end method

.method private declared-synchronized a(II)V
    .registers 4

    monitor-enter p0

    packed-switch p1, :pswitch_data_18

    :goto_4
    monitor-exit p0

    return-void

    :pswitch_6
    :try_start_6
    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/unisound/sdk/bx;->l:I
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_f
    :try_start_f
    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/unisound/sdk/bx;->l:I

    goto :goto_4

    :pswitch_15
    iput p2, p0, Lcom/unisound/sdk/bx;->l:I
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_c

    goto :goto_4

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method public static a([S)[B
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_26

    aget-short v2, p0, v0

    mul-int/lit8 v3, v0, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_26
    move-object v0, v1

    goto :goto_3
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/unisound/sdk/bx;->d:Z

    return-void
.end method

.method private c(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(Z)V

    :cond_7
    return-void
.end method

.method private d(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->b(I)V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return-void
.end method

.method private declared-synchronized e(I)V
    .registers 3

    monitor-enter p0

    packed-switch p1, :pswitch_data_1c

    :goto_4
    monitor-exit p0

    return-void

    :pswitch_6
    :try_start_6
    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_d

    goto :goto_4

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_10
    :try_start_10
    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I

    goto :goto_4

    :pswitch_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/bx;->m:I
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_d

    goto :goto_4

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method public static l()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/sdk/bx;->d:Z

    return v0
.end method

.method private m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->k:Z

    return v0
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/by;->a()V

    :cond_7
    return-void
.end method

.method private o()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/by;->b()V

    :cond_7
    return-void
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/by;->c()V

    :cond_7
    return-void
.end method

.method private q()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/unisound/sdk/by;->e()V

    :cond_a
    return-void
.end method

.method private r()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/by;->f()V

    :cond_7
    return-void
.end method

.method private s()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/by;->g()V

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return-void
.end method

.method private t()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/sdk/bx;->g:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v2}, Lcom/unisound/sdk/bw;->G()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/unisound/sdk/bx;->m:I

    if-lez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e

    :cond_11
    iget v2, p0, Lcom/unisound/sdk/bx;->l:I

    if-gtz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method private v()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_f

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->playThreadNotify begin"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_f
    iget-object v1, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "lockObject notify.."

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->r()V

    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_3b

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_3a

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->playThreadNotify end"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3a
    return-void

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private w()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->o:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/client/IAudioSource;)V
    .registers 4

    iput-object p1, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_f

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_f
    return-void
.end method

.method public a(Lcom/unisound/sdk/by;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public a([B)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bx;->e(I)V

    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    iget v1, p0, Lcom/unisound/sdk/bx;->f:I

    if-lt v0, v1, :cond_2d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_16
    iget-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->n()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->s:Ljava/lang/Boolean;

    :cond_2c
    return-void

    :cond_2d
    invoke-direct {p0, v2}, Lcom/unisound/sdk/bx;->c(Z)V

    goto :goto_16

    :cond_31
    array-length v0, p1

    invoke-direct {p0, v2, v0}, Lcom/unisound/sdk/bx;->a(II)V

    goto :goto_16
.end method

.method public b()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_58

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_16

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioSource 1"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    iget-object v1, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_46

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSPlayThread->AudioSource.closeAudioOut begin"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2f
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSPlayThread->AudioSource.closeAudioOut end"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_55

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_54

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioSource 2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_67

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread->reqStop AudioTrack 1"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_67
    if-eqz v0, :cond_89

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_79

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread->audioTrack.stop() begin"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_79
    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_89

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->audioTrack.stop() end"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_89
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_54

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread->reqStop AudioTrack 2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    goto :goto_54
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/by;->a(I)V

    :cond_7
    return-void
.end method

.method public c(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->j()V

    int-to-long v0, p1

    :try_start_a
    invoke-super {p0, v0, v1}, Lcom/unisound/sdk/bs;->join(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_d
.end method

.method public d()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/bs;->d()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->w()V

    return-void
.end method

.method public f()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/bs;->f()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->v()V

    return-void
.end method

.method public g()Lcom/unisound/sdk/by;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    return-object v0
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bx;->k:Z

    return-void
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->j:Lcom/unisound/sdk/by;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/unisound/sdk/bx;->k:Z

    return-void
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bx;->p:Z

    return v0
.end method

.method public run()V
    .registers 15

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/unisound/sdk/bs;->run()V

    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread run(): play start"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread -> ThreadName = "

    aput-object v1, v0, v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v13

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3b
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->c()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->t()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_65
    :try_start_65
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_70} :catch_84

    move-object v1, v0

    :goto_71
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_134

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->openAudioOut()I

    move-result v0

    if-eqz v0, :cond_8a

    const v0, -0x11e5a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->d(I)V

    :goto_83
    return-void

    :catch_84
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_88
    move-object v1, v2

    goto :goto_71

    :cond_8a
    invoke-static {v12}, Lcom/unisound/sdk/bx;->b(Z)V

    :goto_8d
    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->y()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v5, v0, 0x32

    :goto_99
    :try_start_99
    iget-object v0, p0, Lcom/unisound/sdk/bx;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_153

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_b0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 1 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_b0
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b5} :catch_b6
    .catchall {:try_start_99 .. :try_end_b5} :catchall_182

    goto :goto_99

    :catch_b6
    move-exception v0

    :try_start_b7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, -0x11e5b

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->d(I)V
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_182

    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_3a5

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_d1

    new-array v0, v12, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread ->reqStop--1--"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_d1
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_d4
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_e3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread ->reqStop--2--"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_e3
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_10d

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_f6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_f6
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_10a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_10a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_10d
    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_d4 .. :try_end_10e} :catchall_3a2

    :cond_10e
    :goto_10e
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_118

    :try_start_112
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_118} :catch_3c4

    :cond_118
    :goto_118
    invoke-static {v7}, Lcom/unisound/sdk/bx;->b(Z)V

    invoke-virtual {p0, v7}, Lcom/unisound/sdk/bx;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-eqz v0, :cond_3f2

    invoke-direct {p0, v13}, Lcom/unisound/sdk/bx;->e(I)V

    :goto_129
    new-array v0, v12, [Ljava/lang/Object;

    const-string v1, "TTSPlayThread run(): play end"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto/16 :goto_83

    :cond_134
    new-instance v0, Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v3, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->A()I

    move-result v3

    iget-object v4, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->y()I

    move-result v4

    invoke-direct {v0, v3, v4, v13, v12}, Lcom/unisound/sdk/BlockingAudioTrack;-><init>(IIII)V

    iput-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->init()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->start()V

    goto/16 :goto_8d

    :cond_153
    :try_start_153
    iget-object v0, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->G()Z

    move-result v0

    if-nez v0, :cond_1dc

    :goto_15b
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_201

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-nez v0, :cond_201

    iget v0, p0, Lcom/unisound/sdk/bx;->l:I

    iget v3, p0, Lcom/unisound/sdk/bx;->e:I

    if-ge v0, v3, :cond_201

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_17c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 2 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_17c
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_181} :catch_b6
    .catchall {:try_start_153 .. :try_end_181} :catchall_182

    goto :goto_15b

    :catchall_182
    move-exception v0

    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v3, :cond_3cd

    sget-boolean v2, Lcom/unisound/common/y;->l:Z

    if-eqz v2, :cond_194

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--1--"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_194
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_197
    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_1a6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread ->reqStop--2--"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1a6
    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v3, :cond_1d0

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_1b9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1b9
    iget-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v3}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_1cd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1cd
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_1d0
    monitor-exit v2
    :try_end_1d1
    .catchall {:try_start_197 .. :try_end_1d1} :catchall_3ca

    :cond_1d1
    :goto_1d1
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_1db

    :try_start_1d5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1db} :catch_3ec

    :cond_1db
    :goto_1db
    throw v0

    :cond_1dc
    :goto_1dc
    :try_start_1dc
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_201

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-nez v0, :cond_201

    iget v0, p0, Lcom/unisound/sdk/bx;->m:I

    if-ge v0, v12, :cond_201

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_1fb

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread :: pause 2 "

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_1fb
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1dc

    :cond_201
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->o()V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->u()Z

    move-result v0

    if-eqz v0, :cond_31b

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->p()V

    :cond_20d
    :goto_20d
    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v0

    if-nez v0, :cond_318

    iget-object v0, p0, Lcom/unisound/sdk/bx;->i:Ljava/util/concurrent/BlockingQueue;

    sget v3, Lcom/unisound/sdk/bx;->h:I

    int-to-long v8, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_312

    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_248

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v6, "TTSPlayThread :: buffersize ="

    aput-object v6, v3, v4

    const/4 v4, 0x1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    const-string v6, " first byte = "

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_248
    array-length v4, v0

    iget-object v3, p0, Lcom/unisound/sdk/bx;->u:Lcom/unisound/sdk/bw;

    invoke-virtual {v3}, Lcom/unisound/sdk/bw;->G()Z

    move-result v3

    if-eqz v3, :cond_2e1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTSPlay bufferDataTime = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/unisound/sdk/bx;->m:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget v3, p0, Lcom/unisound/sdk/bx;->m:I

    iget v6, p0, Lcom/unisound/sdk/bx;->f:I

    if-lt v3, v6, :cond_2dc

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_273
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->e(I)V

    move v6, v7

    :goto_278
    if-lez v4, :cond_303

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->a()Z

    move-result v3

    if-nez v3, :cond_303

    iget-object v3, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v3
    :try_end_283
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_283} :catch_b6
    .catchall {:try_start_1dc .. :try_end_283} :catchall_182

    :try_start_283
    iget-boolean v8, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v8, :cond_2f6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "TTSPlayThread run(): lockObject wait..."

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bx;->q()V

    iget-object v8, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    :goto_29a
    monitor-exit v3
    :try_end_29b
    .catchall {:try_start_283 .. :try_end_29b} :catchall_2fa

    if-le v5, v4, :cond_3f7

    move v3, v4

    :goto_29e
    :try_start_29e
    iget-object v8, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v8, :cond_2fd

    new-array v8, v3, [B

    const/4 v9, 0x0

    invoke-static {v0, v6, v8, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "TTSPlayThread run : before writeData "

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    sget-boolean v9, Lcom/unisound/common/y;->l:Z

    if-eqz v9, :cond_2c9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "TTSPlayThread :: writeData "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2c9
    iget-object v9, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v9, v8, v3}, Lcom/unisound/client/IAudioSource;->writeData([BI)I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "TTSPlayThread run : after writeData "

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    :goto_2d9
    add-int/2addr v6, v3

    sub-int/2addr v4, v3

    goto :goto_278

    :cond_2dc
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    goto :goto_273

    :cond_2e1
    iget v3, p0, Lcom/unisound/sdk/bx;->l:I

    iget v6, p0, Lcom/unisound/sdk/bx;->e:I

    if-lt v3, v6, :cond_2f1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V

    :goto_2eb
    const/4 v3, 0x1

    invoke-direct {p0, v3, v4}, Lcom/unisound/sdk/bx;->a(II)V

    move v6, v7

    goto :goto_278

    :cond_2f1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/unisound/sdk/bx;->c(Z)V
    :try_end_2f5
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2f5} :catch_b6
    .catchall {:try_start_29e .. :try_end_2f5} :catchall_182

    goto :goto_2eb

    :cond_2f6
    const/4 v8, 0x1

    :try_start_2f7
    iput-boolean v8, p0, Lcom/unisound/sdk/bx;->p:Z

    goto :goto_29a

    :catchall_2fa
    move-exception v0

    monitor-exit v3
    :try_end_2fc
    .catchall {:try_start_2f7 .. :try_end_2fc} :catchall_2fa

    :try_start_2fc
    throw v0

    :cond_2fd
    iget-object v8, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v8, v0, v6, v3}, Lcom/unisound/sdk/BlockingAudioTrack;->write([BII)I

    goto :goto_2d9

    :cond_303
    if-eqz v1, :cond_20d

    invoke-virtual {p0}, Lcom/unisound/sdk/bx;->c()Z

    move-result v3

    if-eqz v3, :cond_20d

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto/16 :goto_20d

    :cond_312
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->m()Z

    move-result v0

    if-eqz v0, :cond_37b

    :cond_318
    invoke-direct {p0}, Lcom/unisound/sdk/bx;->s()V
    :try_end_31b
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_31b} :catch_b6
    .catchall {:try_start_2fc .. :try_end_31b} :catchall_182

    :cond_31b
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_384

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_32c

    new-array v0, v12, [Ljava/lang/Object;

    const-string v2, "TTSPlayThread ->reqStop--1--"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_32c
    iget-object v2, p0, Lcom/unisound/sdk/bx;->q:Ljava/lang/Object;

    monitor-enter v2

    :try_start_32f
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_33e

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread ->reqStop--2--"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_33e
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_368

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_351

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() begin"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_351
    iget-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_365

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSPlayThread->run:AudioSource.closeAudioOut() end"

    aput-object v4, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bx;->t:Lcom/unisound/client/IAudioSource;

    :cond_368
    monitor-exit v2
    :try_end_369
    .catchall {:try_start_32f .. :try_end_369} :catchall_381

    :cond_369
    :goto_369
    iput-boolean v7, p0, Lcom/unisound/sdk/bx;->o:Z

    if-eqz v1, :cond_118

    :try_start_36d
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_373
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_373} :catch_375

    goto/16 :goto_118

    :catch_375
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_118

    :cond_37b
    const/4 v0, 0x0

    :try_start_37c
    invoke-direct {p0, v0}, Lcom/unisound/sdk/bx;->c(Z)V
    :try_end_37f
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_37f} :catch_b6
    .catchall {:try_start_37c .. :try_end_37f} :catchall_182

    goto/16 :goto_20d

    :catchall_381
    move-exception v0

    :try_start_382
    monitor-exit v2
    :try_end_383
    .catchall {:try_start_382 .. :try_end_383} :catchall_381

    throw v0

    :cond_384
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_391

    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--3--"

    aput-object v3, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_391
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_369

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto :goto_369

    :catchall_3a2
    move-exception v0

    :try_start_3a3
    monitor-exit v2
    :try_end_3a4
    .catchall {:try_start_3a3 .. :try_end_3a4} :catchall_3a2

    throw v0

    :cond_3a5
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_3b2

    new-array v0, v12, [Ljava/lang/Object;

    const-string v3, "TTSPlayThread ->reqStop--3--"

    aput-object v3, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3b2
    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_10e

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto/16 :goto_10e

    :catch_3c4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_118

    :catchall_3ca
    move-exception v0

    :try_start_3cb
    monitor-exit v2
    :try_end_3cc
    .catchall {:try_start_3cb .. :try_end_3cc} :catchall_3ca

    throw v0

    :cond_3cd
    sget-boolean v3, Lcom/unisound/common/y;->l:Z

    if-eqz v3, :cond_3da

    new-array v3, v12, [Ljava/lang/Object;

    const-string v4, "TTSPlayThread ->reqStop--3--"

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3da
    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v3, :cond_1d1

    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v3}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v3, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v3}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bx;->n:Lcom/unisound/sdk/BlockingAudioTrack;

    goto/16 :goto_1d1

    :catch_3ec
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1db

    :cond_3f2
    invoke-direct {p0, v13, v7}, Lcom/unisound/sdk/bx;->a(II)V

    goto/16 :goto_129

    :cond_3f7
    move v3, v5

    goto/16 :goto_29e
.end method
