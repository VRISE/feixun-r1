.class public Lcom/baidu/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const-string v1, "wifi"

    :try_start_3
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_f

    move-object v0, v2

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_1d

    :cond_1b
    move-object v0, v2

    goto :goto_e

    :cond_1d
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cmwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uniwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3gwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctwap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, "ctwap"

    goto :goto_e

    :cond_76
    const-string v0, "cmwap"
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_79

    goto :goto_e

    :catch_79
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_81

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_81
    move-object v0, v2

    goto :goto_e

    :cond_83
    move-object v0, v1

    goto :goto_e
.end method

.method private a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 14

    const/16 v11, 0xc8

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/16 v10, -0xb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https Post start,url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    if-nez v0, :cond_2c

    const-string v0, "httpsPost request paramters is null."

    invoke-static {v0}, Lcom/baidu/b/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    :goto_2b
    return-void

    :cond_2c
    const/4 v0, 0x1

    :try_start_2d
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_30
    .catch Ljava/net/MalformedURLException; {:try_start_2d .. :try_end_30} :catch_24a
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_17a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_1b6
    .catchall {:try_start_2d .. :try_end_30} :catchall_1f2

    move-result-object v6

    :try_start_31
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v6, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object v3, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/baidu/b/a/j;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/baidu/b/a/j;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_58
    .catch Ljava/net/MalformedURLException; {:try_start_31 .. :try_end_58} :catch_24e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_58} :catch_23f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_58} :catch_235
    .catchall {:try_start_31 .. :try_end_58} :catchall_230

    :try_start_58
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_268
    .catchall {:try_start_58 .. :try_end_5b} :catchall_122

    move-result-object v1

    :try_start_5c
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_26d
    .catchall {:try_start_5c .. :try_end_5f} :catchall_258

    move-result v4

    if-ne v11, v4, :cond_27e

    :try_start_62
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v1, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6e} :catch_271
    .catchall {:try_start_62 .. :try_end_6e} :catchall_25c

    :try_start_6e
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_73
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    if-eq v8, v5, :cond_10b

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7d} :catch_7e
    .catchall {:try_start_6e .. :try_end_7d} :catchall_260

    goto :goto_73

    :catch_7e
    move-exception v0

    move-object v2, v3

    move v3, v4

    :goto_81
    :try_start_81
    sget-boolean v4, Lcom/baidu/b/a/d;->a:Z

    if-eqz v4, :cond_a2

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "httpsPost parse failed;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_a2
    const/16 v4, -0xb

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "httpsPost failed,IOException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_c1
    .catchall {:try_start_81 .. :try_end_c1} :catchall_265

    if-eqz v1, :cond_cb

    if-eqz v2, :cond_cb

    :try_start_c5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_cb
    if-eqz p1, :cond_278

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_d0
    .catch Ljava/net/MalformedURLException; {:try_start_c5 .. :try_end_d0} :catch_135
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d0} :catch_247
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d0} :catch_23c
    .catchall {:try_start_c5 .. :try_end_d0} :catchall_230

    move v0, v7

    :goto_d1
    if-eqz v6, :cond_d6

    :try_start_d3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_165

    :cond_d6
    :goto_d6
    if-eqz v0, :cond_203

    if-eq v11, v3, :cond_203

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost failed,statusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto/16 :goto_2b

    :cond_10b
    :try_start_10b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_111} :catch_7e
    .catchall {:try_start_10b .. :try_end_111} :catchall_260

    :goto_111
    if-eqz v1, :cond_11b

    if-eqz v3, :cond_11b

    :try_start_115
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_11b
    if-eqz p1, :cond_27b

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_120
    .catch Ljava/net/MalformedURLException; {:try_start_115 .. :try_end_120} :catch_253
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_120} :catch_243
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_120} :catch_238
    .catchall {:try_start_115 .. :try_end_120} :catchall_230

    move v3, v4

    goto :goto_d1

    :catchall_122
    move-exception v0

    move-object v1, v2

    move v3, v5

    :goto_125
    if-eqz v1, :cond_12f

    if-eqz v2, :cond_12f

    :try_start_129
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_12f
    if-eqz p1, :cond_134

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_134
    throw v0
    :try_end_135
    .catch Ljava/net/MalformedURLException; {:try_start_129 .. :try_end_135} :catch_135
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_135} :catch_247
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_135} :catch_23c
    .catchall {:try_start_129 .. :try_end_135} :catchall_230

    :catch_135
    move-exception v0

    move-object v2, v6

    :goto_137
    :try_start_137
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_13e

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :cond_13e
    const/16 v1, -0xb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "httpsPost failed,MalformedURLException:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_15d
    .catchall {:try_start_137 .. :try_end_15d} :catchall_232

    if-eqz v2, :cond_275

    :try_start_15f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_16f

    move v0, v7

    goto/16 :goto_d6

    :catch_165
    move-exception v1

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_d6

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d6

    :catch_16f
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_177

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_177
    move v0, v7

    goto/16 :goto_d6

    :catch_17a
    move-exception v0

    move v3, v5

    move-object v6, v2

    :goto_17d
    :try_start_17d
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_184

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_184
    const/16 v1, -0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpsPost failed,IOException:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_1a3
    .catchall {:try_start_17d .. :try_end_1a3} :catchall_230

    if-eqz v6, :cond_275

    :try_start_1a5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1ab

    move v0, v7

    goto/16 :goto_d6

    :catch_1ab
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_1b3

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b3
    move v0, v7

    goto/16 :goto_d6

    :catch_1b6
    move-exception v0

    move v3, v5

    move-object v6, v2

    :goto_1b9
    :try_start_1b9
    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_1c0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c0
    const/16 v1, -0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpsPost failed,Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;
    :try_end_1df
    .catchall {:try_start_1b9 .. :try_end_1df} :catchall_230

    if-eqz v6, :cond_275

    :try_start_1e1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1e7

    move v0, v7

    goto/16 :goto_d6

    :catch_1e7
    move-exception v0

    sget-boolean v1, Lcom/baidu/b/a/d;->a:Z

    if-eqz v1, :cond_1ef

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1ef
    move v0, v7

    goto/16 :goto_d6

    :catchall_1f2
    move-exception v0

    move-object v6, v2

    :goto_1f4
    if-eqz v6, :cond_1f9

    :try_start_1f6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    :cond_1f9
    :goto_1f9
    throw v0

    :catch_1fa
    move-exception v1

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_1f9

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f9

    :cond_203
    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    if-nez v0, :cond_216

    const-string v0, "httpsPost failed,mResult is null"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v0, "httpsPost failed,internal error"

    invoke-static {v5, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto/16 :goto_2b

    :cond_216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "httpsPost success end,parse result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    goto/16 :goto_2b

    :catchall_230
    move-exception v0

    goto :goto_1f4

    :catchall_232
    move-exception v0

    move-object v6, v2

    goto :goto_1f4

    :catch_235
    move-exception v0

    move v3, v5

    goto :goto_1b9

    :catch_238
    move-exception v0

    move v3, v4

    goto/16 :goto_1b9

    :catch_23c
    move-exception v0

    goto/16 :goto_1b9

    :catch_23f
    move-exception v0

    move v3, v5

    goto/16 :goto_17d

    :catch_243
    move-exception v0

    move v3, v4

    goto/16 :goto_17d

    :catch_247
    move-exception v0

    goto/16 :goto_17d

    :catch_24a
    move-exception v0

    move v3, v5

    goto/16 :goto_137

    :catch_24e
    move-exception v0

    move v3, v5

    move-object v2, v6

    goto/16 :goto_137

    :catch_253
    move-exception v0

    move v3, v4

    move-object v2, v6

    goto/16 :goto_137

    :catchall_258
    move-exception v0

    move v3, v5

    goto/16 :goto_125

    :catchall_25c
    move-exception v0

    move v3, v4

    goto/16 :goto_125

    :catchall_260
    move-exception v0

    move-object v2, v3

    move v3, v4

    goto/16 :goto_125

    :catchall_265
    move-exception v0

    goto/16 :goto_125

    :catch_268
    move-exception v0

    move-object v1, v2

    move v3, v5

    goto/16 :goto_81

    :catch_26d
    move-exception v0

    move v3, v5

    goto/16 :goto_81

    :catch_271
    move-exception v0

    move v3, v4

    goto/16 :goto_81

    :cond_275
    move v0, v7

    goto/16 :goto_d6

    :cond_278
    move v0, v7

    goto/16 :goto_d1

    :cond_27b
    move v3, v4

    goto/16 :goto_d1

    :cond_27e
    move-object v3, v2

    goto/16 :goto_111
.end method

.method private static b(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_43

    const/4 v2, 0x0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_f

    :cond_43
    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1e

    :cond_4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljavax/net/ssl/HttpsURLConnection;
    .registers 9

    const/16 v7, -0xb

    const/4 v1, 0x0

    :try_start_3
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/b/a/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_32
    const-string v0, "Current network is not available."

    invoke-static {v0}, Lcom/baidu/b/a/d;->c(Ljava/lang/String;)V

    const/16 v0, -0xa

    const-string v2, "Current network is not available."

    invoke-static {v0, v2}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    :goto_42
    return-object v0

    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const-string v3, "cmwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.172"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_77
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const v2, 0xc350

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V
    :try_end_90
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_90} :catch_91
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_90} :catch_d0

    goto :goto_42

    :catch_91
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_a0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_a0
    const-string v0, "Auth server could not be parsed as a URL."

    invoke-static {v7, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    goto :goto_42

    :cond_aa
    :try_start_aa
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    const-string v5, "10.0.0.200"

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_77

    :cond_c9
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_cf
    .catch Ljava/net/MalformedURLException; {:try_start_aa .. :try_end_cf} :catch_91
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_cf} :catch_d0

    goto :goto_77

    :catch_d0
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_df

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_df
    const-string v0, "Init httpsurlconnection failed."

    invoke-static {v7, v0}, Lcom/baidu/b/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_42
.end method

.method private c(Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    return-object v1
.end method


# virtual methods
.method protected a(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/baidu/b/a/j;->c(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/baidu/b/a/j;->c:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/b/a/j;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/b/a/j;->b()Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    if-nez v0, :cond_20

    const-string v0, "syncConnect failed,httpsURLConnection is null"

    invoke-static {v0}, Lcom/baidu/b/a/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    :goto_1f
    return-object v0

    :cond_20
    invoke-direct {p0, v0}, Lcom/baidu/b/a/j;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    iget-object v0, p0, Lcom/baidu/b/a/j;->d:Ljava/lang/String;

    goto :goto_1f
.end method

.method protected a()Z
    .registers 4

    const/4 v1, 0x0

    const-string v0, "checkNetwork start"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :try_start_6
    iget-object v0, p0, Lcom/baidu/b/a/j;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_14

    move v0, v1

    :goto_13
    return v0

    :cond_14
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_22

    move-result v0

    if-nez v0, :cond_2c

    :cond_20
    move v0, v1

    goto :goto_13

    :catch_22
    move-exception v0

    sget-boolean v2, Lcom/baidu/b/a/d;->a:Z

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2a
    move v0, v1

    goto :goto_13

    :cond_2c
    const-string v0, "checkNetwork end"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_13
.end method
