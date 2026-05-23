.class Lcom/baidu/location/d/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/d/e;


# direct methods
.method constructor <init>(Lcom/baidu/location/d/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-static {v0}, Lcom/baidu/location/d/e;->a(Lcom/baidu/location/d/e;)V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0}, Lcom/baidu/location/d/e;->a()V

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget v0, v0, Lcom/baidu/location/d/e;->i:I

    move-object v1, v2

    move v4, v0

    :goto_1b
    if-lez v4, :cond_95

    :try_start_1d
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iget-object v3, v3, Lcom/baidu/location/d/e;->h:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_144
    .catchall {:try_start_1d .. :try_end_2c} :catchall_135

    :try_start_2c
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/baidu/location/d/a;->b:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_db

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_60} :catch_138
    .catchall {:try_start_2c .. :try_end_60} :catchall_fb

    move-result-object v3

    :try_start_61
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_13e
    .catchall {:try_start_61 .. :try_end_66} :catchall_122

    const/16 v7, 0x400

    :try_start_68
    new-array v7, v7, [B

    :goto_6a
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a7

    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_76
    .catchall {:try_start_68 .. :try_end_75} :catchall_127

    goto :goto_6a

    :catch_76
    move-exception v7

    move-object v11, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v11

    :goto_7b
    :try_start_7b
    sget-object v7, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v8, "NetworkCommunicationException!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_12d

    if-eqz v3, :cond_87

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_87
    if-eqz v1, :cond_8c

    :try_start_89
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_ef

    :cond_8c
    :goto_8c
    if-eqz v0, :cond_14a

    :try_start_8e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_f4

    move v0, v5

    move-object v1, v3

    :goto_93
    if-eqz v0, :cond_11a

    :cond_95
    if-gtz v4, :cond_11f

    sget v0, Lcom/baidu/location/d/e;->o:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/location/d/e;->o:I

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    iput-object v2, v0, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    invoke-virtual {v0, v5}, Lcom/baidu/location/d/e;->a(Z)V

    :goto_a6
    return-void

    :cond_a7
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v8, v7, Lcom/baidu/location/d/e;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/location/d/f;->a:Lcom/baidu/location/d/e;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/baidu/location/d/e;->a(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c5} :catch_76
    .catchall {:try_start_a7 .. :try_end_c5} :catchall_127

    move-object v7, v3

    move-object v3, v1

    move v1, v6

    :goto_c8
    if-eqz v0, :cond_cd

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_cd
    if-eqz v7, :cond_d2

    :try_start_cf
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_e2

    :cond_d2
    :goto_d2
    if-eqz v3, :cond_14e

    :try_start_d4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d7} :catch_e7

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_93

    :cond_db
    :try_start_db
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_138
    .catchall {:try_start_db .. :try_end_de} :catchall_fb

    move v1, v5

    move-object v3, v2

    move-object v7, v2

    goto :goto_c8

    :catch_e2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d2

    :catch_e7
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto :goto_93

    :catch_ef
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c

    :catch_f4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    move-object v1, v3

    goto :goto_93

    :catchall_fb
    move-exception v1

    move-object v3, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_100
    if-eqz v1, :cond_105

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_105
    if-eqz v3, :cond_10a

    :try_start_107
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_110

    :cond_10a
    :goto_10a
    if-eqz v2, :cond_10f

    :try_start_10c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_10f} :catch_115

    :cond_10f
    :goto_10f
    throw v0

    :catch_110
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10a

    :catch_115
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10f

    :cond_11a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_1b

    :cond_11f
    sput v5, Lcom/baidu/location/d/e;->o:I

    goto :goto_a6

    :catchall_122
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_100

    :catchall_127
    move-exception v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_100

    :catchall_12d
    move-exception v2

    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_100

    :catchall_135
    move-exception v0

    move-object v3, v2

    goto :goto_100

    :catch_138
    move-exception v1

    move-object v1, v2

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_7b

    :catch_13e
    move-exception v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v2

    goto/16 :goto_7b

    :catch_144
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v1, v2

    goto/16 :goto_7b

    :cond_14a
    move v0, v5

    move-object v1, v3

    goto/16 :goto_93

    :cond_14e
    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_93
.end method
