.class public Lcom/baidu/location/Jni;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput v1, Lcom/baidu/location/Jni;->a:I

    sput v2, Lcom/baidu/location/Jni;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/baidu/location/Jni;->c:I

    const/16 v0, 0xb

    sput v0, Lcom/baidu/location/Jni;->d:I

    const/16 v0, 0xc

    sput v0, Lcom/baidu/location/Jni;->e:I

    const/16 v0, 0xd

    sput v0, Lcom/baidu/location/Jni;->f:I

    const/16 v0, 0xe

    sput v0, Lcom/baidu/location/Jni;->g:I

    const/16 v0, 0xf

    sput v0, Lcom/baidu/location/Jni;->h:I

    const/16 v0, 0x400

    sput v0, Lcom/baidu/location/Jni;->i:I

    sput-boolean v1, Lcom/baidu/location/Jni;->j:Z

    :try_start_23
    const-string v0, "locSDK7b"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_23 .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    sput-boolean v2, Lcom/baidu/location/Jni;->j:Z

    goto :goto_28
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "err!"

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/baidu/location/Jni;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|tp=3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method private static native a([BI)Ljava/lang/String;
.end method

.method public static a(DDLjava/lang/String;)[D
    .registers 13

    const/4 v0, 0x2

    new-array v6, v0, [D

    fill-array-data v6, :array_8c

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    if-eqz v0, :cond_c

    move-object v0, v6

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, -0x1

    const-string v1, "bd09"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget v0, Lcom/baidu/location/Jni;->a:I

    :cond_17
    :goto_17
    const-string v1, "gcj2wgs"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/16 v4, 0x10

    :goto_21
    const v5, 0x20568

    move-wide v0, p0

    move-wide v2, p2

    :try_start_26
    invoke-static/range {v0 .. v5}, Lcom/baidu/location/Jni;->b(DDII)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v6, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v6, v1
    :try_end_44
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_26 .. :try_end_44} :catch_88

    :goto_44
    move-object v0, v6

    goto :goto_b

    :cond_46
    const-string v1, "bd09ll"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    sget v0, Lcom/baidu/location/Jni;->b:I

    goto :goto_17

    :cond_51
    const-string v1, "gcj02"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    sget v0, Lcom/baidu/location/Jni;->c:I

    goto :goto_17

    :cond_5c
    const-string v1, "gps2gcj"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    sget v0, Lcom/baidu/location/Jni;->d:I

    goto :goto_17

    :cond_67
    const-string v1, "bd092gcj"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget v0, Lcom/baidu/location/Jni;->e:I

    goto :goto_17

    :cond_72
    const-string v1, "bd09ll2gcj"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    sget v0, Lcom/baidu/location/Jni;->f:I

    goto :goto_17

    :cond_7d
    const-string v1, "wgs842mc"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget v0, Lcom/baidu/location/Jni;->h:I

    goto :goto_17

    :catch_88
    move-exception v0

    goto :goto_44

    :cond_8a
    move v4, v0

    goto :goto_21

    :array_8c
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private static native b(DDII)Ljava/lang/String;
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/16 v0, 0x2e4

    const/4 v2, 0x0

    sget-boolean v1, Lcom/baidu/location/Jni;->j:Z

    if-eqz v1, :cond_a

    const-string v0, "err!"

    :goto_9
    return-object v0

    :cond_a
    if-nez p0, :cond_f

    const-string v0, "null"

    goto :goto_9

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget v1, Lcom/baidu/location/Jni;->i:I

    new-array v4, v1, [B

    array-length v1, v3

    if-le v1, v0, :cond_3b

    :goto_1a
    move v1, v2

    :goto_1b
    if-ge v2, v0, :cond_2a

    aget-byte v5, v3, v2

    if-eqz v5, :cond_27

    aget-byte v5, v3, v2

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2a
    const-string v0, "err!"

    const v0, 0x20568

    :try_start_2f
    invoke-static {v4, v0}, Lcom/baidu/location/Jni;->a([BI)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2f .. :try_end_32} :catch_34

    move-result-object v0

    goto :goto_9

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, "err!"

    goto :goto_9

    :cond_3b
    move v0, v1

    goto :goto_1a
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/Long;
    .registers 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/baidu/location/Jni;->j:Z

    if-eqz v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    const-string v2, ""

    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_1c

    :goto_13
    :try_start_13
    invoke-static {v1}, Lcom/baidu/location/Jni;->murmur(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_13 .. :try_end_1a} :catch_1f

    move-result-object v0

    goto :goto_5

    :catch_1c
    move-exception v1

    move-object v1, v2

    goto :goto_13

    :catch_1f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_5
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-boolean v0, Lcom/baidu/location/Jni;->j:Z

    if-eqz v0, :cond_7

    const-string v0, "err!"

    :goto_6
    return-object v0

    :cond_7
    const-string v1, ""

    :try_start_9
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_31

    :goto_14
    const-string v1, "err!"

    const v1, 0x20568

    :try_start_19
    invoke-static {v0, v1}, Lcom/baidu/location/Jni;->ee(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_19 .. :try_end_1c} :catch_34

    move-result-object v0

    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|tp=4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :catch_31
    move-exception v0

    move-object v0, v1

    goto :goto_14

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v0, "err!"

    goto :goto_1d
.end method

.method private static native ee(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native murmur(Ljava/lang/String;)J
.end method
