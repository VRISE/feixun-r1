.class public Lcn/yunzhisheng/asr/VAD;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static f:I = 0x0

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = -0x3e9


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private B:Z

.field private C:D

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public h:Z

.field protected i:J

.field public j:Z

.field public k:Z

.field private o:Ljava/io/ByteArrayOutputStream;

.field private p:Lcn/yunzhisheng/asr/a;

.field private q:Lcom/unisound/sdk/cr;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:[B

.field private w:Z

.field private x:I

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcn/yunzhisheng/asr/VAD;->f:I

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/cr;)V
    .registers 11

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x5000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iput-wide v6, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    iput-boolean v2, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->k:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    new-array v0, v2, [B

    const/16 v1, 0x63

    aput-byte v1, v0, v4

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->v:[B

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    iput v4, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    iput-object p1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iput-object p2, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_5b

    const-string v0, "jni VAD create fail!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_5a
    return-void

    :cond_5b
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/asr/a;->n(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->S()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/s;->a(Ljava/lang/String;)V

    :cond_84
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->av()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->af()V

    :cond_91
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v4}, Lcn/yunzhisheng/asr/a;->l(Z)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->n()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Z)V

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->init(J)V

    goto :goto_5a
.end method

.method private a(D)D
    .registers 6

    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    div-double v0, p1, v0

    return-wide v0
.end method

.method private a([BI[BI)I
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    add-int/lit8 v2, p2, -0x1

    if-ge v1, v2, :cond_1f

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p3, v0

    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p3, v4

    goto :goto_2

    :cond_1f
    return v0
.end method

.method private b(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "timeout"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "afterTimeoutVoice"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_f} :catch_14

    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/cr;->b(I)V

    :cond_7
    return-void
.end method

.method private b(Z)V
    .registers 6

    const/16 v3, -0x3e9

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    if-ne p1, v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->s:Z

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v3, v2}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_6

    :cond_1a
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_6
.end method

.method private c(I)V
    .registers 6

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/asr/VAD;->a(I)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unisound/common/j;->a(ZLjava/lang/String;)Z

    :cond_1f
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p0}, Lcom/unisound/sdk/cr;->a(Lcn/yunzhisheng/asr/VAD;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0, v3}, Lcn/yunzhisheng/asr/a;->v(Z)V

    :cond_2b
    if-eq p1, v1, :cond_3a

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "VAD >>"

    aput-object v1, v0, v2

    const-string v1, "TimeOut"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method private d(I)V
    .registers 6

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    int-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-void
.end method

.method private declared-synchronized d([B)V
    .registers 8

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v3, v2

    :goto_10
    if-ltz v1, :cond_3f

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v3

    iget-object v3, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v3, v3, Lcn/yunzhisheng/asr/a;->ad:I

    if-lt v0, v3, :cond_36

    :goto_22
    if-ge v2, v1, :cond_3a

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {p0, v3, v0, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_3c

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_36
    add-int/lit8 v1, v1, -0x1

    move v3, v0

    goto :goto_10

    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move v1, v2

    goto :goto_22
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/cr;->n()V

    :cond_7
    return-void
.end method

.method private g()V
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/cr;->o()V

    :cond_7
    return-void
.end method

.method private h()V
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    return-void
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    return-void
.end method

.method private j()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-void
.end method

.method private k()D
    .registers 3

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->C:D

    return-wide v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .registers 9

    const/4 v0, 0x0

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_b

    const/4 v0, -0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->nativeSetOption(JILjava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public a(Lcn/yunzhisheng/asr/b;)I
    .registers 4

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/b;->c()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p1, Lcn/yunzhisheng/asr/b;->b:I

    invoke-virtual {p1}, Lcn/yunzhisheng/asr/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(ILjava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public a([BI)I
    .registers 5

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v0

    goto :goto_7
.end method

.method public declared-synchronized a([BII)I
    .registers 14

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_14

    const/4 v0, 0x0

    aget-byte v0, p1, v0
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_30e

    const/16 v2, 0x64

    if-ne v0, v2, :cond_17

    :cond_14
    move v0, v1

    :cond_15
    :goto_15
    monitor-exit p0

    return v0

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_28
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->b([B)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_55

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VAD::write size ="

    aput-object v3, v0, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_55
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6e

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_67

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_6e

    :cond_67
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, p3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    move v0, v1

    goto :goto_15

    :cond_6e
    if-gtz p3, :cond_72

    move v0, v1

    goto :goto_15

    :cond_72
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_183

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_183

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_168

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->t()Z

    move-result v0

    if-eqz v0, :cond_14d

    const/4 v0, 0x2

    array-length v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object p1, v0, v3

    aput-object p1, v0, v2

    move-object v4, v0

    :goto_ab
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v0, v0, Lcn/yunzhisheng/asr/a;->ag:Z

    if-nez v0, :cond_221

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->i()I

    move-result v0

    if-nez v0, :cond_1db

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_1bd

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_e1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->D()Z

    move-result v0

    if-nez v0, :cond_f0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    array-length v5, v2

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcn/yunzhisheng/asr/a;->e(J)V

    :cond_f0
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v2}, Lcom/unisound/common/s;->c([B)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, v3}, Lcom/unisound/common/s;->d([B)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v0

    if-eqz v0, :cond_124

    iget v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    array-length v5, p1

    add-int/2addr v0, v5

    iput v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    iget v0, p0, Lcn/yunzhisheng/asr/VAD;->x:I

    int-to-long v6, v0

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->aj()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-ltz v0, :cond_124

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    :cond_124
    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_2cf

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->w:Z

    if-nez v0, :cond_2cf

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v0

    if-eqz v0, :cond_2cf

    :cond_13c
    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {p0, v0, v2, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    array-length v0, v2

    invoke-virtual {p0, v2, v0}, Lcn/yunzhisheng/asr/VAD;->c([BI)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    move v0, v1

    goto/16 :goto_15

    :cond_14d
    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_ab

    :cond_168
    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_ab

    :cond_183
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->av()Z

    move-result v0

    if-eqz v0, :cond_1a6

    const/4 v0, 0x2

    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->a([B)[[B

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_ab

    :cond_1a6
    const/4 v0, 0x2

    array-length v2, p1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object p1, v0, v3

    aput-object p1, v0, v2

    move-object v4, v0

    goto/16 :goto_ab

    :cond_1bd
    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_1db
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_203

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_203
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v2

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_221
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->i()I

    move-result v0

    if-nez v0, :cond_27d

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_259

    const/4 v0, 0x1

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_259
    const/4 v0, 0x1

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const/4 v7, 0x0

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_27d
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->o()Z

    move-result v0

    if-eqz v0, :cond_2ab

    const/4 v0, 0x0

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const/4 v3, 0x1

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_2ab
    const/4 v0, 0x0

    aget-object v0, v4, v0

    array-length v0, v0

    mul-int/lit8 v5, v0, 0x2

    new-array v2, v5, [B

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const/4 v3, 0x0

    aget-object v3, v4, v3

    array-length v3, v3

    invoke-direct {p0, v0, v3, v2, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move-result v3

    new-array v0, v5, [B

    const/4 v6, 0x1

    aget-object v6, v4, v6

    const/4 v7, 0x1

    aget-object v4, v4, v7

    array-length v4, v4

    invoke-direct {p0, v6, v4, v0, v5}, Lcn/yunzhisheng/asr/VAD;->a([BI[BI)I

    move v4, v3

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_e1

    :cond_2cf
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->m()Z

    move-result v0

    if-eqz v0, :cond_311

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    if-nez v0, :cond_311

    invoke-virtual {p0, v2}, Lcn/yunzhisheng/asr/VAD;->a([B)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    move v0, v1

    :cond_2e6
    :goto_2e6
    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "AF_VAD::read size ="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " first byte "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V
    :try_end_30c
    .catchall {:try_start_17 .. :try_end_30c} :catchall_30e

    goto/16 :goto_15

    :catchall_30e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_311
    :try_start_311
    invoke-virtual {p0, v3, v4}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    move-result v0

    if-nez v0, :cond_39f

    :cond_317
    :goto_317
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    if-nez v1, :cond_480

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/a;->Y:Z

    if-eqz v1, :cond_480

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->at()Z

    move-result v1

    if-eqz v1, :cond_480

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_339

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-nez v1, :cond_33c

    :cond_339
    invoke-direct {p0, v2}, Lcn/yunzhisheng/asr/VAD;->d([B)V

    :cond_33c
    :goto_33c
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "VAD done        1"

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->c()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->b(I)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_362

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-eqz v1, :cond_362

    array-length v1, p1

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->d(I)V

    :cond_362
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_4a4

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_4a4

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->c:Lcom/unisound/common/s;

    invoke-virtual {v1}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-nez v1, :cond_4a4

    invoke-virtual {p0, v3}, Lcn/yunzhisheng/asr/VAD;->b([B)Z

    move-result v1

    if-eqz v1, :cond_2e6

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->k()D

    move-result-wide v2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    goto/16 :goto_2e6

    :cond_39f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f6

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_3f2

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_3ee

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    :goto_3b1
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3cb

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-eqz v1, :cond_3cb

    const/4 v1, 0x0

    iget-object v5, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v5}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unisound/common/j;->b(ZLjava/lang/String;)Z

    :cond_3cb
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_BACK_END "

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "param = "

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->g()V

    goto/16 :goto_317

    :cond_3ee
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    goto :goto_3b1

    :cond_3f2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    goto :goto_3b1

    :cond_3f6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_41b

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v5, 0x0

    const-string v6, ""

    invoke-direct {p0, v5, v6}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_MAX_SIL1"

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_317

    :cond_41b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_317

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v1

    if-eqz v1, :cond_47c

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->B()Z

    move-result v1

    if-eqz v1, :cond_431

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    :cond_431
    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    if-nez v1, :cond_478

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->h()V

    :goto_438
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->b()Z

    move-result v1

    if-eqz v1, :cond_452

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->z()Z

    move-result v1

    if-eqz v1, :cond_452

    const/4 v1, 0x1

    iget-object v5, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v5}, Lcn/yunzhisheng/asr/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unisound/common/j;->a(ZLjava/lang/String;)Z

    :cond_452
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "VAD >>"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "ASR_VAD_FRONT_END "

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-string v6, "param = "

    aput-object v6, v1, v5

    const/4 v5, 0x3

    iget-boolean v6, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->f()V

    goto/16 :goto_317

    :cond_478
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V

    goto :goto_438

    :cond_47c
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V

    goto :goto_438

    :cond_480
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-boolean v1, v1, Lcn/yunzhisheng/asr/a;->Y:Z

    if-eqz v1, :cond_49d

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    if-nez v1, :cond_49d

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->at()Z

    move-result v1

    if-eqz v1, :cond_49d

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iput-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    goto/16 :goto_33c

    :cond_49d
    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v2, v5, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    goto/16 :goto_33c

    :cond_4a4
    invoke-virtual {p0, v3}, Lcn/yunzhisheng/asr/VAD;->c([B)Z

    move-result v1

    if-eqz v1, :cond_2e6

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->k()D

    move-result-wide v2

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcn/yunzhisheng/asr/VAD;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->c(I)V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->i()V
    :try_end_4c9
    .catchall {:try_start_311 .. :try_end_4c9} :catchall_30e

    goto/16 :goto_2e6
.end method

.method public declared-synchronized a(I)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->t:Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->A()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->u:Z

    :cond_1f
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_30

    move-result v0

    if-nez v0, :cond_27

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    const/4 v0, 0x2

    if-ne p1, v0, :cond_25

    :try_start_2a
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->reset(J)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_25

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(II)V
    .registers 7

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    div-int/lit8 v0, p1, 0xa

    div-int/lit8 v1, p2, 0xa

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->setTime(JII)V

    goto :goto_6
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcn/yunzhisheng/asr/VAD;->j:Z

    return-void
.end method

.method public a(Z[BII)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VAD::onVadData size ="

    aput-object v1, v0, v3

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, " first byte "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-byte v2, p2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enabled = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_31
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->q:Lcom/unisound/sdk/cr;

    if-eqz p1, :cond_63

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    array-length v1, p2

    if-ne v1, v4, :cond_5a

    aget-byte v1, p2, v3

    const/16 v2, 0x64

    if-eq v1, v2, :cond_63

    aget-byte v1, p2, v3

    const/16 v2, 0x63

    if-eq v1, v2, :cond_63

    :cond_5a
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z

    :cond_63
    if-eqz v0, :cond_68

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/cr;->b(Z[BII)V

    :cond_68
    return-void
.end method

.method protected declared-synchronized a([B)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ae:I

    if-lt v0, v1, :cond_5c

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-wide v2, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    array-length v1, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcn/yunzhisheng/asr/VAD;->checkPitchOffset(J[BI)I

    move-result v1

    if-lez v1, :cond_47

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {p0, v3, v2, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    array-length v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_47
    sput v1, Lcn/yunzhisheng/asr/VAD;->f:I

    array-length v1, v0

    if-lez v1, :cond_56

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->b([BI)I

    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->r:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->h:Z
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    :cond_5c
    monitor-exit p0

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 5

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b([BI)I
    .registers 7

    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcn/yunzhisheng/asr/VAD;->isVADTimeout(J[BI)I

    move-result v0

    goto :goto_9
.end method

.method public b()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "frontSil = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ab:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, " backSil= "

    aput-object v1, v0, v5

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v2, v2, Lcn/yunzhisheng/asr/a;->ac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v0, v0, Lcn/yunzhisheng/asr/a;->ab:I

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v1, v1, Lcn/yunzhisheng/asr/a;->ac:I

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->a(II)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v0

    if-eqz v0, :cond_57

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.isFarFeildEnabled() = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v1}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->h()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(Z)V

    :cond_57
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINBACKENG = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->y:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_85
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINBACKENGH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->z:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_b3
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_e1

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->A:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_e1
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10f

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHSTNUMTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->B:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_10f
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13d

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHENDNUMTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->C:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_13d
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16b

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.LOWHIGHTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->D:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_16b
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_199

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MINSIGLEN = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->E:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_199
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget v2, v2, Lcn/yunzhisheng/asr/a;->ac:I

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MAXSILLEN = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->F:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_1ec
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_21a

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21a

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.SINGLEMAX = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->G:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_21a
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_248

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->H:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_248
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_276

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_276

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YTHVOWEL = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->I:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_276
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a4

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.VOICEPROBTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->J:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_2a4
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_2d2

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d2

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.USEPEAK = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->K:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_2d2
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_300

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_300

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.NOISE2YST = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->L:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_300
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_32e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32e

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.PITCHLASTTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->M:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_32e
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_35c

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v0, v0, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35c

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.DETECTMUSIC = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    iget-object v1, v1, Lcn/yunzhisheng/asr/d;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->N:Lcn/yunzhisheng/asr/d;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_35c
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_38a

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v0, v0, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38a

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "mParams.MUSICTH = "

    aput-object v1, v0, v3

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v1, v1, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    iget-object v1, v1, Lcn/yunzhisheng/asr/c;->a:Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    iget-object v0, v0, Lcn/yunzhisheng/asr/a;->O:Lcn/yunzhisheng/asr/c;

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/asr/VAD;->a(Lcn/yunzhisheng/asr/b;)I

    :cond_38a
    invoke-direct {p0}, Lcn/yunzhisheng/asr/VAD;->j()V

    return-void
.end method

.method protected b([B)Z
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->z:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->G()I

    move-result v4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_1a
    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    if-lt v3, v4, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1a

    :cond_2e
    move v0, v1

    goto :goto_29
.end method

.method public c()I
    .registers 3

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->getVolume(J)I

    move-result v0

    goto :goto_7
.end method

.method protected c([BI)I
    .registers 11

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v4, v0

    :goto_6
    if-ge v3, p2, :cond_29

    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v0, v5

    const v5, 0x8000

    if-lt v0, v5, :cond_1f

    const v5, 0xffff

    sub-int v0, v5, v0

    :cond_1f
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    add-int/lit8 v0, v3, 0x2

    move v3, v0

    goto :goto_6

    :cond_29
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    int-to-float v3, p2

    div-float/2addr v0, v3

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    if-gez v0, :cond_43

    move v0, v2

    :cond_43
    if-le v0, v1, :cond_46

    move v0, v1

    :cond_46
    return v0
.end method

.method protected c([B)Z
    .registers 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/yunzhisheng/asr/VAD;->B:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->p:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->H()I

    move-result v4

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    :goto_1a
    if-ltz v2, :cond_2e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    if-lt v3, v4, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1a

    :cond_2e
    move v0, v1

    goto :goto_29
.end method

.method protected native checkPitchOffset(J[BI)I
.end method

.method protected native create()J
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcn/yunzhisheng/asr/VAD;->a()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    move-result v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_1b
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    :goto_e
    :try_start_e
    iget-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J

    invoke-virtual {p0, v0, v1}, Lcn/yunzhisheng/asr/VAD;->destory(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/yunzhisheng/asr/VAD;->i:J
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_18

    goto :goto_7

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_18

    goto :goto_e
.end method

.method protected native destory(J)V
.end method

.method public declared-synchronized e()V
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_21

    iget-boolean v1, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    iget-object v2, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_21
    iget-object v1, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_28
    if-ge v1, v2, :cond_3e

    iget-object v0, p0, Lcn/yunzhisheng/asr/VAD;->g:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-boolean v3, p0, Lcn/yunzhisheng/asr/VAD;->h:Z

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {p0, v3, v0, v4, v5}, Lcn/yunzhisheng/asr/VAD;->a(Z[BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_3e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/yunzhisheng/asr/VAD;->b(I)V
    :try_end_42
    .catchall {:try_start_2 .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected native getVolume(J)I
.end method

.method protected native init(J)V
.end method

.method protected native isVADTimeout(J[BI)I
.end method

.method protected native nativeSetOption(JILjava/lang/String;)I
.end method

.method protected native reset(J)V
.end method

.method protected native setTime(JII)V
.end method
