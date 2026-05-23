.class public Lcom/unisound/passport/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    const-string v2, ""

    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_e} :catch_65
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_82
    .catchall {:try_start_3 .. :try_end_e} :catchall_9f

    :try_start_e
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_5a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_21
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_21} :catch_dc
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_cd
    .catchall {:try_start_e .. :try_end_21} :catchall_b7

    move-result-object v5

    :try_start_22
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v1, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/net/MalformedURLException; {:try_start_22 .. :try_end_2e} :catch_e2
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2e} :catch_d3
    .catchall {:try_start_22 .. :try_end_2e} :catchall_bd

    :try_start_2e
    const-string v1, ""

    :goto_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_2e .. :try_end_46} :catch_e8
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_46} :catch_d8
    .catchall {:try_start_2e .. :try_end_46} :catchall_c2

    move-result-object v2

    goto :goto_30

    :cond_48
    move-object v1, v2

    :goto_49
    if-eqz v5, :cond_4e

    :try_start_4b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_4e
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_53
    if-eqz v0, :cond_58

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_58} :catch_5f

    :cond_58
    move-object v0, v1

    :cond_59
    :goto_59
    return-object v0

    :cond_5a
    :try_start_5a
    const-string v1, "{}"
    :try_end_5c
    .catch Ljava/net/MalformedURLException; {:try_start_5a .. :try_end_5c} :catch_dc
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5c} :catch_cd
    .catchall {:try_start_5a .. :try_end_5c} :catchall_b7

    move-object v4, v3

    move-object v5, v3

    goto :goto_49

    :catch_5f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_59

    :catch_65
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v0, v2

    move-object v2, v3

    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_c6

    if-eqz v4, :cond_72

    :try_start_6f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_72
    if-eqz v3, :cond_77

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_77
    if-eqz v2, :cond_59

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7c} :catch_7d

    goto :goto_59

    :catch_7d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catch_82
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    move-object v5, v3

    move-object v0, v2

    :goto_87
    :try_start_87
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_cb

    if-eqz v5, :cond_8f

    :try_start_8c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_8f
    if-eqz v4, :cond_94

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_94
    if-eqz v3, :cond_59

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_99} :catch_9a

    goto :goto_59

    :catch_9a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    :catchall_9f
    move-exception v0

    move-object v4, v3

    move-object v5, v3

    :goto_a2
    if-eqz v5, :cond_a7

    :try_start_a4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_a7
    if-eqz v4, :cond_ac

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_ac
    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b1} :catch_b2

    :cond_b1
    :goto_b1
    throw v0

    :catch_b2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b1

    :catchall_b7
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a2

    :catchall_bd
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_a2

    :catchall_c2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a2

    :catchall_c6
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_a2

    :catchall_cb
    move-exception v0

    goto :goto_a2

    :catch_cd
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_87

    :catch_d3
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v2

    goto :goto_87

    :catch_d8
    move-exception v1

    move-object v3, v0

    move-object v0, v2

    goto :goto_87

    :catch_dc
    move-exception v1

    move-object v4, v3

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_6a

    :catch_e2
    move-exception v1

    move-object v4, v5

    move-object v7, v0

    move-object v0, v2

    move-object v2, v7

    goto :goto_6a

    :catch_e8
    move-exception v1

    move-object v3, v4

    move-object v4, v5

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_6a
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/unisound/passport/a/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_f
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

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Length"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3e} :catch_db
    .catchall {:try_start_f .. :try_end_3e} :catchall_b6

    move-result-object v4

    :try_start_3f
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v6, 0xc8

    if-ne v1, v6, :cond_9a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4d} :catch_df
    .catchall {:try_start_3f .. :try_end_4d} :catchall_ce

    move-result-object v3

    :try_start_4e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_e3
    .catchall {:try_start_4e .. :try_end_5a} :catchall_d1

    :try_start_5a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_5f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_81

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_68} :catch_69
    .catchall {:try_start_5a .. :try_end_68} :catchall_d3

    goto :goto_5f

    :catch_69
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_6c
    :try_start_6c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_d6

    if-eqz v3, :cond_74

    :try_start_71
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_74
    if-eqz v2, :cond_79

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_79
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_b1

    :cond_7e
    :goto_7e
    const-string v0, "-1"

    :cond_80
    :goto_80
    return-object v0

    :cond_81
    :try_start_81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_69
    .catchall {:try_start_81 .. :try_end_84} :catchall_d3

    move-result-object v0

    if-eqz v4, :cond_8a

    :try_start_87
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_8a
    if-eqz v3, :cond_8f

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_8f
    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_94} :catch_95

    goto :goto_80

    :catch_95
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :cond_9a
    :try_start_9a
    const-string v0, "{}"
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9c} :catch_df
    .catchall {:try_start_9a .. :try_end_9c} :catchall_ce

    if-eqz v4, :cond_a1

    :try_start_9e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_a1
    if-eqz v2, :cond_a6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_a6
    if-eqz v2, :cond_80

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_ab} :catch_ac

    goto :goto_80

    :catch_ac
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_80

    :catch_b1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    :catchall_b6
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    :goto_b9
    if-eqz v4, :cond_be

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    :cond_be
    if-eqz v3, :cond_c3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c3
    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c8} :catch_c9

    :cond_c8
    :goto_c8
    throw v0

    :catch_c9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c8

    :catchall_ce
    move-exception v0

    move-object v3, v2

    goto :goto_b9

    :catchall_d1
    move-exception v0

    goto :goto_b9

    :catchall_d3
    move-exception v0

    move-object v2, v1

    goto :goto_b9

    :catchall_d6
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_b9

    :catch_db
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_6c

    :catch_df
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_6c

    :catch_e3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_6c
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
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

    if-eqz v0, :cond_44

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

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_38} :catch_40

    move-result-object v0

    :goto_39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    move-object v1, v0

    goto :goto_10

    :catch_40
    move-exception v0

    const-string v0, ""

    goto :goto_39

    :cond_44
    const-string v0, "TEMPLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POST params is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
