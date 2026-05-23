.class public final Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static b:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    .line 52
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;
    .registers 2

    .prologue
    .line 61
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    .line 64
    :cond_b
    sget-object v0, Lcom/tencent/bugly/proguard/s;->b:Lcom/tencent/bugly/proguard/s;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 6

    .prologue
    .line 290
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    if-eqz p0, :cond_57

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 294
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 298
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 299
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 303
    :goto_37
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 304
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 305
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 307
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 310
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 318
    :goto_56
    return-object v0

    .line 301
    :cond_57
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_37

    .line 313
    :catch_5e
    move-exception v0

    .line 314
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 315
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    :cond_68
    const/4 v0, 0x0

    goto :goto_56
.end method

.method private a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 237
    if-nez p1, :cond_d

    .line 238
    const-string v0, "destUrl is null."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 278
    :goto_c
    return-object v0

    .line 242
    :cond_d
    invoke-static {p3, p1}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 243
    if-nez v3, :cond_1c

    .line 244
    const-string v0, "Failed to get HttpURLConnection object."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 245
    goto :goto_c

    .line 250
    :cond_1c
    :try_start_1c
    const-string v0, "wup_version"

    const-string v1, "3.0"

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz p4, :cond_68

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_68

    .line 252
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_54} :catch_55

    goto :goto_33

    .line 272
    :catch_55
    move-exception v0

    .line 273
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 274
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    :cond_5f
    const-string v0, "Failed to upload, please check your network."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v0, v2

    .line 278
    goto :goto_c

    .line 258
    :cond_68
    :try_start_68
    const-string v0, "A37"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "A38"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 266
    if-nez p2, :cond_8a

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_88
    move-object v0, v3

    .line 271
    goto :goto_c

    .line 269
    :cond_8a
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_8d} :catch_55

    goto :goto_88
.end method

.method private static a(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 177
    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 178
    :cond_11
    const/4 v0, 0x0

    .line 188
    :goto_12
    return-object v0

    .line 180
    :cond_13
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1b

    .line 185
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_3c
    move-object v0, v2

    .line 188
    goto :goto_12
.end method

.method private static b(Ljava/net/HttpURLConnection;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 198
    if-nez p0, :cond_4

    .line 225
    :cond_3
    :goto_3
    return-object v0

    .line 203
    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_d} :catch_56
    .catchall {:try_start_4 .. :try_end_d} :catchall_46

    .line 204
    :try_start_d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 207
    :goto_16
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_36

    .line 208
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_20} :catch_21
    .catchall {:try_start_d .. :try_end_20} :catchall_54

    goto :goto_16

    .line 212
    :catch_21
    move-exception v1

    .line 213
    :goto_22
    :try_start_22
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 214
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_54

    .line 218
    :cond_2b
    if-eqz v2, :cond_3

    .line 219
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_3

    .line 221
    :catch_31
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 210
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 211
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3c} :catch_21
    .catchall {:try_start_36 .. :try_end_3c} :catchall_54

    move-result-object v0

    .line 218
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_3

    .line 221
    :catch_41
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 217
    :catchall_46
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 218
    :goto_49
    if-eqz v2, :cond_4e

    .line 219
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 223
    :cond_4e
    :goto_4e
    throw v0

    .line 221
    :catch_4f
    move-exception v1

    .line 222
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4e

    .line 217
    :catchall_54
    move-exception v0

    goto :goto_49

    .line 212
    :catch_56
    move-exception v1

    move-object v2, v0

    goto :goto_22
.end method


# virtual methods
.method public final a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/v;Ljava/util/Map;)[B
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/tencent/bugly/proguard/v;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_c

    .line 78
    const-string v4, "Failed for no URL."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 79
    const/4 v4, 0x0

    .line 166
    :goto_b
    return-object v4

    .line 81
    :cond_c
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    if-nez p2, :cond_57

    const-wide/16 v4, 0x0

    .line 85
    :goto_12
    const-string v6, "request: %s, send: %d (pid=%d | tid=%d)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 89
    const/4 v6, 0x0

    move-object/from16 v9, p1

    .line 90
    :goto_3d
    if-gtz v7, :cond_1ae

    if-gtz v8, :cond_1ae

    .line 92
    if-eqz v6, :cond_5c

    .line 93
    const/4 v6, 0x0

    .line 106
    :cond_44
    :goto_44
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/bugly/proguard/s;->c:Landroid/content/Context;

    invoke-static {v10}, Lcom/tencent/bugly/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 107
    if-nez v10, :cond_8d

    .line 108
    const-string v10, "Failed to request for network not avail"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3d

    .line 83
    :cond_57
    move-object/from16 v0, p2

    array-length v4, v0

    int-to-long v4, v4

    goto :goto_12

    .line 95
    :cond_5c
    add-int/lit8 v7, v7, 0x1

    .line 96
    const/4 v10, 0x1

    if-le v7, v10, :cond_44

    .line 97
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "try time: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 99
    new-instance v10, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v10, v12, v13}, Ljava/util/Random;-><init>(J)V

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x2710

    add-long/2addr v10, v12

    .line 102
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_44

    .line 112
    :cond_8d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lcom/tencent/bugly/proguard/v;->a(J)V

    .line 114
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v9, v1, v10, v2}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v14

    .line 116
    if-eqz v14, :cond_199

    .line 118
    :try_start_9e
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 119
    const/16 v10, 0xc8

    if-ne v12, v10, :cond_cf

    .line 121
    invoke-static {v14}, Lcom/tencent/bugly/proguard/s;->a(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 123
    invoke-static {v14}, Lcom/tencent/bugly/proguard/s;->b(Ljava/net/HttpURLConnection;)[B

    move-result-object v10

    .line 124
    if-nez v10, :cond_c1

    const-wide/16 v12, 0x0

    :goto_b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_bb} :catch_16b
    .catchall {:try_start_9e .. :try_end_bb} :catchall_189

    .line 152
    :try_start_bb
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_be} :catch_c4

    :cond_be
    :goto_be
    move-object v4, v10

    .line 157
    goto/16 :goto_b

    .line 124
    :cond_c1
    :try_start_c1
    array-length v11, v10
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c2} :catch_16b
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_189

    int-to-long v12, v11

    goto :goto_b6

    .line 153
    :catch_c4
    move-exception v4

    .line 154
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 155
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_be

    .line 126
    :cond_cf
    const/16 v10, 0x12d

    if-eq v12, v10, :cond_df

    const/16 v10, 0x12e

    if-eq v12, v10, :cond_df

    const/16 v10, 0x12f

    if-eq v12, v10, :cond_df

    const/16 v10, 0x133

    if-ne v12, v10, :cond_106

    :cond_df
    const/4 v10, 0x1

    :goto_e0
    if-eqz v10, :cond_1cc

    .line 127
    const/4 v10, 0x1

    .line 128
    :try_start_e3
    const-string v6, "Location"

    invoke-virtual {v14, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    if-nez v11, :cond_113

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Failed to redirect: %d"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v11}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_100} :catch_1b1
    .catchall {:try_start_e3 .. :try_end_100} :catchall_189

    .line 132
    :try_start_100
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_103
    .catch Ljava/lang/Throwable; {:try_start_100 .. :try_end_103} :catch_108

    .line 157
    :cond_103
    :goto_103
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 126
    :cond_106
    const/4 v10, 0x0

    goto :goto_e0

    .line 153
    :catch_108
    move-exception v4

    .line 154
    invoke-static {v4}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v5

    if-nez v5, :cond_103

    .line 155
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_103

    .line 135
    :cond_113
    add-int/lit8 v8, v8, 0x1

    .line 136
    const/4 v7, 0x0

    .line 138
    :try_start_116
    const-string v6, "redirect code: %d ,to:%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v13

    const/4 v13, 0x1

    aput-object v11, v9, v13

    invoke-static {v6, v9}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_128} :catch_1bd
    .catchall {:try_start_116 .. :try_end_128} :catchall_189

    move v6, v10

    move-object v9, v11

    move/from16 v16, v7

    move v7, v8

    move/from16 v8, v16

    .line 141
    :goto_12f
    :try_start_12f
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response code "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    int-to-long v10, v10

    .line 144
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-gez v12, :cond_151

    const-wide/16 v10, 0x0

    .line 145
    :cond_151
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/tencent/bugly/proguard/v;->b(J)V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_156} :catch_1ca
    .catchall {:try_start_12f .. :try_end_156} :catchall_189

    .line 152
    :try_start_156
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_156 .. :try_end_159} :catch_160

    :cond_159
    :goto_159
    move/from16 v16, v7

    move v7, v8

    move/from16 v8, v16

    .line 164
    goto/16 :goto_3d

    .line 153
    :catch_160
    move-exception v10

    .line 154
    invoke-static {v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_159

    .line 155
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_159

    .line 146
    :catch_16b
    move-exception v10

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    .line 147
    :goto_171
    :try_start_171
    invoke-static {v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_17a

    .line 148
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17a
    .catchall {:try_start_171 .. :try_end_17a} :catchall_189

    .line 152
    :cond_17a
    :try_start_17a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_17d
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_17d} :catch_17e

    goto :goto_159

    .line 153
    :catch_17e
    move-exception v10

    .line 154
    invoke-static {v10}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v11

    if-nez v11, :cond_159

    .line 155
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_159

    .line 151
    :catchall_189
    move-exception v4

    .line 152
    :try_start_18a
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18d
    .catch Ljava/lang/Throwable; {:try_start_18a .. :try_end_18d} :catch_18e

    .line 157
    :cond_18d
    :goto_18d
    throw v4

    .line 153
    :catch_18e
    move-exception v5

    .line 154
    invoke-static {v5}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v6

    if-nez v6, :cond_18d

    .line 155
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18d

    .line 160
    :cond_199
    const-string v10, "Failed to execute post."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 162
    const-wide/16 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Lcom/tencent/bugly/proguard/v;->b(J)V

    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto :goto_159

    .line 166
    :cond_1ae
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 146
    :catch_1b1
    move-exception v6

    move-object/from16 v16, v6

    move v6, v10

    move-object/from16 v10, v16

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_171

    :catch_1bd
    move-exception v6

    move-object v9, v11

    move/from16 v16, v10

    move-object v10, v6

    move/from16 v6, v16

    move/from16 v17, v7

    move v7, v8

    move/from16 v8, v17

    goto :goto_171

    :catch_1ca
    move-exception v10

    goto :goto_171

    :cond_1cc
    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto/16 :goto_12f
.end method
