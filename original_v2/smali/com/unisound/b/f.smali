.class public Lcom/unisound/b/f;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/lang/String; = "utf-8"

.field public static c:Ljava/util/HashMap; = null
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

.field private static final d:I = 0x2710


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/b/f;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)Lcom/unisound/b/l;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/unisound/b/l;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/unisound/b/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v1, ""

    new-instance v6, Lcom/unisound/b/l;

    invoke-direct {v6}, Lcom/unisound/b/l;-><init>()V

    :try_start_14
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "content-type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_43} :catch_a9
    .catchall {:try_start_14 .. :try_end_43} :catchall_c7

    move-result-object v5

    :try_start_44
    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v4, "Date"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unisound/b/j;->a(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/unisound/b/l;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/unisound/b/l;->b(J)V

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_9f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_66} :catch_ec
    .catchall {:try_start_44 .. :try_end_66} :catchall_df

    move-result-object v4

    :try_start_67
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v0, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_73} :catch_f3
    .catchall {:try_start_67 .. :try_end_73} :catchall_e2

    :goto_73
    :try_start_73
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_89} :catch_fb
    .catchall {:try_start_73 .. :try_end_89} :catchall_e4

    move-result-object v1

    goto :goto_73

    :cond_8b
    move-object v0, v1

    :goto_8c
    if-eqz v5, :cond_91

    :try_start_8e
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_91
    if-eqz v4, :cond_96

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_96
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_9b} :catch_a4

    :cond_9b
    :goto_9b
    invoke-virtual {v6, v0}, Lcom/unisound/b/l;->a(Ljava/lang/String;)V

    return-object v6

    :cond_9f
    :try_start_9f
    const-string v0, "{}"
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a1} :catch_ec
    .catchall {:try_start_9f .. :try_end_a1} :catchall_df

    move-object v2, v3

    move-object v4, v3

    goto :goto_8c

    :catch_a4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    :catch_a9
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    :goto_af
    :try_start_af
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_e7

    if-eqz v4, :cond_b7

    :try_start_b4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_b7
    if-eqz v3, :cond_bc

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_bc
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_c1} :catch_c2

    goto :goto_9b

    :catch_c2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9b

    :catchall_c7
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_ca
    if-eqz v5, :cond_cf

    :try_start_cc
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_cf
    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_d4
    if-eqz v3, :cond_d9

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d9} :catch_da

    :cond_d9
    :goto_d9
    throw v0

    :catch_da
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d9

    :catchall_df
    move-exception v0

    move-object v4, v3

    goto :goto_ca

    :catchall_e2
    move-exception v0

    goto :goto_ca

    :catchall_e4
    move-exception v0

    move-object v3, v2

    goto :goto_ca

    :catchall_e7
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_ca

    :catch_ec
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_af

    :catch_f3
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_af

    :catch_fb
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_af
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_f2
    .catchall {:try_start_6 .. :try_end_11} :catchall_c2

    :try_start_11
    const-string v1, "accept"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user-agent"

    const-string v2, "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_47} :catch_f7
    .catchall {:try_start_11 .. :try_end_47} :catchall_da

    :try_start_47
    invoke-virtual {v4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v1, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_5d} :catch_fd
    .catchall {:try_start_47 .. :try_end_5d} :catchall_df

    :goto_5d
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_66} :catch_67
    .catchall {:try_start_5d .. :try_end_66} :catchall_e3

    goto :goto_5d

    :catch_67
    move-exception v1

    move-object v3, v4

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_ee

    if-eqz v3, :cond_75

    :try_start_72
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    :cond_75
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7a} :catch_bd

    :cond_7a
    :goto_7a
    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_7f
    :goto_7f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_84
    :try_start_84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v1, v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_97} :catch_f7
    .catchall {:try_start_84 .. :try_end_97} :catchall_da

    :goto_97
    :try_start_97
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a7

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a0} :catch_a1
    .catchall {:try_start_97 .. :try_end_a0} :catchall_e8

    goto :goto_97

    :catch_a1
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_6d

    :cond_a7
    move-object v4, v3

    :cond_a8
    if-eqz v4, :cond_ad

    :try_start_aa
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_ad
    if-eqz v2, :cond_b2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b2} :catch_b8

    :cond_b2
    :goto_b2
    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7f

    :catch_b8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2

    :catch_bd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    :catchall_c2
    move-exception v0

    move-object v4, v3

    move-object v2, v3

    :goto_c5
    if-eqz v4, :cond_ca

    :try_start_c7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_ca
    if-eqz v3, :cond_cf

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cf} :catch_d5

    :cond_cf
    :goto_cf
    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d4
    throw v0

    :catch_d5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cf

    :catchall_da
    move-exception v1

    move-object v4, v3

    move-object v2, v0

    move-object v0, v1

    goto :goto_c5

    :catchall_df
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_c5

    :catchall_e3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_c5

    :catchall_e8
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_c5

    :catchall_ee
    move-exception v0

    move-object v4, v3

    move-object v3, v1

    goto :goto_c5

    :catch_f2
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    goto/16 :goto_6d

    :catch_f7
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto/16 :goto_6d

    :catch_fd
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    goto/16 :goto_6d
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

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

    :try_start_2d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_40

    move-result-object v0

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    move-object v1, v0

    goto :goto_10

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encode error, key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->b(Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_39

    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestData : POST params is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/unisound/b/f;->c:Ljava/util/HashMap;

    return-void
.end method
