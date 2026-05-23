.class public Lcom/unisound/common/ax;
.super Ljava/lang/Thread;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/unisound/common/am;

.field private c:Ljava/lang/String;

.field private d:Lcom/unisound/common/ak;

.field private e:Lcom/unisound/client/ErrorCode;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/ax;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/ax;->d:Lcom/unisound/common/ak;

    new-instance v0, Lcom/unisound/client/ErrorCode;

    invoke-direct {v0}, Lcom/unisound/client/ErrorCode;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/ax;->e:Lcom/unisound/client/ErrorCode;

    return-void
.end method

.method private a(I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/common/ax;->b:Lcom/unisound/common/am;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/unisound/common/ax;->e:Lcom/unisound/client/ErrorCode;

    invoke-virtual {v1, p1}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/ci;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/unisound/common/am;->a(Lcom/unisound/common/ax;Lcom/unisound/sdk/ci;)V

    :cond_d
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/ax;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unisound/common/ax;->start()V

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/common/ak;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/ax;->d:Lcom/unisound/common/ak;

    return-object v0
.end method

.method a(Lcom/unisound/common/am;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/ax;->b:Lcom/unisound/common/am;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/ax;->a:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/unisound/common/ak;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/common/ak;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/unisound/common/ax;->d:Lcom/unisound/common/ak;

    iget-object v0, p0, Lcom/unisound/common/ax;->d:Lcom/unisound/common/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/common/ak;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/unisound/c/a;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&an=wechar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&si="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unisound/common/ak;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&av=1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sn=abcdefg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&trace=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/ax;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data=<SCENE>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_79
    const-string v0, "</SCENE>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/ax;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/ax;->b:Lcom/unisound/common/am;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadSceneTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .registers 7

    const/4 v1, 0x0

    const v2, -0xf624

    :try_start_4
    iget-object v0, p0, Lcom/unisound/common/ax;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/unisound/common/ax;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/16 v4, 0x7530

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_c1

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "errorCode"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "upload userdata code="

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/unisound/common/ax;->d:Lcom/unisound/common/ak;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/unisound/common/ak;->a(Z)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_81} :catch_c3

    move v0, v1

    :goto_82
    invoke-direct {p0, v0}, Lcom/unisound/common/ax;->a(I)V

    return-void

    :cond_86
    :try_start_86
    const-string v0, ""
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_88} :catch_c3

    goto :goto_63

    :cond_89
    const/4 v1, -0x1

    if-ne v0, v1, :cond_90

    const v0, -0xf62d

    goto :goto_82

    :cond_90
    const/4 v1, -0x5

    if-ne v0, v1, :cond_97

    const v0, -0xf62e

    goto :goto_82

    :cond_97
    const/4 v1, -0x8

    if-ne v0, v1, :cond_9e

    const v0, -0xf62f

    goto :goto_82

    :cond_9e
    const/16 v1, -0xb

    if-ne v0, v1, :cond_a6

    const v0, -0xf630

    goto :goto_82

    :cond_a6
    const/16 v1, -0xc

    if-ne v0, v1, :cond_ae

    const v0, -0xf631

    goto :goto_82

    :cond_ae
    const/16 v1, -0xd

    if-ne v0, v1, :cond_b6

    const v0, -0xf632

    goto :goto_82

    :cond_b6
    const/4 v1, -0x6

    if-ne v0, v1, :cond_bd

    const v0, -0xf62b

    goto :goto_82

    :cond_bd
    const v0, -0xf623

    goto :goto_82

    :cond_c1
    move v0, v2

    goto :goto_82

    :catch_c3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_82
.end method
