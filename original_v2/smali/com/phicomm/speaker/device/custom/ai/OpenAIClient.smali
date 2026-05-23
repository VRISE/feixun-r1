.class public Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "OpenAIClient"


# instance fields
.field private config:Lcom/phicomm/speaker/device/custom/config/AIConfig;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .line 36
    return-void
.end method

.method private buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 119
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 122
    .local v1, "json":Lorg/json/JSONObject;
    const-string v6, "model"

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v7}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .local v2, "messages":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v4, "systemMsg":Lorg/json/JSONObject;
    const-string v6, "role"

    const-string v7, "system"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v3, "systemContent":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_90

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_90

    .line 136
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_33
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_48

    .line 143
    const-string v6, "\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, "\u4ee5\u4e0b\u662f\u4e4b\u524d\u7684\u5bf9\u8bdd\u5386\u53f2,\u5982\u679c\u5f53\u524d\u95ee\u9898\u4e0e\u5386\u53f2\u76f8\u5173,\u8bf7\u53c2\u8003\u4e0a\u4e0b\u6587\u56de\u7b54:\n\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_48
    const-string v6, "content"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v5, "userMsg":Lorg/json/JSONObject;
    const-string v6, "role"

    const-string v7, "user"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v6, "content"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 157
    const-string v6, "messages"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v6, "temperature"

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v7}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTemperature()F

    move-result v7

    float-to-double v8, v7

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    invoke-virtual {v1, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    const-string v6, "max_tokens"

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v7}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getMaxTokens()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "messages":Lorg/json/JSONArray;
    .end local v3    # "systemContent":Ljava/lang/StringBuilder;
    .end local v4    # "systemMsg":Lorg/json/JSONObject;
    .end local v5    # "userMsg":Lorg/json/JSONObject;
    :goto_8f
    return-object v6

    .line 138
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "messages":Lorg/json/JSONArray;
    .restart local v3    # "systemContent":Ljava/lang/StringBuilder;
    .restart local v4    # "systemMsg":Lorg/json/JSONObject;
    :cond_90
    const-string v6, "\u4f60\u662f\u53f0\u6e7e\u59b9\u5b50,\u8bf7\u7528\u673a\u8f66\u53e3\u8bed\u5316\u7684\u65b9\u5f0f\u56de\u7b54\u3002\u56de\u7b54\u8981\u7b80\u77ed \u8981\u8c03\u76ae\u3002"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_95} :catch_96

    goto :goto_33

    .line 167
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "messages":Lorg/json/JSONArray;
    .end local v3    # "systemContent":Ljava/lang/StringBuilder;
    .end local v4    # "systemMsg":Lorg/json/JSONObject;
    :catch_96
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to build request body with history: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v6, 0x0

    goto :goto_8f
.end method

.method private httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 224
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 227
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_3
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 231
    const-string v14, "POST"

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 234
    const/16 v14, 0x2710

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 235
    const/16 v14, 0x7530

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 238
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 239
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 240
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 243
    const-string v14, "Content-Type"

    const-string v15, "application/json; charset=utf-8"

    invoke-virtual {v1, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v14, "Accept"

    const-string v15, "application/json"

    invoke-virtual {v1, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bearer "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getApiKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v14, "User-Agent"

    const-string v15, "R1-Speaker/1.0"

    invoke-virtual {v1, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 250
    const-string v14, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V

    .line 251
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 254
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 255
    .local v12, "responseCode":I
    const/16 v14, 0xc8

    if-eq v12, v14, :cond_db

    .line 257
    const-string v4, ""
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_80} :catch_155
    .catchall {:try_start_3 .. :try_end_80} :catchall_13f

    .line 259
    .local v4, "errorBody":Ljava/lang/String;
    :try_start_80
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    .line 260
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v5, "errorReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v6, "errorSB":Ljava/lang/StringBuilder;
    :goto_95
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "eline":Ljava/lang/String;
    if-eqz v3, :cond_d3

    .line 264
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_9e} :catch_9f
    .catchall {:try_start_80 .. :try_end_9e} :catchall_13f

    goto :goto_95

    .line 268
    .end local v3    # "eline":Ljava/lang/String;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v6    # "errorSB":Ljava/lang/StringBuilder;
    :catch_9f
    move-exception v14

    .line 269
    :goto_a0
    :try_start_a0
    const-string v14, "OpenAIClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPostJson failed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", error body: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_c2} :catch_155
    .catchall {:try_start_a0 .. :try_end_c2} :catchall_13f

    .line 270
    const/4 v14, 0x0

    .line 290
    if-eqz v8, :cond_c8

    :try_start_c5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 291
    :cond_c8
    if-eqz v9, :cond_cd

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 292
    :cond_cd
    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d2} :catch_159

    .line 286
    .end local v4    # "errorBody":Ljava/lang/String;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :cond_d2
    :goto_d2
    return-object v14

    .line 266
    .restart local v3    # "eline":Ljava/lang/String;
    .restart local v4    # "errorBody":Ljava/lang/String;
    .restart local v5    # "errorReader":Ljava/io/BufferedReader;
    .restart local v6    # "errorSB":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_d3
    :try_start_d3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 267
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d9} :catch_9f
    .catchall {:try_start_d3 .. :try_end_d9} :catchall_13f

    move-result-object v4

    goto :goto_a0

    .line 274
    .end local v3    # "eline":Ljava/lang/String;
    .end local v4    # "errorBody":Ljava/lang/String;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v6    # "errorSB":Ljava/lang/StringBuilder;
    :cond_db
    :try_start_db
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v11, "response":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    const-string v16, "UTF-8"

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_f0} :catch_155
    .catchall {:try_start_db .. :try_end_f0} :catchall_13f

    .line 277
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :goto_f0
    :try_start_f0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_12a

    .line 278
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f9} :catch_fa
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_152

    goto :goto_f0

    .line 283
    .end local v7    # "line":Ljava/lang/String;
    :catch_fa
    move-exception v2

    move-object v9, v10

    .line 284
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :goto_fc
    :try_start_fc
    const-string v14, "OpenAIClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "httpPostJson error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_117
    .catchall {:try_start_fc .. :try_end_117} :catchall_13f

    .line 286
    const/4 v14, 0x0

    .line 290
    if-eqz v8, :cond_11d

    :try_start_11a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 291
    :cond_11d
    if-eqz v9, :cond_122

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 292
    :cond_122
    if-eqz v1, :cond_d2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_127} :catch_128

    goto :goto_d2

    .line 293
    :catch_128
    move-exception v15

    goto :goto_d2

    .line 281
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :cond_12a
    :try_start_12a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12d} :catch_fa
    .catchall {:try_start_12a .. :try_end_12d} :catchall_152

    move-result-object v14

    .line 290
    if-eqz v8, :cond_133

    :try_start_130
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 291
    :cond_133
    if-eqz v10, :cond_138

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 292
    :cond_138
    if-eqz v1, :cond_13d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_13d} :catch_157

    :cond_13d
    :goto_13d
    move-object v9, v10

    .line 281
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_d2

    .line 289
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catchall_13f
    move-exception v14

    .line 290
    :goto_140
    if-eqz v8, :cond_145

    :try_start_142
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 291
    :cond_145
    if-eqz v9, :cond_14a

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 292
    :cond_14a
    if-eqz v1, :cond_14f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_14f} :catch_150

    .line 296
    :cond_14f
    :goto_14f
    throw v14

    .line 293
    :catch_150
    move-exception v15

    goto :goto_14f

    .line 289
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_152
    move-exception v14

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_140

    .line 283
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v13    # "url":Ljava/net/URL;
    :catch_155
    move-exception v2

    goto :goto_fc

    .line 293
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v13    # "url":Ljava/net/URL;
    :catch_157
    move-exception v15

    goto :goto_13d

    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v4    # "errorBody":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_159
    move-exception v15

    goto/16 :goto_d2
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 190
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 194
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 195
    .local v3, "error":Lorg/json/JSONObject;
    const-string v8, "message"

    const-string v9, "Unknown error"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, "errorMsg":Ljava/lang/String;
    const-string v8, "OpenAIClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "API error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v3    # "error":Lorg/json/JSONObject;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    :cond_34
    :goto_34
    return-object v1

    .line 201
    .restart local v7    # "root":Lorg/json/JSONObject;
    :cond_35
    const-string v8, "choices"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 202
    .local v0, "choices":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_34

    .line 203
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 204
    .local v5, "firstChoice":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 205
    .local v6, "message":Lorg/json/JSONObject;
    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_53

    move-result-object v1

    .line 206
    .local v1, "content":Ljava/lang/String;
    goto :goto_34

    .line 211
    .end local v0    # "choices":Lorg/json/JSONArray;
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "firstChoice":Lorg/json/JSONObject;
    .end local v6    # "message":Lorg/json/JSONObject;
    .end local v7    # "root":Lorg/json/JSONObject;
    :catch_53
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "OpenAIClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method


# virtual methods
.method public chat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "systemPrompt"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 56
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 57
    :cond_9
    const-string v6, "OpenAIClient"

    const-string v7, "Empty user input"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 107
    :goto_11
    return-object v2

    .line 63
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "requestBody":Ljava/lang/String;
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "fullUrl":Ljava/lang/String;
    const-string v6, "/chat/completions"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 68
    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chat/completions"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_3f
    :goto_3f
    const-string v6, "OpenAIClient"

    const-string v7, "=== [DEBUG] \u5927\u6a21\u578b API \u8c03\u7528 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] BaseURL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] FullURL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] Model: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] APIKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getApiKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v11}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getApiKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] Temperature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTemperature()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] MaxTokens: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getMaxTokens()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DEBUG] RequestBody: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, v1, v3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_133

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_152

    .line 84
    :cond_133
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u8fd4\u56de\u7a7a\u54cd\u5e94 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 85
    goto/16 :goto_11

    .line 68
    .end local v4    # "response":Ljava/lang/String;
    :cond_13d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/chat/completions"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3f

    .line 88
    .restart local v4    # "response":Ljava/lang/String;
    :cond_152
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u539f\u59cb\u54cd\u5e94 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v6, "OpenAIClient"

    invoke-static {v6, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "reply":Ljava/lang/String;
    if-eqz v2, :cond_18f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18f

    .line 95
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b\u89e3\u6790\u540e\u56de\u590d ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v6, "OpenAIClient"

    invoke-static {v6, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_176} :catch_178

    goto/16 :goto_11

    .line 103
    .end local v1    # "fullUrl":Ljava/lang/String;
    .end local v2    # "reply":Ljava/lang/String;
    .end local v3    # "requestBody":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    :catch_178
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u8c03\u7528\u5f02\u5e38 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v6, "OpenAIClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 107
    goto/16 :goto_11

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fullUrl":Ljava/lang/String;
    .restart local v2    # "reply":Ljava/lang/String;
    .restart local v3    # "requestBody":Ljava/lang/String;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_18f
    :try_start_18f
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b\u54cd\u5e94\u89e3\u6790\u5931\u8d25 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_196} :catch_178

    move-object v2, v5

    .line 100
    goto/16 :goto_11
.end method
