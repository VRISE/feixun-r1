.class public final Lcom/baidu/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/baidu/a/a/a/a/b;->a:[B

    return-void

    :array_a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .registers 13

    const/16 v10, 0x3d

    const/4 v3, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4c

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    new-array v5, v0, [B

    array-length v0, p0

    array-length v1, p0

    rem-int/lit8 v1, v1, 0x3

    sub-int v6, v0, v1

    move v0, v3

    move v4, v3

    move v1, v3

    :goto_18
    if-ge v4, v6, :cond_7a

    add-int/lit8 v2, v1, 0x1

    sget-object v7, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v8, p0, v4

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    aput-byte v7, v5, v1

    add-int/lit8 v1, v2, 0x1

    sget-object v7, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v8, p0, v4

    and-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    aget-byte v7, v7, v8

    aput-byte v7, v5, v2

    add-int/lit8 v7, v1, 0x1

    sget-object v2, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0xf

    shl-int/lit8 v8, v8, 0x2

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v9, v9, 0x6

    or-int/2addr v8, v9

    aget-byte v2, v2, v8

    aput-byte v2, v5, v1

    add-int/lit8 v2, v7, 0x1

    sget-object v1, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p0, v8

    and-int/lit8 v8, v8, 0x3f

    aget-byte v1, v1, v8

    aput-byte v1, v5, v7

    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4c

    if-nez v1, :cond_e6

    if-eqz v2, :cond_e6

    add-int/lit8 v1, v2, 0x1

    const/16 v7, 0xa

    aput-byte v7, v5, v2

    add-int/lit8 v0, v0, 0x1

    :goto_76
    add-int/lit8 v2, v4, 0x3

    move v4, v2

    goto :goto_18

    :cond_7a
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_e8

    move v0, v1

    :goto_81
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5, v3, v0, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v1

    :pswitch_87
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v4, p0, v6

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    aget-byte v2, v2, v4

    aput-byte v2, v5, v0

    add-int/lit8 v2, v1, 0x1

    aput-byte v10, v5, v1

    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v5, v2

    goto :goto_81

    :pswitch_ac
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v4, p0, v6

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v4, p0, v6

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v7, v6, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-byte v2, v2, v4

    aput-byte v2, v5, v0

    add-int/lit8 v2, v1, 0x1

    sget-object v0, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v4, v6, 0x1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    aget-byte v0, v0, v4

    aput-byte v0, v5, v1

    add-int/lit8 v0, v2, 0x1

    aput-byte v10, v5, v2

    goto :goto_81

    :cond_e6
    move v1, v2

    goto :goto_76

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_87
        :pswitch_ac
    .end packed-switch
.end method

.method public static a([B)[B
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/a/a/a/a/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .registers 16

    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v1, 0x0

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_12

    new-array v0, v1, [B

    :goto_11
    return-object v0

    :cond_12
    new-array v7, v0, [B

    move v0, v1

    :goto_15
    add-int/lit8 v2, p1, -0x1

    aget-byte v2, p0, v2

    if-eq v2, v10, :cond_21

    if-eq v2, v11, :cond_21

    if-eq v2, v12, :cond_21

    if-ne v2, v9, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    :cond_24
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_2b
    move v6, v1

    move v4, v1

    move v5, v1

    move v3, v1

    :goto_2f
    if-ge v6, p1, :cond_a1

    aget-byte v2, p0, v6

    if-eq v2, v10, :cond_c9

    if-eq v2, v11, :cond_c9

    if-eq v2, v12, :cond_c9

    if-ne v2, v9, :cond_45

    move v2, v4

    move v4, v3

    move v3, v5

    :goto_3e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    move v3, v4

    move v4, v2

    goto :goto_2f

    :cond_45
    const/16 v8, 0x41

    if-lt v2, v8, :cond_7a

    const/16 v8, 0x5a

    if-gt v2, v8, :cond_7a

    add-int/lit8 v2, v2, -0x41

    :goto_4f
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v2, v2

    or-int/2addr v4, v2

    rem-int/lit8 v2, v5, 0x4

    const/4 v8, 0x3

    if-ne v2, v8, :cond_c7

    add-int/lit8 v2, v3, 0x1

    const/high16 v8, 0xff0000

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v2, 0x1

    const v8, 0xff00

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v8, v4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    :goto_74
    add-int/lit8 v3, v5, 0x1

    move v13, v4

    move v4, v2

    move v2, v13

    goto :goto_3e

    :cond_7a
    const/16 v8, 0x61

    if-lt v2, v8, :cond_85

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_85

    add-int/lit8 v2, v2, -0x47

    goto :goto_4f

    :cond_85
    const/16 v8, 0x30

    if-lt v2, v8, :cond_90

    const/16 v8, 0x39

    if-gt v2, v8, :cond_90

    add-int/lit8 v2, v2, 0x4

    goto :goto_4f

    :cond_90
    const/16 v8, 0x2b

    if-ne v2, v8, :cond_97

    const/16 v2, 0x3e

    goto :goto_4f

    :cond_97
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_9e

    const/16 v2, 0x3f

    goto :goto_4f

    :cond_9e
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_a1
    if-lez v0, :cond_be

    mul-int/lit8 v2, v0, 0x6

    shl-int/2addr v4, v2

    add-int/lit8 v2, v3, 0x1

    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c5

    add-int/lit8 v3, v2, 0x1

    const v0, 0xff00

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v7, v2

    :cond_be
    :goto_be
    new-array v0, v3, [B

    invoke-static {v7, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_11

    :cond_c5
    move v3, v2

    goto :goto_be

    :cond_c7
    move v2, v3

    goto :goto_74

    :cond_c9
    move v2, v4

    move v4, v3

    move v3, v5

    goto/16 :goto_3e
.end method
