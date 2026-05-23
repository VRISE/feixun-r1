.class public Lorg/eclipse/paho/client/mqttv3/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final B:[B

.field private static final C:Ljava/lang/String; = "{xor}"

.field public static final a:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final b:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final c:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final d:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final e:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final f:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final g:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final h:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final i:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final j:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field public static final k:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final l:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final m:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field public static final n:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final o:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final p:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final q:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final r:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final s:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final t:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final u:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final v:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final w:Ljava/lang/String; = "TLS"

.field private static final x:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field private static final y:[Ljava/lang/String;


# instance fields
.field private A:Ljava/util/Properties;

.field private D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private z:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x8

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_5a

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    return-void

    :array_5a
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/logging/Logger;)V
    .registers 2

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    :goto_b
    if-eqz v0, :cond_14

    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    :cond_13
    :goto_13
    return-object v0

    :cond_14
    move-object v0, v1

    :cond_15
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz v1, :cond_13

    invoke-virtual {v1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_13

    :cond_20
    move-object v0, v1

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    if-eqz p3, :cond_6

    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_9
    array-length v2, p0

    if-lt v0, v2, :cond_11

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0

    :cond_11
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_20

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private a(Ljava/util/Properties;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " is not a valid IBM SSL property key."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a()Z
    .registers 1

    const-string v0, "javax.net.ssl.SSLServerSocketFactory"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a([C)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [B

    move v1, v0

    :goto_b
    array-length v2, p0

    if-lt v0, v2, :cond_10

    move-object v0, v3

    goto :goto_4

    :cond_10
    add-int/lit8 v4, v1, 0x1

    aget-char v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v1, v0, 0x1

    aget-char v0, p0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    move v1, v2

    goto :goto_b
.end method

.method public static a(Ljava/lang/String;)[C
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    const-string v1, "{xor}"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/b;->a(Ljava/lang/String;)[B
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_2f

    move-result-object v1

    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-lt v0, v2, :cond_1b

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a([B)[C

    move-result-object v0

    goto :goto_3

    :cond_1b
    aget-byte v2, v1, v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    array-length v4, v4

    rem-int v4, v0, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :catch_2f
    move-exception v1

    goto :goto_3
.end method

.method public static a([B)[C
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    move v2, v0

    :goto_b
    array-length v1, p0

    if-lt v2, v1, :cond_10

    move-object v0, v3

    goto :goto_4

    :cond_10
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v5, v2, 0xff

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v3, v0

    move v0, v1

    goto :goto_b
.end method

.method public static b([C)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a([C)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-lt v0, v2, :cond_25

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "{xor}"

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_25
    aget-byte v2, v1, v0

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/a/a/a;->B:[B

    array-length v4, v4

    rem-int v4, v0, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private b(Ljava/util/Properties;)V
    .registers 4

    const-string v0, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const-string v0, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string v1, "{xor}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v4, 0x2c

    if-nez p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_10
    const/4 v3, -0x1

    if-gt v1, v3, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_5

    :cond_24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_10
.end method

.method private t(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_e

    :cond_7
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a/a;->y:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private u(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 15

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "TLS"

    :cond_c
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_24

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "getSSLContext"

    const-string v6, "12000"

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz p1, :cond_218

    move-object v1, p1

    :goto_1d
    aput-object v1, v7, v8

    aput-object v0, v7, v9

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21c

    :try_start_2a
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    :goto_2f
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_52

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "getSSLContext"

    const-string v5, "12001"

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_223

    move-object v0, p1

    :goto_42
    aput-object v0, v7, v8

    const/4 v0, 0x1

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    invoke-interface {v1, v3, v4, v5, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_52
    const-string v0, "com.ibm.ssl.keyStore"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_2d7

    if-nez v4, :cond_65

    const-string v0, "com.ibm.ssl.keyStore"

    const-string v1, "javax.net.ssl.keyStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_65
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_83

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "getSSLContext"

    const-string v7, "12004"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz p1, :cond_227

    move-object v0, p1

    :goto_78
    aput-object v0, v8, v9

    const/4 v9, 0x1

    if-eqz v4, :cond_22b

    move-object v0, v4

    :goto_7e
    aput-object v0, v8, v9

    invoke-interface {v1, v3, v5, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_83
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->h(Ljava/lang/String;)[C

    move-result-object v5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_a8

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v8, "12005"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p1, :cond_22f

    move-object v0, p1

    :goto_9a
    aput-object v0, v9, v10

    const/4 v10, 0x1

    if-eqz v5, :cond_233

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    :goto_a3
    aput-object v0, v9, v10

    invoke-interface {v1, v3, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a8
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b2

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_b2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_d0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12006"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_237

    move-object v0, p1

    :goto_c5
    aput-object v0, v10, v11

    const/4 v11, 0x1

    if-eqz v3, :cond_23b

    move-object v0, v3

    :goto_cb
    aput-object v0, v10, v11

    invoke-interface {v1, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->k(Ljava/lang/String;)Ljava/lang/String;
    :try_end_db
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_db} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_2a .. :try_end_db} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_2a .. :try_end_db} :catch_275

    move-result-object v0

    if-eqz v0, :cond_2da

    :goto_de
    if-eqz v4, :cond_2d7

    if-eqz v3, :cond_2d7

    if-eqz v0, :cond_2d7

    :try_start_e4
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v7, :cond_23f

    invoke-static {v0, v7}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    move-object v3, v1

    :goto_f7
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_133

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v9, "getSSLContext"

    const-string v10, "12010"

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p1, :cond_246

    move-object v1, p1

    :goto_10a
    aput-object v1, v11, v12

    const/4 v1, 0x1

    if-eqz v0, :cond_24a

    :goto_10f
    aput-object v0, v11, v1

    invoke-interface {v4, v7, v9, v10, v11}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v9, "12009"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_24e

    move-object v0, p1

    :goto_123
    aput-object v0, v10, v11

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v0

    invoke-interface {v1, v4, v7, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_133
    invoke-virtual {v3, v8, v5}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_139
    .catch Ljava/security/KeyStoreException; {:try_start_e4 .. :try_end_139} :catch_252
    .catch Ljava/security/cert/CertificateException; {:try_start_e4 .. :try_end_139} :catch_260
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_139} :catch_26e
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_139} :catch_27c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_e4 .. :try_end_139} :catch_283
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e4 .. :try_end_139} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_e4 .. :try_end_139} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_e4 .. :try_end_139} :catch_275

    move-result-object v0

    move-object v5, v0

    :goto_13b
    :try_start_13b
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_15d

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v7, "getSSLContext"

    const-string v8, "12011"

    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz p1, :cond_28a

    move-object v0, p1

    :goto_152
    aput-object v0, v9, v10

    const/4 v10, 0x1

    if-eqz v4, :cond_28e

    move-object v0, v4

    :goto_158
    aput-object v0, v9, v10

    invoke-interface {v1, v3, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15d
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->m(Ljava/lang/String;)[C

    move-result-object v7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_182

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12012"

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_292

    move-object v0, p1

    :goto_174
    aput-object v0, v10, v11

    const/4 v11, 0x1

    if-eqz v7, :cond_296

    invoke-static {v7}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b([C)Ljava/lang/String;

    move-result-object v0

    :goto_17d
    aput-object v0, v10, v11

    invoke-interface {v1, v3, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_182
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18c

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v3

    :cond_18c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_1aa

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v8, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v9, "getSSLContext"

    const-string v10, "12013"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p1, :cond_29a

    move-object v0, p1

    :goto_19f
    aput-object v0, v11, v12

    const/4 v12, 0x1

    if-eqz v3, :cond_29e

    move-object v0, v3

    :goto_1a5
    aput-object v0, v11, v12

    invoke-interface {v1, v8, v9, v10, v11}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1aa
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->p(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13b .. :try_end_1b5} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_13b .. :try_end_1b5} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_13b .. :try_end_1b5} :catch_275

    move-result-object v0

    if-eqz v0, :cond_2d4

    :goto_1b8
    if-eqz v4, :cond_2d1

    if-eqz v3, :cond_2d1

    if-eqz v0, :cond_2d1

    :try_start_1be
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v8, :cond_2a2

    invoke-static {v0, v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v2, v1

    :goto_1d1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_20c

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v7, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v8, "getSSLContext"

    const-string v9, "12017"

    const/4 v1, 0x2

    new-array v10, v1, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz p1, :cond_2a9

    move-object v1, p1

    :goto_1e4
    aput-object v1, v10, v11

    const/4 v1, 0x1

    if-eqz v0, :cond_2ad

    :goto_1e9
    aput-object v0, v10, v1

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "getSSLContext"

    const-string v7, "12016"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-eqz p1, :cond_2b1

    :goto_1fc
    aput-object p1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v10

    invoke-virtual {v10}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v0, v1, v4, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20c
    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_212
    .catch Ljava/security/KeyStoreException; {:try_start_1be .. :try_end_212} :catch_2b5
    .catch Ljava/security/cert/CertificateException; {:try_start_1be .. :try_end_212} :catch_2bc
    .catch Ljava/io/FileNotFoundException; {:try_start_1be .. :try_end_212} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_212} :catch_2ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1be .. :try_end_212} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_1be .. :try_end_212} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_1be .. :try_end_212} :catch_275

    move-result-object v0

    :goto_213
    const/4 v1, 0x0

    :try_start_214
    invoke-virtual {v6, v5, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_217
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_214 .. :try_end_217} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_214 .. :try_end_217} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_214 .. :try_end_217} :catch_275

    return-object v6

    :cond_218
    const-string v1, "null (broker defaults)"

    goto/16 :goto_1d

    :cond_21c
    :try_start_21c
    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_2f

    :cond_223
    const-string v0, "null (broker defaults)"

    goto/16 :goto_42

    :cond_227
    const-string v0, "null (broker defaults)"

    goto/16 :goto_78

    :cond_22b
    const-string v0, "null"

    goto/16 :goto_7e

    :cond_22f
    const-string v0, "null (broker defaults)"

    goto/16 :goto_9a

    :cond_233
    const-string v0, "null"

    goto/16 :goto_a3

    :cond_237
    const-string v0, "null (broker defaults)"

    goto/16 :goto_c5

    :cond_23b
    const-string v0, "null"
    :try_end_23d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_21c .. :try_end_23d} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_21c .. :try_end_23d} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_21c .. :try_end_23d} :catch_275

    goto/16 :goto_cb

    :cond_23f
    :try_start_23f
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_f7

    :cond_246
    const-string v1, "null (broker defaults)"

    goto/16 :goto_10a

    :cond_24a
    const-string v0, "null"

    goto/16 :goto_10f

    :cond_24e
    const-string v0, "null (broker defaults)"
    :try_end_250
    .catch Ljava/security/KeyStoreException; {:try_start_23f .. :try_end_250} :catch_252
    .catch Ljava/security/cert/CertificateException; {:try_start_23f .. :try_end_250} :catch_260
    .catch Ljava/io/FileNotFoundException; {:try_start_23f .. :try_end_250} :catch_26e
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_250} :catch_27c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_23f .. :try_end_250} :catch_283
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_23f .. :try_end_250} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_23f .. :try_end_250} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_23f .. :try_end_250} :catch_275

    goto/16 :goto_123

    :catch_252
    move-exception v0

    :try_start_253
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_259
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_253 .. :try_end_259} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_253 .. :try_end_259} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_253 .. :try_end_259} :catch_275

    :catch_259
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_260
    move-exception v0

    :try_start_261
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_267
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_261 .. :try_end_267} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_261 .. :try_end_267} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_261 .. :try_end_267} :catch_275

    :catch_267
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26e
    move-exception v0

    :try_start_26f
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_275
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_26f .. :try_end_275} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_26f .. :try_end_275} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_26f .. :try_end_275} :catch_275

    :catch_275
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_27c
    move-exception v0

    :try_start_27d
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_283
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_28a
    const-string v0, "null (broker defaults)"

    goto/16 :goto_152

    :cond_28e
    const-string v0, "null"

    goto/16 :goto_158

    :cond_292
    const-string v0, "null (broker defaults)"

    goto/16 :goto_174

    :cond_296
    const-string v0, "null"

    goto/16 :goto_17d

    :cond_29a
    const-string v0, "null (broker defaults)"

    goto/16 :goto_19f

    :cond_29e
    const-string v0, "null"
    :try_end_2a0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27d .. :try_end_2a0} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_27d .. :try_end_2a0} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_27d .. :try_end_2a0} :catch_275

    goto/16 :goto_1a5

    :cond_2a2
    :try_start_2a2
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1d1

    :cond_2a9
    const-string v1, "null (broker defaults)"

    goto/16 :goto_1e4

    :cond_2ad
    const-string v0, "null"

    goto/16 :goto_1e9

    :cond_2b1
    const-string p1, "null (broker defaults)"
    :try_end_2b3
    .catch Ljava/security/KeyStoreException; {:try_start_2a2 .. :try_end_2b3} :catch_2b5
    .catch Ljava/security/cert/CertificateException; {:try_start_2a2 .. :try_end_2b3} :catch_2bc
    .catch Ljava/io/FileNotFoundException; {:try_start_2a2 .. :try_end_2b3} :catch_2c3
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2b3} :catch_2ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a2 .. :try_end_2b3} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_2a2 .. :try_end_2b3} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_2a2 .. :try_end_2b3} :catch_275

    goto/16 :goto_1fc

    :catch_2b5
    move-exception v0

    :try_start_2b6
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2bc
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2c3
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2ca
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2d1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b6 .. :try_end_2d1} :catch_259
    .catch Ljava/security/NoSuchProviderException; {:try_start_2b6 .. :try_end_2d1} :catch_267
    .catch Ljava/security/KeyManagementException; {:try_start_2b6 .. :try_end_2d1} :catch_275

    :cond_2d1
    move-object v0, v2

    goto/16 :goto_213

    :cond_2d4
    move-object v0, v1

    goto/16 :goto_1b8

    :cond_2d7
    move-object v5, v2

    goto/16 :goto_13b

    :cond_2da
    move-object v0, v1

    goto/16 :goto_de
.end method


# virtual methods
.method public a(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/util/Properties;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/util/Properties;)V

    if-eqz p2, :cond_16

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    return-void

    :cond_16
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_15
.end method

.method public b(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz p2, :cond_f

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    :cond_f
    if-nez v0, :cond_16

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :cond_16
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/util/Properties;)V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    if-eqz p2, :cond_24

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    return-void

    :cond_24
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_23
.end method

.method public c(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :cond_f
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    if-eqz v2, :cond_17

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    goto :goto_c

    :cond_17
    move v0, v1

    goto :goto_c
.end method

.method public d(Ljava/lang/String;)Ljava/util/Properties;
    .registers 3

    if-nez p1, :cond_7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->A:Ljava/util/Properties;

    :goto_4
    check-cast v0, Ljava/util/Properties;

    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->z:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.keyStore"

    const-string v1, "javax.net.ssl.keyStore"

    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public h(Ljava/lang/String;)[C
    .registers 4

    const-string v0, "com.ibm.ssl.keyStorePassword"

    const-string v1, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_17

    const-string v0, "{xor}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;)[C

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_17
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/String;)[C
    .registers 4

    const-string v0, "com.ibm.ssl.trustStorePassword"

    const-string v1, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_17

    const-string v0, "{xor}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;)[C

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_17
.end method

.method public n(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "com.ibm.ssl.clientAuthentication"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_12
    return v0
.end method

.method public s(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 11

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->u(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a/a;->D:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "createSocketFactory"

    const-string v5, "12020"

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_31

    move-object v0, p1

    :goto_17
    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    const-string v0, "com.ibm.ssl.enabledCipherSuites"

    const/4 v8, 0x0

    invoke-direct {p0, p1, v0, v8}, Lorg/eclipse/paho/client/mqttv3/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    aput-object v0, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    :cond_31
    const-string v0, "null (broker defaults)"

    goto :goto_17

    :cond_34
    const-string v0, "null (using platform-enabled cipher suites)"

    goto :goto_27
.end method
