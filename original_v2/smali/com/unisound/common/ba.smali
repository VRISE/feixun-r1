.class public Lcom/unisound/common/ba;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0xa00000

.field private static b:Lcom/unisound/common/l; = null

.field private static c:I = 0x0

.field private static final d:Ljava/lang/String; = "wakeupkeys"

.field private static final e:Ljava/lang/String; = "http://asr-wakeup.hivoice.cn:8080/uc/m/upload"

.field private static final f:I = 0x1388

.field private static final g:Ljava/lang/String; = "WakeupWordCacheAndUpload"

.field private static h:Lcom/unisound/common/ba;

.field private static i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    const/16 v0, 0x400

    sput v0, Lcom/unisound/common/ba;->c:I

    sput-object v1, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/common/ba;->i:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/unisound/common/ba;
    .registers 2

    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    if-nez v0, :cond_13

    sget-object v1, Lcom/unisound/common/ba;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    if-nez v0, :cond_12

    new-instance v0, Lcom/unisound/common/ba;

    invoke-direct {v0}, Lcom/unisound/common/ba;-><init>()V

    sput-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/unisound/common/ba;->h:Lcom/unisound/common/ba;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/ba;->g(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_37
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method private static a(Ljava/lang/String;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeupWordCacheAndUpload httpPost params : K = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",UI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",U = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->f()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",AC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_71
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_19a
    .catchall {:try_start_71 .. :try_end_7c} :catchall_18b

    :try_start_7c
    const-string v1, "K"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "UI"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "U"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Text"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/unisound/common/bd;->f()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AC"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Timestamp"

    invoke-virtual {p1}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    :cond_106
    :goto_106
    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_128

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    sget-boolean v4, Lcom/unisound/common/y;->p:Z

    if-eqz v4, :cond_106

    const-string v4, "/sdcard/asrtest/uploadwakeup.pcm"

    invoke-static {v1, v4}, Lcom/unisound/common/j;->a([BLjava/lang/String;)Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_11a} :catch_11b
    .catchall {:try_start_7c .. :try_end_11a} :catchall_192

    goto :goto_106

    :catch_11b
    move-exception v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_11f
    :try_start_11f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_197

    if-eqz v2, :cond_127

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_127
    :goto_127
    return-object v0

    :cond_128
    :try_start_128
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_16b

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v3, ""

    :goto_148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_160

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_148

    :cond_160
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_163} :catch_11b
    .catchall {:try_start_128 .. :try_end_163} :catchall_192

    move-object v1, v2

    :goto_164
    if-eqz v0, :cond_1a0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_127

    :cond_16b
    :try_start_16b
    const-string v3, "WakeupWordCacheAndUpload"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_189} :catch_11b
    .catchall {:try_start_16b .. :try_end_189} :catchall_192

    move-object v1, v2

    goto :goto_164

    :catchall_18b
    move-exception v0

    :goto_18c
    if-eqz v1, :cond_191

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_191
    throw v0

    :catchall_192
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_18c

    :catchall_197
    move-exception v0

    move-object v1, v2

    goto :goto_18c

    :catch_19a
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_11f

    :cond_1a0
    move-object v0, v1

    goto :goto_127
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload buildGetUrl"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_4b} :catch_53

    move-result-object v0

    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    move-object v1, v0

    goto :goto_23

    :catch_53
    move-exception v0

    const-string v0, ""

    goto :goto_4c

    :cond_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/common/bd;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload saveParamsValue"

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/unisound/common/bd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/common/bd;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/unisound/common/bd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/unisound/common/bd;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/unisound/common/bd;->f()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/unisound/common/bd;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/unisound/common/bd;->g()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wakeupkeys"

    invoke-virtual {p0, v0, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload saveUploadKey : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v4, "WakeupWordCacheAndUpload saveData2Cache"

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :try_start_c
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v1, :cond_21

    const-string v1, "locationData"

    invoke-static {p0, v1}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v1, v4, v5, v6, v7}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v1

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_21
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v1, p1}, Lcom/unisound/common/l;->b(Ljava/lang/String;)Lcom/unisound/common/n;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_d3
    .catchall {:try_start_c .. :try_end_26} :catchall_cc

    move-result-object v4

    if-eqz v4, :cond_8c

    const/4 v1, 0x0

    :try_start_2a
    invoke-virtual {v4, v1}, Lcom/unisound/common/n;->c(I)Ljava/io/OutputStream;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_a9
    .catchall {:try_start_2a .. :try_end_2d} :catchall_cc

    move-result-object v1

    const/4 v0, 0x1

    :try_start_2f
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WakeupWordCacheAndUpload saveData2Cache: write BlockingQueue size :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_4e
    const-wide/16 v6, 0x32

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v6, v7, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_79

    array-length v5, v0

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v0, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_66} :catch_67
    .catchall {:try_start_2f .. :try_end_66} :catchall_d1

    goto :goto_4e

    :catch_67
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_b9

    if-eqz v1, :cond_72

    :try_start_6f
    invoke-virtual {v1}, Lcom/unisound/common/n;->b()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_b4
    .catchall {:try_start_6f .. :try_end_72} :catchall_b9

    :cond_72
    :goto_72
    if-eqz v2, :cond_77

    :try_start_74
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_c1

    :cond_77
    move v0, v3

    :goto_78
    return v0

    :cond_79
    :try_start_79
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Lcom/unisound/common/n;->a()V

    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->e()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_84} :catch_67
    .catchall {:try_start_79 .. :try_end_84} :catchall_d1

    move-object v0, v1

    :goto_85
    if-eqz v0, :cond_8a

    :try_start_87
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_ae

    :cond_8a
    move v0, v2

    goto :goto_78

    :cond_8c
    :try_start_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload DiskLruCacheWrapper: edit key:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , editor id null!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a8} :catch_a9
    .catchall {:try_start_8c .. :try_end_a8} :catchall_cc

    goto :goto_85

    :catch_a9
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_6a

    :catch_ae
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_78

    :catch_b4
    move-exception v0

    :try_start_b5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_72

    :catchall_b9
    move-exception v0

    move-object v1, v2

    :goto_bb
    if-eqz v1, :cond_c0

    :try_start_bd
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c7

    :cond_c0
    :goto_c0
    throw v0

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto :goto_78

    :catch_c7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c0

    :catchall_cc
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_bb

    :catchall_d1
    move-exception v0

    goto :goto_bb

    :catch_d3
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_6a
.end method

.method static synthetic a(Landroid/net/ConnectivityManager;)Z
    .registers 2

    invoke-static {p0}, Lcom/unisound/common/ba;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/common/ba;->c(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 2

    invoke-static {p0}, Lcom/unisound/common/ba;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .registers 3

    invoke-static {p0, p1}, Lcom/unisound/common/ba;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .registers 1

    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-eqz v0, :cond_c

    :try_start_4
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method private b(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload saveParamAndCache"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {p1, v0, p2}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/common/bd;)V

    :cond_1c
    return-void
.end method

.method static synthetic b(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/common/ba;->b(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/ba;->f(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/net/ConnectivityManager;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    move v0, v1

    :goto_8
    array-length v3, v2

    if-ge v0, v3, :cond_16

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v3, :cond_17

    const/4 v1, 0x1

    :cond_16
    return v1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getCacheTimekeyList"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_10
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v0, :cond_25

    const-string v0, "locationData"

    invoke-static {p0, v0}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v2, v3, v4, v5}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_25
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0}, Lcom/unisound/common/l;->g()Ljava/util/ArrayList;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2a} :catch_8e
    .catchall {:try_start_10 .. :try_end_2a} :catchall_8c

    move-result-object v1

    const/4 v0, 0x2

    :try_start_2c
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "KEY"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "KEY"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_81} :catch_82
    .catchall {:try_start_2c .. :try_end_81} :catchall_8c

    goto :goto_54

    :catch_82
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_86
    :try_start_86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8c

    :goto_89
    return-object v0

    :cond_8a
    move-object v0, v1

    goto :goto_89

    :catchall_8c
    move-exception v0

    throw v0

    :catch_8e
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_86
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getCacheData"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    :try_start_11
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v0, :cond_26

    const-string v0, "locationData"

    invoke-static {p0, v0}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-wide/32 v6, 0xa00000

    invoke-static {v0, v3, v4, v6, v7}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_26
    sget-object v0, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v0, p1}, Lcom/unisound/common/l;->a(Ljava/lang/String;)Lcom/unisound/common/q;

    move-result-object v0

    if-eqz v0, :cond_54

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/unisound/common/q;->a(I)Ljava/io/InputStream;

    move-result-object v1

    sget v0, Lcom/unisound/common/ba;->c:I

    new-array v0, v0, [B

    :goto_37
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v3

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_49} :catch_4a
    .catchall {:try_start_11 .. :try_end_49} :catchall_64

    goto :goto_37

    :catch_4a
    move-exception v0

    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_64

    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_5f

    :cond_53
    :goto_53
    return-object v2

    :cond_54
    if-eqz v1, :cond_53

    :try_start_56
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_53

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_53

    :catchall_64
    move-exception v0

    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    :cond_6a
    :goto_6a
    throw v0

    :catch_6b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a
.end method

.method private c(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "WakeupWordCacheAndUpload uploadWakeupContent"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/unisound/common/ba;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "http://asr-wakeup.hivoice.cn:8080/uc/m/upload"

    const/16 v3, 0x1388

    invoke-static {v0, p2, p3, v3}, Lcom/unisound/common/ba;->a(Ljava/lang/String;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload uploadWakeup result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_43
    :goto_43
    return v2

    :cond_44
    :try_start_44
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "rc"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    move v0, v1

    :goto_58
    move v2, v0

    goto :goto_43

    :cond_5a
    const-string v1, "-1002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload uploadWakeup error ! result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_44 .. :try_end_78} :catch_7a

    :cond_78
    move v0, v2

    goto :goto_58

    :catch_7a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_43
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "WakeupWordCacheAndUpload removeCache"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :try_start_b
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    if-nez v1, :cond_20

    const-string v1, "locationData"

    invoke-static {p0, v1}, Lcom/unisound/common/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0xa00000

    invoke-static {v1, v2, v3, v4, v5}, Lcom/unisound/common/l;->a(Ljava/io/File;IIJ)Lcom/unisound/common/l;

    move-result-object v1

    sput-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    :cond_20
    sget-object v1, Lcom/unisound/common/ba;->b:Lcom/unisound/common/l;

    invoke-virtual {v1, p1}, Lcom/unisound/common/l;->c(Ljava/lang/String;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_25} :catch_27
    .catchall {:try_start_b .. :try_end_25} :catchall_2c

    move-result v0

    :goto_26
    return v0

    :catch_27
    move-exception v1

    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_26

    :catchall_2c
    move-exception v0

    throw v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload removeParamsValue"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    const-string v0, "wakeupkeys"

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeupWordCacheAndUpload removeUploadKey : key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_11
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/unisound/common/ba;->e(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/unisound/common/ba;->d(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method private g(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "WakeupWordCacheAndUpload getWakeupwordParam"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Lcom/unisound/common/bd;

    invoke-direct {v0}, Lcom/unisound/common/bd;-><init>()V

    const-string v1, "wakeupkeys"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v0, 0x0

    :goto_24
    return-object v0

    :cond_25
    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-array v1, v9, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeupWordCacheAndUpload getWakeupwordParam length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    array-length v4, v3

    move v1, v2

    :goto_48
    if-ge v1, v4, :cond_69

    aget-object v5, v3, v1

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WakeupWordCacheAndUpload getWakeupwordParam value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-static {v6}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_69
    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->a(Ljava/lang/String;)V

    aget-object v1, v3, v9

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->b(Ljava/lang/String;)V

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->c(Ljava/lang/String;)V

    aget-object v1, v3, v10

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->e(Ljava/lang/String;)V

    aget-object v1, v3, v10

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->a(F)V

    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->f(Ljava/lang/String;)V

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/bd;->d(Ljava/lang/String;)V

    goto :goto_24
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/unisound/common/bc;

    invoke-direct {v0, p0, p1}, Lcom/unisound/common/bc;-><init>(Lcom/unisound/common/ba;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unisound/common/bc;->start()V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unisound/common/bd;",
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/common/bb;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/unisound/common/bb;-><init>(Lcom/unisound/common/ba;Ljava/util/concurrent/BlockingQueue;Landroid/content/Context;Lcom/unisound/common/bd;)V

    invoke-virtual {v0}, Lcom/unisound/common/bb;->start()V

    return-void
.end method
