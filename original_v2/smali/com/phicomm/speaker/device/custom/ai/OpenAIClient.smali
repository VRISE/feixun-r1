.class public Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final READ_TIMEOUT:I = 0x15f90

.field private static final RETRY_BACKOFF_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "OpenAIClient"


# instance fields
.field private config:Lcom/phicomm/speaker/device/custom/config/AIConfig;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .line 46
    return-void
.end method

.method private buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v3, "json":Lorg/json/JSONObject;
    const-string v10, "model"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v11}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 138
    .local v4, "messages":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v6, "systemMsg":Lorg/json/JSONObject;
    const-string v10, "role"

    const-string v11, "system"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v5, "systemContent":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_d1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d1

    .line 146
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :goto_35
    if-eqz p2, :cond_4c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4c

    .line 153
    const-string v10, "\n\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v10, "\u4ee5\u4e0b\u662f\u4e4b\u524d\u7684\u5bf9\u8bdd\u5386\u53f2,\u5982\u679c\u5f53\u524d\u95ee\u9898\u4e0e\u5386\u53f2\u76f8\u5173,\u8bf7\u53c2\u8003\u4e0a\u4e0b\u6587\u56de\u7b54:\n\n"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_4c
    const-string v10, "content"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 162
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v9, "userMsg":Lorg/json/JSONObject;
    const-string v10, "role"

    const-string v11, "user"

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v10, "content"

    move-object/from16 v0, p1

    invoke-virtual {v9, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 167
    const-string v10, "messages"

    invoke-virtual {v3, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v10, "temperature"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v11}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTemperature()F

    move-result v11

    float-to-double v12, v11

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    invoke-virtual {v3, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 173
    const-string v10, "max_tokens"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v11}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getMaxTokens()I

    move-result v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v10}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getThinking()Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "thinking":Ljava/lang/String;
    if-eqz v7, :cond_cc

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_cc

    const-string v10, "auto"

    .line 181
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_cc

    .line 182
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v8, "thinkingObj":Lorg/json/JSONObject;
    const-string v10, "type"

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v10, "thinking"

    invoke-virtual {v3, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .end local v8    # "thinkingObj":Lorg/json/JSONObject;
    :cond_cc
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    .line 191
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    .end local v5    # "systemContent":Ljava/lang/StringBuilder;
    .end local v6    # "systemMsg":Lorg/json/JSONObject;
    .end local v7    # "thinking":Ljava/lang/String;
    .end local v9    # "userMsg":Lorg/json/JSONObject;
    :goto_d0
    return-object v10

    .line 148
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "messages":Lorg/json/JSONArray;
    .restart local v5    # "systemContent":Ljava/lang/StringBuilder;
    .restart local v6    # "systemMsg":Lorg/json/JSONObject;
    :cond_d1
    const-string v10, "\u4f60\u662f\u53f0\u6e7e\u59b9\u5b50,\u8bf7\u7528\u673a\u8f66\u53e3\u8bed\u5316\u7684\u65b9\u5f0f\u56de\u7b54\u3002\u56de\u7b54\u8981\u7b80\u77ed \u8981\u8c03\u76ae\u3002"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d6} :catch_d8

    goto/16 :goto_35

    .line 189
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    .end local v5    # "systemContent":Ljava/lang/StringBuilder;
    .end local v6    # "systemMsg":Lorg/json/JSONObject;
    :catch_d8
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "OpenAIClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to build request body with history: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v10, 0x0

    goto :goto_d0
.end method

.method private httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x3

    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "last":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    const/4 v0, 0x1

    .local v0, "attempt":I
    :goto_3
    if-gt v0, v10, :cond_17

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->httpPostJsonOnce(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;

    move-result-object v3

    .line 261
    .local v3, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;

    if-eqz v6, :cond_10

    .line 262
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;

    .line 281
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :goto_f
    return-object v6

    .line 265
    .restart local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_10
    move-object v2, v3

    .line 266
    iget-boolean v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    if-eqz v6, :cond_17

    if-lt v0, v10, :cond_35

    .line 280
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_17
    :goto_17
    const-string v7, "OpenAIClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5927\u6a21\u578b\u8c03\u7528\u6700\u7ec8\u5931\u8d25: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_7f

    const-string v6, "unknown"

    :goto_28
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v6, 0x0

    goto :goto_f

    .line 270
    .restart local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_35
    const-wide/16 v6, 0xbb8

    int-to-long v8, v0

    mul-long v4, v6, v8

    .line 271
    .local v4, "waitMs":J
    const-string v6, "OpenAIClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u8c03\u7528\u5931\u8d25("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms \u540e\u7b2c "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u6b21\u5c1d\u8bd5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_70
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_73} :catch_76

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 274
    :catch_76
    move-exception v1

    .line 275
    .local v1, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17

    .line 280
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    .end local v4    # "waitMs":J
    :cond_7f
    iget-object v6, v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    goto :goto_28
.end method

.method private httpPostJsonOnce(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    .registers 21
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;-><init>(Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;)V

    .line 286
    .local v13, "result":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    const/4 v1, 0x0

    .line 287
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    .line 288
    .local v9, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 291
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_9
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 292
    .local v14, "url":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 295
    const-string v15, "POST"

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 298
    const/16 v15, 0x3a98

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 299
    const v15, 0x15f90

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 302
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 303
    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 304
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 307
    const-string v15, "Content-Type"

    const-string v16, "application/json; charset=utf-8"

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v15, "Accept"

    const-string v16, "application/json"

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v15, "Authorization"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bearer "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getApiKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v15, "User-Agent"

    const-string v16, "R1-Speaker/1.0"

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 314
    const-string v15, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/io/OutputStream;->write([B)V

    .line 315
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    .line 319
    .local v12, "responseCode":I
    const/16 v15, 0xc8

    if-eq v12, v15, :cond_12a

    .line 321
    const-string v4, ""
    :try_end_8f
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_8f} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_8f} :catch_1a7
    .catchall {:try_start_9 .. :try_end_8f} :catchall_1e2

    .line 323
    .local v4, "errorBody":Ljava/lang/String;
    :try_start_8f
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    .line 324
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-direct/range {v15 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 325
    .local v5, "errorReader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v6, "errorSB":Ljava/lang/StringBuilder;
    :goto_a4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "eline":Ljava/lang/String;
    if-eqz v3, :cond_11d

    .line 328
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_ad} :catch_ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_8f .. :try_end_ad} :catch_1fb
    .catchall {:try_start_8f .. :try_end_ad} :catchall_1e2

    goto :goto_a4

    .line 332
    .end local v3    # "eline":Ljava/lang/String;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v6    # "errorSB":Ljava/lang/StringBuilder;
    :catch_ae
    move-exception v15

    .line 335
    :goto_af
    const/16 v15, 0x1ad

    if-eq v12, v15, :cond_b7

    const/16 v15, 0x1f4

    if-lt v12, v15, :cond_125

    :cond_b7
    const/4 v15, 0x1

    :goto_b8
    :try_start_b8
    iput-boolean v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 336
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HTTP "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 337
    const-string v16, "OpenAIClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPostJson failed: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", error body: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 338
    iget-boolean v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    if-eqz v15, :cond_127

    const-string v15, " (\u53ef\u91cd\u8bd5)"

    :goto_fe
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 337
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/net/SocketTimeoutException; {:try_start_b8 .. :try_end_10d} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_10d} :catch_1a7
    .catchall {:try_start_b8 .. :try_end_10d} :catchall_1e2

    .line 368
    if-eqz v8, :cond_112

    :try_start_10f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_112
    if-eqz v9, :cond_117

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 370
    :cond_117
    if-eqz v1, :cond_11c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_11c} :catch_200

    .line 364
    .end local v4    # "errorBody":Ljava/lang/String;
    .end local v12    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    :cond_11c
    :goto_11c
    return-object v13

    .line 330
    .restart local v3    # "eline":Ljava/lang/String;
    .restart local v4    # "errorBody":Ljava/lang/String;
    .restart local v5    # "errorReader":Ljava/io/BufferedReader;
    .restart local v6    # "errorSB":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_11d
    :try_start_11d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 331
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_123} :catch_ae
    .catch Ljava/net/SocketTimeoutException; {:try_start_11d .. :try_end_123} :catch_1fb
    .catchall {:try_start_11d .. :try_end_123} :catchall_1e2

    move-result-object v4

    goto :goto_af

    .line 335
    .end local v3    # "eline":Ljava/lang/String;
    .end local v5    # "errorReader":Ljava/io/BufferedReader;
    .end local v6    # "errorSB":Ljava/lang/StringBuilder;
    :cond_125
    const/4 v15, 0x0

    goto :goto_b8

    .line 338
    :cond_127
    :try_start_127
    const-string v15, " (\u4e0d\u53ef\u91cd\u8bd5)"

    goto :goto_fe

    .line 343
    .end local v4    # "errorBody":Ljava/lang/String;
    :cond_12a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v11, "response":Ljava/lang/StringBuilder;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    const-string v17, "UTF-8"

    invoke-direct/range {v15 .. v17}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13f
    .catch Ljava/net/SocketTimeoutException; {:try_start_127 .. :try_end_13f} :catch_1fb
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13f} :catch_1a7
    .catchall {:try_start_127 .. :try_end_13f} :catchall_1e2

    .line 346
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v10, "reader":Ljava/io/BufferedReader;
    :goto_13f
    :try_start_13f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_18f

    .line 347
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_148
    .catch Ljava/net/SocketTimeoutException; {:try_start_13f .. :try_end_148} :catch_149
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_148} :catch_1f8
    .catchall {:try_start_13f .. :try_end_148} :catchall_1f5

    goto :goto_13f

    .line 353
    .end local v7    # "line":Ljava/lang/String;
    :catch_149
    move-exception v2

    move-object v9, v10

    .line 355
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/SocketTimeoutException;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :goto_14b
    const/4 v15, 0x1

    :try_start_14c
    iput-boolean v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 356
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "\u8d85\u65f6: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 357
    const-string v15, "OpenAIClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPostJson timeout: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17d
    .catchall {:try_start_14c .. :try_end_17d} :catchall_1e2

    .line 368
    if-eqz v8, :cond_182

    :try_start_17f
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_182
    if-eqz v9, :cond_187

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 370
    :cond_187
    if-eqz v1, :cond_11c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_18c} :catch_18d

    goto :goto_11c

    .line 371
    :catch_18d
    move-exception v15

    goto :goto_11c

    .line 350
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :cond_18f
    :try_start_18f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;
    :try_end_195
    .catch Ljava/net/SocketTimeoutException; {:try_start_18f .. :try_end_195} :catch_149
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_195} :catch_1f8
    .catchall {:try_start_18f .. :try_end_195} :catchall_1f5

    .line 368
    if-eqz v8, :cond_19a

    :try_start_197
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_19a
    if-eqz v10, :cond_19f

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 370
    :cond_19f
    if-eqz v1, :cond_1a4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a4} :catch_1fe

    :cond_1a4
    :goto_1a4
    move-object v9, v10

    .line 351
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_11c

    .line 359
    .end local v7    # "line":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_1a7
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    :goto_1a8
    const/4 v15, 0x1

    :try_start_1a9
    iput-boolean v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 361
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 362
    const-string v15, "OpenAIClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "httpPostJson error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ce
    .catchall {:try_start_1a9 .. :try_end_1ce} :catchall_1e2

    .line 368
    if-eqz v8, :cond_1d3

    :try_start_1d0
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_1d3
    if-eqz v9, :cond_1d8

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 370
    :cond_1d8
    if-eqz v1, :cond_11c

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1dd
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_1dd} :catch_1df

    goto/16 :goto_11c

    .line 371
    :catch_1df
    move-exception v15

    goto/16 :goto_11c

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1e2
    move-exception v15

    .line 368
    :goto_1e3
    if-eqz v8, :cond_1e8

    :try_start_1e5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 369
    :cond_1e8
    if-eqz v9, :cond_1ed

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 370
    :cond_1ed
    if-eqz v1, :cond_1f2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f2} :catch_1f3

    .line 374
    :cond_1f2
    :goto_1f2
    throw v15

    .line 371
    :catch_1f3
    move-exception v16

    goto :goto_1f2

    .line 367
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :catchall_1f5
    move-exception v15

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_1e3

    .line 359
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_1f8
    move-exception v2

    move-object v9, v10

    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    goto :goto_1a8

    .line 353
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .end local v12    # "responseCode":I
    .end local v14    # "url":Ljava/net/URL;
    :catch_1fb
    move-exception v2

    goto/16 :goto_14b

    .line 371
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v12    # "responseCode":I
    .restart local v14    # "url":Ljava/net/URL;
    :catch_1fe
    move-exception v15

    goto :goto_1a4

    .end local v7    # "line":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "response":Ljava/lang/StringBuilder;
    .restart local v4    # "errorBody":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_200
    move-exception v15

    goto/16 :goto_11c
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 212
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 216
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 217
    .local v3, "error":Lorg/json/JSONObject;
    const-string v8, "message"

    const-string v9, "Unknown error"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 218
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

    .line 235
    .end local v3    # "error":Lorg/json/JSONObject;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    :cond_34
    :goto_34
    return-object v1

    .line 223
    .restart local v7    # "root":Lorg/json/JSONObject;
    :cond_35
    const-string v8, "choices"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 224
    .local v0, "choices":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_34

    .line 225
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 226
    .local v5, "firstChoice":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 227
    .local v6, "message":Lorg/json/JSONObject;
    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_53

    move-result-object v1

    .line 228
    .local v1, "content":Ljava/lang/String;
    goto :goto_34

    .line 233
    .end local v0    # "choices":Lorg/json/JSONArray;
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "firstChoice":Lorg/json/JSONObject;
    .end local v6    # "message":Lorg/json/JSONObject;
    .end local v7    # "root":Lorg/json/JSONObject;
    :catch_53
    move-exception v2

    .line 234
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
    .line 55
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

    .line 66
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 67
    :cond_9
    const-string v6, "OpenAIClient"

    const-string v7, "Empty user input"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 117
    :goto_11
    return-object v2

    .line 73
    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "requestBody":Ljava/lang/String;
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "fullUrl":Ljava/lang/String;
    const-string v6, "/chat/completions"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 78
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

    .line 81
    :cond_3f
    :goto_3f
    const-string v6, "OpenAIClient"

    const-string v7, "=== [DEBUG] \u5927\u6a21\u578b API \u8c03\u7528 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
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

    .line 83
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

    .line 84
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

    .line 85
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

    .line 86
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

    .line 87
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

    .line 88
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

    .line 91
    invoke-direct {p0, v1, v3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_133

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_152

    .line 94
    :cond_133
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u8fd4\u56de\u7a7a\u54cd\u5e94 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 95
    goto/16 :goto_11

    .line 78
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

    .line 98
    .restart local v4    # "response":Ljava/lang/String;
    :cond_152
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u539f\u59cb\u54cd\u5e94 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v6, "OpenAIClient"

    invoke-static {v6, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->parseResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "reply":Ljava/lang/String;
    if-eqz v2, :cond_18f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_18f

    .line 105
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b\u89e3\u6790\u540e\u56de\u590d ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v6, "OpenAIClient"

    invoke-static {v6, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_176} :catch_178

    goto/16 :goto_11

    .line 113
    .end local v1    # "fullUrl":Ljava/lang/String;
    .end local v2    # "reply":Ljava/lang/String;
    .end local v3    # "requestBody":Ljava/lang/String;
    .end local v4    # "response":Ljava/lang/String;
    :catch_178
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "OpenAIClient"

    const-string v7, "=== \u5927\u6a21\u578b API \u8c03\u7528\u5f02\u5e38 ==="

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v6, "OpenAIClient"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 117
    goto/16 :goto_11

    .line 109
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

    .line 110
    goto/16 :goto_11
.end method
