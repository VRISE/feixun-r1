.class public final Lorg/eclipse/paho/client/mqttv3/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->b(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/CharSequence;[C)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a([C)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    array-length v5, p1

    add-int/lit8 v6, v4, -0x1

    add-int/lit8 v7, v5, -0x1

    move v3, v1

    :goto_1a
    if-lt v3, v4, :cond_1e

    move v0, v1

    goto :goto_f

    :cond_1e
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move v2, v1

    :goto_23
    if-lt v2, v5, :cond_29

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1a

    :cond_29
    aget-char v9, p1, v2

    if-ne v9, v8, :cond_43

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eq v2, v7, :cond_f

    if-ge v3, v6, :cond_43

    add-int/lit8 v9, v2, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_f

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_23
.end method

.method public static a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_23

    if-nez p1, :cond_f

    move v0, v1

    :goto_7
    if-eqz p1, :cond_21

    move v3, v0

    move v0, v2

    :goto_b
    array-length v4, p1

    if-lt v0, v4, :cond_11

    :goto_e
    return v3

    :cond_f
    move v0, v2

    goto :goto_7

    :cond_11
    if-nez v3, :cond_1f

    aget-object v3, p1, v0

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    move v3, v2

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move v3, v1

    goto :goto_1c

    :cond_21
    move v3, v0

    goto :goto_e

    :cond_23
    move v0, v2

    goto :goto_7
.end method

.method private static a([C)Z
    .registers 2

    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_d
    move v1, v0

    :cond_e
    return v1

    :cond_f
    move v1, v0

    :goto_10
    invoke-static {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_10
.end method

.method private static b(Ljava/lang/CharSequence;)[C
    .registers 5

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_a

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method
