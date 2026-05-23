.class public Lcn/kuwo/autosdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Ljava/lang/String;

.field static b:J

.field static final c:Ljava/util/concurrent/atomic/AtomicLong;

.field static d:Ljava/net/Proxy;

.field public static e:I


# instance fields
.field f:Lcn/kuwo/autosdk/d;

.field g:Ljava/lang/String;

.field h:Ljava/util/Map;

.field i:Z

.field j:[B

.field k:Ljava/lang/String;

.field l:I

.field m:J

.field n:Z

.field o:Ljava/net/Proxy;

.field volatile p:Z

.field volatile q:Z

.field r:I

.field s:J

.field t:Ljava/net/HttpURLConnection;

.field u:Ljava/io/InputStream;

.field v:Ljava/io/OutputStream;

.field w:Ljava/io/ByteArrayOutputStream;

.field x:Lcn/kuwo/autosdk/f;

.field y:Landroid/os/Handler;

.field z:Lcn/kuwo/autosdk/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "HttpSession"

    sput-object v0, Lcn/kuwo/autosdk/b;->a:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcn/kuwo/autosdk/b;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    sput-object v0, Lcn/kuwo/autosdk/b;->d:Ljava/net/Proxy;

    const/16 v0, 0x2000

    sput v0, Lcn/kuwo/autosdk/b;->e:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/kuwo/autosdk/d;

    invoke-direct {v0, p0}, Lcn/kuwo/autosdk/d;-><init>(Lcn/kuwo/autosdk/b;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->f:Lcn/kuwo/autosdk/d;

    const-string v0, ""

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/b;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/autosdk/a;

    invoke-direct {v0}, Lcn/kuwo/autosdk/a;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/kuwo/autosdk/b;->s:J

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "Close"

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_1f
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcn/kuwo/autosdk/a;
    .registers 3

    iput-object p1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->d()Lcn/kuwo/autosdk/a;

    move-result-object v0

    return-object v0
.end method

.method a(II[BI)V
    .registers 7

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->f:Lcn/kuwo/autosdk/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/kuwo/autosdk/d;->a(II[BI)Lcn/kuwo/autosdk/d;

    move-result-object v0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/autosdk/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcn/kuwo/autosdk/b;->m:J

    return-void
.end method

.method a(Lcn/kuwo/autosdk/e;I)V
    .registers 5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    if-eqz v0, :cond_4

    new-instance v0, Lcn/kuwo/autosdk/c;

    invoke-direct {v0, p0, p1, p2}, Lcn/kuwo/autosdk/c;-><init>(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/e;I)V

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->y:Landroid/os/Handler;

    invoke-direct {p0, v1, v0}, Lcn/kuwo/autosdk/b;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method a()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcn/kuwo/autosdk/b;->e:I

    if-gt v2, v3, :cond_a

    iget-boolean v2, p0, Lcn/kuwo/autosdk/b;->i:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->j:[B

    if-eqz v2, :cond_a

    :cond_1d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->s:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    iget v2, p0, Lcn/kuwo/autosdk/b;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/kuwo/autosdk/b;->r:I

    iget v2, p0, Lcn/kuwo/autosdk/b;->r:I

    if-ne v1, v2, :cond_a

    move v0, v1

    goto :goto_a
.end method

.method a([BII)Z
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v1, :cond_1c

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v4, "rw"

    invoke-direct {v1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_1e
    .catchall {:try_start_6 .. :try_end_f} :catchall_28

    int-to-long v2, p3

    :try_start_10
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_36
    .catchall {:try_start_10 .. :try_end_17} :catchall_33

    if-eqz v1, :cond_1c

    :try_start_19
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_31

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0

    :catch_1e
    move-exception v1

    move-object v1, v2

    :goto_20
    if-eqz v1, :cond_1d

    :try_start_22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_1d

    :catch_26
    move-exception v1

    goto :goto_1d

    :catchall_28
    move-exception v0

    :goto_29
    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    throw v0

    :catch_2f
    move-exception v1

    goto :goto_2e

    :catch_31
    move-exception v0

    goto :goto_1c

    :catchall_33
    move-exception v0

    move-object v2, v1

    goto :goto_29

    :catch_36
    move-exception v2

    goto :goto_20
.end method

.method b()Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    :try_start_23
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/MalformedURLException; {:try_start_23 .. :try_end_28} :catch_91

    :try_start_28
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->o:Ljava/net/Proxy;

    if-nez v0, :cond_9d

    sget-object v0, Lcn/kuwo/autosdk/b;->d:Ljava/net/Proxy;

    :goto_2e
    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3c} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_c0

    :try_start_3c
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_ac

    :cond_50
    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-eqz v0, :cond_62

    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_cd

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_62
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->i:Z

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->j:[B

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_76} :catch_c0

    :try_start_76
    new-instance v0, Ljava/io/BufferedOutputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->j:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_8f} :catch_d5
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8f} :catch_c0

    :cond_8f
    :goto_8f
    move v0, v3

    :goto_90
    return v0

    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "url error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_90

    :cond_9d
    :try_start_9d
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->o:Ljava/net/Proxy;
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_9f} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9f} :catch_c0

    goto :goto_2e

    :catch_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_90

    :cond_ac
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bf} :catch_c0

    goto :goto_4a

    :catch_c0
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_cb
    move v0, v2

    goto :goto_90

    :cond_cd
    :try_start_cd
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect timeout"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v2

    goto :goto_90

    :catch_d5
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "post write failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_dc} :catch_c0

    move v0, v2

    goto :goto_90

    :cond_de
    :try_start_de
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v6, v1, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcn/kuwo/autosdk/a;->m:J
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_f0} :catch_f1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_f0} :catch_c0

    goto :goto_8f

    :catch_f1
    move-exception v0

    :try_start_f2
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "connect failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_f8} :catch_c0

    move v0, v2

    goto :goto_90
.end method

.method declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_33
    .catchall {:try_start_1 .. :try_end_a} :catchall_2c

    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->v:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_31
    .catchall {:try_start_a .. :try_end_13} :catchall_2c

    :cond_13
    :goto_13
    :try_start_13
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_2f
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2c

    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_25} :catch_27
    .catchall {:try_start_1c .. :try_end_25} :catchall_2c

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :catch_27
    move-exception v0

    const/4 v0, 0x0

    :try_start_29
    iput-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_2c

    goto :goto_25

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2f
    move-exception v0

    goto :goto_1c

    :catch_31
    move-exception v0

    goto :goto_13

    :catch_33
    move-exception v0

    goto :goto_a
.end method

.method d()Lcn/kuwo/autosdk/a;
    .registers 10

    const/4 v1, -0x1

    const/4 v4, -0x3

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->a()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->k:Ljava/lang/String;

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v4, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_f

    :cond_27
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v0, :cond_45

    sget-object v0, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sget-wide v2, Lcn/kuwo/autosdk/b;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_45

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x4

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_f

    :cond_45
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->b()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_f

    :cond_4e
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iput v4, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto :goto_f

    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_81

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_81

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_18e

    :cond_81
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_95} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_95} :catch_1c9
    .catchall {:try_start_5f .. :try_end_95} :catchall_1e8

    const/16 v0, 0x1000

    :try_start_97
    new-array v0, v0, [B
    :try_end_99
    .catch Ljava/lang/OutOfMemoryError; {:try_start_97 .. :try_end_99} :catch_da
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_99} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_99} :catch_1c9
    .catchall {:try_start_97 .. :try_end_99} :catchall_1e8

    const/4 v1, 0x0

    :try_start_9a
    iget-wide v2, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v2, v2

    if-lez v2, :cond_a7

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v4, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_a7
    :goto_a7
    iget-object v2, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    const/16 v3, 0x1000

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_b5

    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v3, :cond_fc

    :cond_b5
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_135

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x3

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_c6} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c6} :catch_1c9
    .catchall {:try_start_9a .. :try_end_c6} :catchall_1e8

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_f

    :catch_da
    move-exception v0

    :try_start_db
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e8} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e8} :catch_1c9
    .catchall {:try_start_db .. :try_end_e8} :catchall_1e8

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_f

    :cond_fc
    :try_start_fc
    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v3, :cond_10d

    sget-object v3, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_10d} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10d} :catch_1c9
    .catchall {:try_start_fc .. :try_end_10d} :catchall_1e8

    :cond_10d
    :try_start_10d
    iget-object v3, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_112
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10d .. :try_end_112} :catch_113
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_112} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_112} :catch_1c9
    .catchall {:try_start_10d .. :try_end_112} :catchall_1e8

    goto :goto_a7

    :catch_113
    move-exception v0

    :try_start_114
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "write data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_121} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_121} :catch_1c9
    .catchall {:try_start_114 .. :try_end_121} :catchall_1e8

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_f

    :cond_135
    :try_start_135
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->n:J
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_147} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_147} :catch_1c9
    .catchall {:try_start_135 .. :try_end_147} :catchall_1e8

    :try_start_147
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->c:[B
    :try_end_151
    .catch Ljava/lang/OutOfMemoryError; {:try_start_147 .. :try_end_151} :catch_16c
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_151} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_151} :catch_1c9
    .catchall {:try_start_147 .. :try_end_151} :catchall_1e8

    :try_start_151
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/kuwo/autosdk/a;->a:Z
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_156} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_156} :catch_1c9
    .catchall {:try_start_151 .. :try_end_156} :catchall_1e8

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    :goto_168
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    goto/16 :goto_f

    :catch_16c
    move-exception v0

    :try_start_16d
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x5

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_17a} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17a} :catch_1c9
    .catchall {:try_start_16d .. :try_end_17a} :catchall_1e8

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_f

    :cond_18e
    :try_start_18e
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "resqonse code error "

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_196} :catch_1aa
    .catch Ljava/lang/Exception; {:try_start_18e .. :try_end_196} :catch_1c9
    .catchall {:try_start_18e .. :try_end_196} :catchall_1e8

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto/16 :goto_f

    :catch_1aa
    move-exception v0

    :try_start_1ab
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_1b6
    .catchall {:try_start_1ab .. :try_end_1b6} :catchall_1e8

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto :goto_168

    :catch_1c9
    move-exception v0

    :try_start_1ca
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v1, -0x1

    iput v1, v0, Lcn/kuwo/autosdk/a;->b:I

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;
    :try_end_1d5
    .catchall {:try_start_1ca .. :try_end_1d5} :catchall_1e8

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    goto :goto_168

    :catchall_1e8
    move-exception v0

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->f:J

    iput-boolean v8, p0, Lcn/kuwo/autosdk/b;->q:Z

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    throw v0
.end method

.method e()Z
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_b
    return v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_63

    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v6, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_79

    :try_start_27
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_66
    .catchall {:try_start_27 .. :try_end_30} :catchall_72

    :try_start_30
    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_e4
    .catchall {:try_start_30 .. :try_end_36} :catchall_e1

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_d2

    :cond_3b
    :goto_3b
    iget v1, p0, Lcn/kuwo/autosdk/b;->l:I

    if-lez v1, :cond_5b

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_63
    move-exception v0

    move v0, v1

    goto :goto_b

    :catch_66
    move-exception v0

    move-object v2, v3

    :goto_68
    :try_start_68
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_e1

    if-eqz v2, :cond_70

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_ce

    :cond_70
    :goto_70
    move v0, v1

    goto :goto_b

    :catchall_72
    move-exception v0

    :goto_73
    if-eqz v3, :cond_78

    :try_start_75
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_d0

    :cond_78
    :goto_78
    throw v0

    :cond_79
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    iget v2, p0, Lcn/kuwo/autosdk/b;->l:I

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_ad

    :try_start_84
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    const-string v5, "rw"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8d} :catch_9a
    .catchall {:try_start_84 .. :try_end_8d} :catchall_a6

    const-wide/16 v4, 0x0

    :try_start_8f
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_de
    .catchall {:try_start_8f .. :try_end_92} :catchall_db

    if-eqz v2, :cond_97

    :try_start_94
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_d9

    :cond_97
    :goto_97
    iput v1, p0, Lcn/kuwo/autosdk/b;->l:I

    goto :goto_5b

    :catch_9a
    move-exception v0

    :goto_9b
    :try_start_9b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_a6

    if-eqz v3, :cond_a3

    :try_start_a0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_d5

    :cond_a3
    :goto_a3
    move v0, v1

    goto/16 :goto_b

    :catchall_a6
    move-exception v0

    :goto_a7
    if-eqz v3, :cond_ac

    :try_start_a9
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_d7

    :cond_ac
    :goto_ac
    throw v0

    :cond_ad
    iget v1, p0, Lcn/kuwo/autosdk/b;->l:I

    if-lez v1, :cond_5b

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/kuwo/autosdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :catch_ce
    move-exception v0

    goto :goto_70

    :catch_d0
    move-exception v1

    goto :goto_78

    :catch_d2
    move-exception v1

    goto/16 :goto_3b

    :catch_d5
    move-exception v0

    goto :goto_a3

    :catch_d7
    move-exception v1

    goto :goto_ac

    :catch_d9
    move-exception v2

    goto :goto_97

    :catchall_db
    move-exception v0

    move-object v3, v2

    goto :goto_a7

    :catch_de
    move-exception v0

    move-object v3, v2

    goto :goto_9b

    :catchall_e1
    move-exception v0

    move-object v3, v2

    goto :goto_73

    :catch_e4
    move-exception v0

    goto :goto_68
.end method

.method f()I
    .registers 6

    const/4 v1, -0x2

    :try_start_1
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v2, Lcn/kuwo/autosdk/a;->b:I

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->l:Ljava/lang/String;

    :cond_33
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_64

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_64

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v0, v0, Lcn/kuwo/autosdk/a;->b:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_64

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response code error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget v3, v3, Lcn/kuwo/autosdk/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v1

    :cond_63
    :goto_63
    return v0

    :cond_64
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    if-nez v2, :cond_73

    const/4 v1, 0x0

    :goto_6f
    if-nez v1, :cond_63

    const/4 v0, -0x1

    goto :goto_63

    :cond_73
    const-string v2, "identity"

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->h:Ljava/util/Map;

    const-string v4, "Accept-Encoding"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_80} :catch_82
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_8b

    move-result v1

    goto :goto_6f

    :catch_82
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v2, "get response code exception"

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    move v0, v1

    goto :goto_63

    :catch_8b
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_96

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v2, "unknown"

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_96
    move v0, v1

    goto :goto_63
.end method

.method g()Z
    .registers 5

    :try_start_0
    iget-wide v0, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    iget-wide v2, p0, Lcn/kuwo/autosdk/b;->m:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :catch_f
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method h()V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->c()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/b;->q:Z

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v1, Lcn/kuwo/autosdk/a;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->f:J

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/a;->a()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_21

    sget-object v0, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {p0, v0, v6}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    goto :goto_21
.end method

.method public run()V
    .registers 12

    const/4 v0, 0x0

    const/4 v10, -0x1

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/kuwo/autosdk/a;->e:J

    iget-object v1, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->g:Ljava/lang/String;

    iput-object v2, v1, Lcn/kuwo/autosdk/a;->k:Ljava/lang/String;

    iget-boolean v1, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v1, :cond_2a

    sget-object v1, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sget-wide v4, Lcn/kuwo/autosdk/b;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "flow limit"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    :goto_29
    return-void

    :cond_2a
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->e()Z

    move-result v1

    if-nez v1, :cond_3a

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "file error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :cond_3a
    iget-boolean v1, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v1, :cond_48

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :cond_48
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->b()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :cond_52
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->f()I

    move-result v1

    const/4 v2, -0x2

    if-ne v2, v1, :cond_5d

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :cond_5d
    if-ne v1, v10, :cond_63

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v2, :cond_6b

    :cond_63
    sget-object v2, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_6b
    :try_start_6b
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->t:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_78} :catch_8b

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    :try_start_81
    new-array v2, v2, [B
    :try_end_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_81 .. :try_end_83} :catch_99

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_a1

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read data failed"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto :goto_29

    :catch_99
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    goto :goto_29

    :cond_a1
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->g()Z

    move-result v3

    if-nez v3, :cond_110

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_ac
    :try_start_ac
    iget-object v3, p0, Lcn/kuwo/autosdk/b;->u:Ljava/io/InputStream;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b3} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_d5

    move-result v3

    if-gez v3, :cond_103

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v2, :cond_114

    if-eq v0, v1, :cond_e5

    if-eq v1, v10, :cond_e5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "ContentLength error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :catch_c9
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "read error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :catch_d5
    move-exception v0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-nez v0, :cond_e0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "unknown"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    :cond_e0
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_e5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v0, v3

    int-to-long v4, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_114

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "io error (file lenght error) "

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_103
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->g()Z

    move-result v4

    if-nez v4, :cond_10e

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_10e
    if-nez v3, :cond_123

    :cond_110
    :goto_110
    iget-boolean v3, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v3, :cond_ac

    :cond_114
    iget-boolean v0, p0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_191

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "user cancel"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_123
    iget-boolean v4, p0, Lcn/kuwo/autosdk/b;->n:Z

    if-eqz v4, :cond_134

    sget-object v4, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v5, Lcn/kuwo/autosdk/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_134
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v4, :cond_13e

    :try_start_138
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_13e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_138 .. :try_end_13e} :catch_160

    :cond_13e
    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v4, :cond_16c

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v5, v0

    int-to-long v6, v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_16c

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "io error (check file length error)"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :catch_160
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "out of memory error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_16c
    iget v4, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4}, Lcn/kuwo/autosdk/b;->a([BII)Z

    move-result v4

    if-nez v4, :cond_180

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "write file error"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :cond_180
    add-int/2addr v0, v3

    if-ne v1, v10, :cond_187

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-nez v4, :cond_110

    :cond_187
    iget v4, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v4, v1

    iget v5, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v5, v0

    invoke-virtual {p0, v4, v5, v2, v3}, Lcn/kuwo/autosdk/b;->a(II[BI)V

    goto :goto_110

    :cond_191
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->e:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-wide v4, v4, Lcn/kuwo/autosdk/a;->m:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcn/kuwo/autosdk/a;->n:J

    :try_start_1a3
    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    iget-object v2, p0, Lcn/kuwo/autosdk/b;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcn/kuwo/autosdk/a;->c:[B
    :try_end_1ad
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a3 .. :try_end_1ad} :catch_1c5

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/kuwo/autosdk/a;->a:Z

    if-ne v1, v10, :cond_1c0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_1c0

    sget-object v0, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    iget v2, p0, Lcn/kuwo/autosdk/b;->l:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/kuwo/autosdk/b;->a(Lcn/kuwo/autosdk/e;I)V

    :cond_1c0
    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29

    :catch_1c5
    move-exception v0

    iget-object v0, p0, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    const-string v1, "OutOfMemoryError"

    iput-object v1, v0, Lcn/kuwo/autosdk/a;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/kuwo/autosdk/b;->h()V

    goto/16 :goto_29
.end method
