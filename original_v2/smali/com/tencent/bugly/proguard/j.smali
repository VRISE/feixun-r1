.class public final Lcom/tencent/bugly/proguard/j;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const-string v0, "GBK"

    iput-object v0, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    .line 23
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, p1, :cond_27

    .line 44
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr v0, p1

    shl-int/lit8 v0, v0, 0x1

    .line 45
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 47
    iput-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    .line 48
    :cond_27
    return-void
.end method

.method private b(BI)V
    .registers 6

    .prologue
    .line 55
    const/16 v0, 0xf

    if-ge p2, v0, :cond_e

    .line 56
    shl-int/lit8 v0, p2, 0x4

    or-int/2addr v0, p1

    int-to-byte v0, v0

    .line 57
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    :goto_d
    return-void

    .line 58
    :cond_e
    const/16 v0, 0x100

    if-ge p2, v0, :cond_21

    .line 59
    or-int/lit16 v0, p1, 0xf0

    int-to-byte v0, v0

    .line 60
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_d

    .line 63
    :cond_21
    new-instance v0, Lcom/tencent/bugly/proguard/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public final a()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(BI)V
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 76
    if-nez p1, :cond_c

    .line 77
    const/16 v0, 0xc

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 82
    :goto_b
    return-void

    .line 79
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 80
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_b
.end method

.method public final a(II)V
    .registers 4

    .prologue
    .line 97
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 98
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_11

    .line 99
    int-to-short v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    .line 104
    :goto_10
    return-void

    .line 101
    :cond_11
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 102
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public final a(JI)V
    .registers 7

    .prologue
    .line 108
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 109
    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_18

    .line 110
    long-to-int v0, p1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 115
    :goto_17
    return-void

    .line 112
    :cond_18
    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 113
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_17
.end method

.method public final a(Lcom/tencent/bugly/proguard/k;I)V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 289
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 290
    const/16 v0, 0xa

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 291
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/j;)V

    .line 292
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 293
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 294
    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/16 v6, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 333
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_16

    .line 334
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 372
    :cond_15
    :goto_15
    return-void

    .line 335
    :cond_16
    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_29

    .line 336
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    :goto_22
    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    goto :goto_15

    :cond_27
    move v0, v1

    goto :goto_22

    .line 337
    :cond_29
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_37

    .line 338
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    goto :goto_15

    .line 339
    :cond_37
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_45

    .line 340
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(II)V

    goto :goto_15

    .line 341
    :cond_45
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_53

    .line 342
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    goto :goto_15

    .line 343
    :cond_53
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_6b

    .line 344
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 345
    :cond_6b
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_82

    .line 346
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/4 v2, 0x5

    invoke-direct {p0, v2, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 347
    :cond_82
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_8c

    .line 348
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    goto :goto_15

    .line 349
    :cond_8c
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_96

    .line 350
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    goto :goto_15

    .line 351
    :cond_96
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_a1

    .line 352
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    goto/16 :goto_15

    .line 353
    :cond_a1
    instance-of v2, p1, Lcom/tencent/bugly/proguard/k;

    if-eqz v2, :cond_bc

    .line 354
    check-cast p1, Lcom/tencent/bugly/proguard/k;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v6, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/k;->a(Lcom/tencent/bugly/proguard/j;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    goto/16 :goto_15

    .line 355
    :cond_bc
    instance-of v2, p1, [B

    if-eqz v2, :cond_c7

    .line 356
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a([BI)V

    goto/16 :goto_15

    .line 357
    :cond_c7
    instance-of v2, p1, [Z

    if-eqz v2, :cond_ea

    .line 358
    check-cast p1, [Z

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v2, p1

    invoke-virtual {p0, v2, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v4, p1

    move v3, v1

    :goto_d9
    if-ge v3, v4, :cond_15

    aget-boolean v2, p1, v3

    if-eqz v2, :cond_e8

    move v2, v0

    :goto_e0
    int-to-byte v2, v2

    invoke-virtual {p0, v2, v1}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_d9

    :cond_e8
    move v2, v1

    goto :goto_e0

    .line 359
    :cond_ea
    instance-of v0, p1, [S

    if-eqz v0, :cond_106

    .line 360
    check-cast p1, [S

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_fc
    if-ge v0, v2, :cond_15

    aget-short v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/bugly/proguard/j;->a(SI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_fc

    .line 361
    :cond_106
    instance-of v0, p1, [I

    if-eqz v0, :cond_122

    .line 362
    check-cast p1, [I

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_118
    if-ge v0, v2, :cond_15

    aget v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    .line 363
    :cond_122
    instance-of v0, p1, [J

    if-eqz v0, :cond_13e

    .line 364
    check-cast p1, [J

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_134
    if-ge v0, v2, :cond_15

    aget-wide v4, p1, v0

    invoke-virtual {p0, v4, v5, v1}, Lcom/tencent/bugly/proguard/j;->a(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_134

    .line 365
    :cond_13e
    instance-of v0, p1, [F

    if-eqz v0, :cond_164

    .line 366
    check-cast p1, [F

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_150
    if-ge v0, v2, :cond_15

    aget v3, p1, v0

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4, v1}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v4, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_150

    .line 367
    :cond_164
    instance-of v0, p1, [D

    if-eqz v0, :cond_189

    .line 368
    check-cast p1, [D

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_176
    if-ge v0, v2, :cond_15

    aget-wide v4, p1, v0

    invoke-direct {p0, v6}, Lcom/tencent/bugly/proguard/j;->a(I)V

    const/4 v3, 0x5

    invoke-direct {p0, v3, v1}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_176

    .line 369
    :cond_189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1ab

    .line 370
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/j;->a(I)V

    invoke-direct {p0, v4, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    array-length v2, p1

    move v0, v1

    :goto_1a1
    if-ge v0, v2, :cond_15

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a1

    .line 371
    :cond_1ab
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1b6

    .line 372
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Collection;I)V

    goto/16 :goto_15

    .line 374
    :cond_1b6
    new-instance v0, Lcom/tencent/bugly/proguard/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write object error: unsupport type. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_21

    move-result-object v0

    .line 174
    :goto_6
    array-length v1, v0

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 175
    array-length v1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_27

    .line 176
    const/4 v1, 0x7

    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 177
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    :goto_20
    return-void

    .line 172
    :catch_21
    move-exception v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_6

    .line 180
    :cond_27
    const/4 v1, 0x6

    invoke-direct {p0, v1, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 181
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_20
.end method

.method public final a(Ljava/util/Collection;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 279
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 280
    if-nez p1, :cond_25

    move v0, v1

    :goto_e
    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 281
    if-eqz p1, :cond_2a

    .line 282
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 283
    invoke-virtual {p0, v2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    goto :goto_17

    .line 280
    :cond_25
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_e

    .line 285
    :cond_2a
    return-void
.end method

.method public final a(Ljava/util/Map;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 189
    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 190
    if-nez p1, :cond_35

    move v0, v1

    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 191
    if-eqz p1, :cond_3a

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 193
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    .line 194
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    goto :goto_19

    .line 190
    :cond_35
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_c

    .line 197
    :cond_3a
    return-void
.end method

.method public final a(SI)V
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 87
    const/16 v0, -0x80

    if-lt p1, v0, :cond_11

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_11

    .line 88
    int-to-byte v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 93
    :goto_10
    return-void

    .line 90
    :cond_11
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 91
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_10
.end method

.method public final a(ZI)V
    .registers 4

    .prologue
    .line 69
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    :goto_3
    int-to-byte v0, v0

    .line 70
    invoke-virtual {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->a(BI)V

    .line 71
    return-void

    .line 69
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final a([BI)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 210
    array-length v0, p1

    add-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/j;->a(I)V

    .line 211
    const/16 v0, 0xd

    invoke-direct {p0, v0, p2}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 212
    invoke-direct {p0, v1, v1}, Lcom/tencent/bugly/proguard/j;->b(BI)V

    .line 213
    array-length v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(II)V

    .line 214
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 215
    return-void
.end method

.method public final b()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    new-array v0, v0, [B

    .line 37
    iget-object v1, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/bugly/proguard/j;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    return-object v0
.end method
