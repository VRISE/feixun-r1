.class public Lcom/unisound/ant/device/mqtt/HttpRequestUtil;
.super Ljava/lang/Object;
.source "HttpRequestUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 27
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendGet(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;
    .registers 17
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_e

    .line 64
    :cond_c
    const/4 v11, 0x0

    .line 120
    :goto_d
    return-object v11

    .line 67
    :cond_e
    const/4 v4, 0x0

    .line 68
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 69
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v9, "result":Ljava/lang/StringBuilder;
    :try_start_15
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .local v8, "realUrl":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 75
    const-string v11, "GET"

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 76
    const-string v11, "accept"

    const-string v12, "*/*"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v11, "connection"

    const-string v12, "close"

    invoke-virtual {v1, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 81
    if-eqz p2, :cond_90

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v11

    if-lez v11, :cond_90

    .line 82
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4b
    :goto_4b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_90

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 83
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 84
    .local v10, "value":Ljava/lang/String;
    if-eqz v6, :cond_4b

    .line 85
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4b

    if-eqz v10, :cond_4b

    .line 87
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4b

    .line 91
    invoke-virtual {v1, v6, v10}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7a} :catch_7b
    .catchall {:try_start_15 .. :try_end_7a} :catchall_c8

    goto :goto_4b

    .line 104
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "realUrl":Ljava/net/URL;
    .end local v10    # "value":Ljava/lang/String;
    :catch_7b
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_c8

    .line 108
    if-eqz v4, :cond_84

    .line 109
    :try_start_81
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_84
    if-eqz v1, :cond_8a

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_89} :catch_c3

    .line 113
    const/4 v1, 0x0

    .line 120
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8a
    :goto_8a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_d

    .line 96
    .restart local v8    # "realUrl":Ljava/net/URL;
    :cond_90
    :try_start_90
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 99
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a3} :catch_7b
    .catchall {:try_start_90 .. :try_end_a3} :catchall_c8

    .line 101
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_a3
    :try_start_a3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_b0

    .line 102
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_da

    goto :goto_a3

    .line 104
    .end local v7    # "line":Ljava/lang/String;
    :catch_ad
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_7c

    .line 108
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    :cond_b0
    if-eqz v5, :cond_b5

    .line 109
    :try_start_b2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_b5
    if-eqz v1, :cond_bb

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_ba} :catch_bd

    .line 113
    const/4 v1, 0x0

    :cond_bb
    move-object v4, v5

    .line 117
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_8a

    .line 115
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    :catch_bd
    move-exception v3

    .line 116
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 118
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_8a

    .line 115
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "realUrl":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_c3
    move-exception v3

    .line 116
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8a

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_c8
    move-exception v11

    .line 108
    :goto_c9
    if-eqz v4, :cond_ce

    .line 109
    :try_start_cb
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 111
    :cond_ce
    if-eqz v1, :cond_d4

    .line 112
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_d3} :catch_d5

    .line 113
    const/4 v1, 0x0

    .line 117
    :cond_d4
    :goto_d4
    throw v11

    .line 115
    :catch_d5
    move-exception v3

    .line 116
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d4

    .line 107
    .end local v3    # "e2":Ljava/lang/Exception;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "realUrl":Ljava/net/URL;
    :catchall_da
    move-exception v11

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    goto :goto_c9
.end method

.method public static sendGet(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .param p0, "url"    # Ljava/lang/String;
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

    .prologue
    .line 51
    .local p1, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x7530

    invoke-static {p0, v0, p1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendGet(Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    const/16 v0, 0x7530

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;
    .registers 20
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_e

    .line 178
    :cond_c
    const/4 v13, 0x0

    .line 245
    :goto_d
    return-object v13

    .line 181
    :cond_e
    const/4 v8, 0x0

    .line 182
    .local v8, "out":Ljava/io/PrintWriter;
    const/4 v4, 0x0

    .line 183
    .local v4, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 184
    .local v1, "conn":Ljava/net/HttpURLConnection;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v11, "result":Ljava/lang/StringBuilder;
    :try_start_16
    new-instance v10, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, "realUrl":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 189
    const-string v13, "POST"

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 190
    const-string v13, "accept"

    const-string v14, "*/*"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v13, "connection"

    const-string v14, "close"

    invoke-virtual {v1, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 195
    if-eqz p3, :cond_ae

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_ae

    .line 196
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_52
    :goto_52
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ae

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 197
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 198
    .local v12, "value":Ljava/lang/String;
    if-eqz v6, :cond_52

    .line 199
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_52

    if-eqz v12, :cond_52

    .line 201
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_52

    .line 205
    invoke-virtual {v1, v6, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_81} :catch_82
    .catchall {:try_start_16 .. :try_end_81} :catchall_9c

    goto :goto_52

    .line 226
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "realUrl":Ljava/net/URL;
    .end local v12    # "value":Ljava/lang/String;
    :catch_82
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    :goto_83
    :try_start_83
    new-instance v13, Ljava/lang/Exception;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u53d1\u9001POST\u8bf7\u6c42\u8fc7\u7a0b\u4e2d\u51fa\u9519\uff1a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_9c
    .catchall {:try_start_83 .. :try_end_9c} :catchall_9c

    .line 229
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_9c
    move-exception v13

    .line 230
    :goto_9d
    if-eqz v8, :cond_a2

    .line 231
    :try_start_9f
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_a2
    if-eqz v4, :cond_a7

    .line 234
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 236
    :cond_a7
    if-eqz v1, :cond_ad

    .line 237
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ac} :catch_100

    .line 238
    const/4 v1, 0x0

    .line 242
    :cond_ad
    :goto_ad
    throw v13

    .line 210
    .restart local v10    # "realUrl":Ljava/net/URL;
    :cond_ae
    const/4 v13, 0x1

    :try_start_af
    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 211
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 214
    new-instance v9, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_bf} :catch_82
    .catchall {:try_start_af .. :try_end_bf} :catchall_9c

    .line 216
    .end local v8    # "out":Ljava/io/PrintWriter;
    .local v9, "out":Ljava/io/PrintWriter;
    :try_start_bf
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v9}, Ljava/io/PrintWriter;->flush()V

    .line 221
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_d7} :catch_10c
    .catchall {:try_start_bf .. :try_end_d7} :catchall_105

    .line 223
    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    :goto_d7
    :try_start_d7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_e5

    .line 224
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e0} :catch_e1
    .catchall {:try_start_d7 .. :try_end_e0} :catchall_108

    goto :goto_d7

    .line 226
    .end local v7    # "line":Ljava/lang/String;
    :catch_e1
    move-exception v2

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_83

    .line 230
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :cond_e5
    if-eqz v9, :cond_ea

    .line 231
    :try_start_e7
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 233
    :cond_ea
    if-eqz v5, :cond_ef

    .line 234
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 236
    :cond_ef
    if-eqz v1, :cond_f5

    .line 237
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_f4} :catch_fb

    .line 238
    const/4 v1, 0x0

    .line 245
    :cond_f5
    :goto_f5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_d

    .line 240
    :catch_fb
    move-exception v3

    .line 241
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f5

    .line 240
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/PrintWriter;
    .end local v10    # "realUrl":Ljava/net/URL;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    :catch_100
    move-exception v3

    .line 241
    .restart local v3    # "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ad

    .line 229
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    .restart local v10    # "realUrl":Ljava/net/URL;
    :catchall_105
    move-exception v13

    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_9d

    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :catchall_108
    move-exception v13

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto :goto_9d

    .line 226
    .end local v8    # "out":Ljava/io/PrintWriter;
    .restart local v9    # "out":Ljava/io/PrintWriter;
    :catch_10c
    move-exception v2

    move-object v8, v9

    .end local v9    # "out":Ljava/io/PrintWriter;
    .restart local v8    # "out":Ljava/io/PrintWriter;
    goto/16 :goto_83
.end method

.method public static sendPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x7530

    invoke-static {p0, p1, v0, p2}, Lcom/unisound/ant/device/mqtt/HttpRequestUtil;->sendPost(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
