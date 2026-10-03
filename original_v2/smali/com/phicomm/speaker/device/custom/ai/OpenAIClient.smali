.class public Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;,
        Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final PRIMARY_DOWN_COOLDOWN_MS:J = 0x493e0L

.field private static final READ_TIMEOUT:I = 0x15f90

.field private static final RETRY_BACKOFF_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "OpenAIClient"

.field private static volatile sPrimaryDownUntil:J


# instance fields
.field private config:Lcom/phicomm/speaker/device/custom/config/AIConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->sPrimaryDownUntil:J

    return-void
.end method

.method public constructor <init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .line 58
    return-void
.end method

.method private buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;
    .param p4, "model"    # Ljava/lang/String;
    .param p5, "thinking"    # Ljava/lang/String;
    .param p6, "wantAudio"    # Z
    .param p7, "topicUser"    # Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v3, "json":Lorg/json/JSONObject;
    const-string v9, "model"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 266
    .local v4, "messages":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .local v6, "systemMsg":Lorg/json/JSONObject;
    const-string v9, "role"

    const-string v10, "system"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v5, "systemContent":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_de

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_de

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_2f
    if-eqz p2, :cond_46

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_46

    .line 281
    const-string v9, "\n\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v9, "\u4ee5\u4e0b\u662f\u4e4b\u524d\u7684\u5bf9\u8bdd\u5386\u53f2,\u5982\u679c\u5f53\u524d\u95ee\u9898\u4e0e\u5386\u53f2\u76f8\u5173,\u8bf7\u53c2\u8003\u4e0a\u4e0b\u6587\u56de\u7b54:\n\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_46
    const-string v9, "content"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 290
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 291
    .local v8, "userMsg":Lorg/json/JSONObject;
    const-string v9, "role"

    const-string v10, "user"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v9, "content"

    invoke-virtual {v8, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 295
    const-string v9, "messages"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v9, "temperature"

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v10}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTemperature()F

    move-result v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v3, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 301
    const-string v9, "max_tokens"

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v10}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getMaxTokens()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    if-eqz p5, :cond_b8

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b8

    const-string v9, "auto"

    .line 308
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b8

    .line 309
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v7, "thinkingObj":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v9, "thinking"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    .end local v7    # "thinkingObj":Lorg/json/JSONObject;
    :cond_b8
    if-eqz p6, :cond_c4

    .line 318
    const-string v9, "audio"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    :cond_c4
    if-eqz p7, :cond_d9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d9

    .line 325
    const-string v9, "user"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_d9
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .line 332
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    .end local v5    # "systemContent":Ljava/lang/StringBuilder;
    .end local v6    # "systemMsg":Lorg/json/JSONObject;
    .end local v8    # "userMsg":Lorg/json/JSONObject;
    :goto_dd
    return-object v9

    .line 276
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v4    # "messages":Lorg/json/JSONArray;
    .restart local v5    # "systemContent":Ljava/lang/StringBuilder;
    .restart local v6    # "systemMsg":Lorg/json/JSONObject;
    :cond_de
    const-string v9, "\u4f60\u662f\u53f0\u6e7e\u59b9\u5b50,\u8bf7\u7528\u673a\u8f66\u53e3\u8bed\u5316\u7684\u65b9\u5f0f\u56de\u7b54\u3002\u56de\u7b54\u8981\u7b80\u77ed \u8981\u8c03\u76ae\u3002"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e3} :catch_e5

    goto/16 :goto_2f

    .line 330
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "messages":Lorg/json/JSONArray;
    .end local v5    # "systemContent":Ljava/lang/StringBuilder;
    .end local v6    # "systemMsg":Lorg/json/JSONObject;
    :catch_e5
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "OpenAIClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to build request body with history: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v9, 0x0

    goto :goto_dd
.end method

.method private callEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .registers 26
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "thinking"    # Ljava/lang/String;
    .param p5, "wantAudio"    # Z
    .param p6, "topicUser"    # Ljava/lang/String;
    .param p7, "maxAttempts"    # I
    .param p8, "userInput"    # Ljava/lang/String;
    .param p9, "conversationHistory"    # Ljava/lang/String;
    .param p10, "systemPrompt"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 182
    :cond_8
    const-string v2, "OpenAIClient"

    const-string v3, "callEndpoint: baseUrl \u4e3a\u7a7a"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v12, 0x0

    .line 233
    :goto_10
    return-object v12

    :cond_11
    move-object v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    .line 187
    :try_start_20
    invoke-direct/range {v2 .. v9}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->buildRequestBodyWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, "requestBody":Ljava/lang/String;
    move-object/from16 v11, p1

    .line 192
    .local v11, "fullUrl":Ljava/lang/String;
    const-string v2, "/chat/completions"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 193
    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chat/completions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    :cond_49
    :goto_49
    const-string v2, "OpenAIClient"

    const-string v3, "=== [DEBUG] \u5927\u6a21\u578b API \u8c03\u7528 ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] FullURL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] Model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] APIKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->mask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] Temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v4}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTemperature()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] MaxTokens: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v4}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getMaxTokens()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DEBUG] RequestBody: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-direct {p0, v11, v13, v0, v1}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "response":Ljava/lang/String;
    if-eqz v14, :cond_102

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 208
    :cond_102
    const-string v2, "OpenAIClient"

    const-string v3, "=== \u5927\u6a21\u578b API \u8fd4\u56de\u7a7a\u54cd\u5e94 ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v12, 0x0

    goto/16 :goto_10

    .line 193
    .end local v14    # "response":Ljava/lang/String;
    :cond_10c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/chat/completions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_49

    .line 212
    .restart local v14    # "response":Ljava/lang/String;
    :cond_121
    const-string v2, "OpenAIClient"

    const-string v3, "=== \u5927\u6a21\u578b API \u539f\u59cb\u54cd\u5e94 ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "OpenAIClient"

    invoke-static {v2, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v14}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->parseReply(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v12

    .line 218
    .local v12, "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    if-eqz v12, :cond_1a1

    iget-object v2, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    if-eqz v2, :cond_1a1

    iget-object v2, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a1

    .line 219
    const-string v2, "OpenAIClient"

    const-string v3, "=== \u5927\u6a21\u578b\u89e3\u6790\u540e\u56de\u590d ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v2, "OpenAIClient"

    iget-object v3, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "OpenAIClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[\u97f3\u9891] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B

    if-nez v2, :cond_184

    const-string v2, "\u65e0 \u2192 \u9000\u56de\u539f\u5382 TTS"

    .line 222
    :goto_160
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v3, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_16b} :catch_16d

    goto/16 :goto_10

    .line 229
    .end local v11    # "fullUrl":Ljava/lang/String;
    .end local v12    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .end local v13    # "requestBody":Ljava/lang/String;
    .end local v14    # "response":Ljava/lang/String;
    :catch_16d
    move-exception v10

    .line 230
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "OpenAIClient"

    const-string v3, "=== \u5927\u6a21\u578b API \u8c03\u7528\u5f02\u5e38 ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "OpenAIClient"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    const/4 v12, 0x0

    goto/16 :goto_10

    .line 222
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "fullUrl":Ljava/lang/String;
    .restart local v12    # "reply":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .restart local v13    # "requestBody":Ljava/lang/String;
    .restart local v14    # "response":Ljava/lang/String;
    :cond_184
    :try_start_184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " \u5b57\u8282 / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v12, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audioFormat:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_160

    .line 225
    :cond_1a1
    const-string v2, "OpenAIClient"

    const-string v3, "=== \u5927\u6a21\u578b\u54cd\u5e94\u89e3\u6790\u5931\u8d25 ==="

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_1a8} :catch_16d

    .line 226
    const/4 v12, 0x0

    goto/16 :goto_10
.end method

.method private httpPostJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;
    .param p4, "maxAttempts"    # I

    .prologue
    .line 445
    const/4 v2, 0x0

    .line 447
    .local v2, "last":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    const/4 v0, 0x1

    .local v0, "attempt":I
    :goto_2
    if-gt v0, p4, :cond_16

    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->httpPostJsonOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;

    move-result-object v3

    .line 449
    .local v3, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;

    if-eqz v6, :cond_f

    .line 450
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;

    .line 469
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :goto_e
    return-object v6

    .line 453
    .restart local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_f
    move-object v2, v3

    .line 454
    iget-boolean v6, v3, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    if-eqz v6, :cond_16

    if-lt v0, p4, :cond_34

    .line 468
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_16
    :goto_16
    const-string v7, "OpenAIClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5927\u6a21\u578b\u8c03\u7528\u6700\u7ec8\u5931\u8d25: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_7e

    const-string v6, "unknown"

    :goto_27
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v6, 0x0

    goto :goto_e

    .line 458
    .restart local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    :cond_34
    const-wide/16 v6, 0xbb8

    int-to-long v8, v0

    mul-long v4, v6, v8

    .line 459
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

    .line 461
    :try_start_6f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_72
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_72} :catch_75

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 462
    :catch_75
    move-exception v1

    .line 463
    .local v1, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_16

    .line 468
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .end local v3    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    .end local v4    # "waitMs":J
    :cond_7e
    iget-object v6, v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    goto :goto_27
.end method

.method private httpPostJsonOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    .registers 23
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;
    .param p3, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 473
    new-instance v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;-><init>(Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;)V

    .line 474
    .local v14, "result":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
    const/4 v2, 0x0

    .line 475
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v10, 0x0

    .line 476
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 479
    .local v9, "os":Ljava/io/OutputStream;
    :try_start_c
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 480
    .local v15, "url":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 483
    const-string v16, "POST"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 486
    const/16 v16, 0x3a98

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    const v16, 0x15f90

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 490
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 491
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 492
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 495
    const-string v16, "Content-Type"

    const-string v17, "application/json; charset=utf-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v16, "Accept"

    const-string v17, "application/json"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v16, "Authorization"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bearer "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v16, "User-Agent"

    const-string v17, "R1-Speaker/1.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 502
    const-string v16, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 503
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 506
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 507
    .local v13, "responseCode":I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v13, v0, :cond_165

    .line 509
    const-string v5, ""
    :try_end_aa
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_aa} :catch_246
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_aa} :catch_1ed
    .catchall {:try_start_c .. :try_end_aa} :catchall_22d

    .line 511
    .local v5, "errorBody":Ljava/lang/String;
    :try_start_aa
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    .line 512
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-direct/range {v16 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 513
    .local v6, "errorReader":Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v7, "errorSB":Ljava/lang/StringBuilder;
    :goto_c1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "eline":Ljava/lang/String;
    if-eqz v4, :cond_155

    .line 516
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ca} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_aa .. :try_end_ca} :catch_246
    .catchall {:try_start_aa .. :try_end_ca} :catchall_22d

    goto :goto_c1

    .line 520
    .end local v4    # "eline":Ljava/lang/String;
    .end local v6    # "errorReader":Ljava/io/BufferedReader;
    .end local v7    # "errorSB":Ljava/lang/StringBuilder;
    :catch_cb
    move-exception v16

    .line 523
    :goto_cc
    const/16 v16, 0x1ad

    move/from16 v0, v16

    if-eq v13, v0, :cond_d8

    const/16 v16, 0x1f4

    move/from16 v0, v16

    if-lt v13, v0, :cond_15e

    :cond_d8
    const/16 v16, 0x1

    :goto_da
    :try_start_da
    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 524
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HTTP "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 525
    const-string v17, "OpenAIClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpPostJson failed: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, ", error body: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 526
    iget-boolean v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_162

    const-string v16, " (\u53ef\u91cd\u8bd5)"

    :goto_132
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 525
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/net/SocketTimeoutException; {:try_start_da .. :try_end_145} :catch_246
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_145} :catch_1ed
    .catchall {:try_start_da .. :try_end_145} :catchall_22d

    .line 556
    if-eqz v9, :cond_14a

    :try_start_147
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 557
    :cond_14a
    if-eqz v10, :cond_14f

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 558
    :cond_14f
    if-eqz v2, :cond_154

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_154} :catch_24b

    .line 552
    .end local v5    # "errorBody":Ljava/lang/String;
    .end local v13    # "responseCode":I
    .end local v15    # "url":Ljava/net/URL;
    :cond_154
    :goto_154
    return-object v14

    .line 518
    .restart local v4    # "eline":Ljava/lang/String;
    .restart local v5    # "errorBody":Ljava/lang/String;
    .restart local v6    # "errorReader":Ljava/io/BufferedReader;
    .restart local v7    # "errorSB":Ljava/lang/StringBuilder;
    .restart local v13    # "responseCode":I
    .restart local v15    # "url":Ljava/net/URL;
    :cond_155
    :try_start_155
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 519
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15b} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_155 .. :try_end_15b} :catch_246
    .catchall {:try_start_155 .. :try_end_15b} :catchall_22d

    move-result-object v5

    goto/16 :goto_cc

    .line 523
    .end local v4    # "eline":Ljava/lang/String;
    .end local v6    # "errorReader":Ljava/io/BufferedReader;
    .end local v7    # "errorSB":Ljava/lang/StringBuilder;
    :cond_15e
    const/16 v16, 0x0

    goto/16 :goto_da

    .line 526
    :cond_162
    :try_start_162
    const-string v16, " (\u4e0d\u53ef\u91cd\u8bd5)"

    goto :goto_132

    .line 531
    .end local v5    # "errorBody":Ljava/lang/String;
    :cond_165
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .local v12, "response":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-direct/range {v16 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17c
    .catch Ljava/net/SocketTimeoutException; {:try_start_162 .. :try_end_17c} :catch_246
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_17c} :catch_1ed
    .catchall {:try_start_162 .. :try_end_17c} :catchall_22d

    .line 534
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    :goto_17c
    :try_start_17c
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_1d3

    .line 535
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_185
    .catch Ljava/net/SocketTimeoutException; {:try_start_17c .. :try_end_185} :catch_186
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_185} :catch_243
    .catchall {:try_start_17c .. :try_end_185} :catchall_240

    goto :goto_17c

    .line 541
    .end local v8    # "line":Ljava/lang/String;
    :catch_186
    move-exception v3

    move-object v10, v11

    .line 543
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "response":Ljava/lang/StringBuilder;
    .end local v13    # "responseCode":I
    .end local v15    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/SocketTimeoutException;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :goto_188
    const/16 v16, 0x1

    :try_start_18a
    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 544
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u8d85\u65f6: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 545
    const-string v16, "OpenAIClient"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpPostJson timeout: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c1
    .catchall {:try_start_18a .. :try_end_1c1} :catchall_22d

    .line 556
    if-eqz v9, :cond_1c6

    :try_start_1c3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 557
    :cond_1c6
    if-eqz v10, :cond_1cb

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 558
    :cond_1cb
    if-eqz v2, :cond_154

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1d0} :catch_1d1

    goto :goto_154

    .line 559
    :catch_1d1
    move-exception v16

    goto :goto_154

    .line 538
    .end local v3    # "e":Ljava/net/SocketTimeoutException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "response":Ljava/lang/StringBuilder;
    .restart local v13    # "responseCode":I
    .restart local v15    # "url":Ljava/net/URL;
    :cond_1d3
    :try_start_1d3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->body:Ljava/lang/String;
    :try_end_1db
    .catch Ljava/net/SocketTimeoutException; {:try_start_1d3 .. :try_end_1db} :catch_186
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1db} :catch_243
    .catchall {:try_start_1d3 .. :try_end_1db} :catchall_240

    .line 556
    if-eqz v9, :cond_1e0

    :try_start_1dd
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 557
    :cond_1e0
    if-eqz v11, :cond_1e5

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 558
    :cond_1e5
    if-eqz v2, :cond_1ea

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1ea
    .catch Ljava/lang/Exception; {:try_start_1dd .. :try_end_1ea} :catch_249

    :cond_1ea
    :goto_1ea
    move-object v10, v11

    .line 539
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_154

    .line 547
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "response":Ljava/lang/StringBuilder;
    .end local v13    # "responseCode":I
    .end local v15    # "url":Ljava/net/URL;
    :catch_1ed
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/Exception;
    :goto_1ee
    const/16 v16, 0x1

    :try_start_1f0
    move/from16 v0, v16

    iput-boolean v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->retryable:Z

    .line 549
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;->summary:Ljava/lang/String;

    .line 550
    const-string v16, "OpenAIClient"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "httpPostJson error: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_219
    .catchall {:try_start_1f0 .. :try_end_219} :catchall_22d

    .line 556
    if-eqz v9, :cond_21e

    :try_start_21b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 557
    :cond_21e
    if-eqz v10, :cond_223

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 558
    :cond_223
    if-eqz v2, :cond_154

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_228} :catch_22a

    goto/16 :goto_154

    .line 559
    :catch_22a
    move-exception v16

    goto/16 :goto_154

    .line 555
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_22d
    move-exception v16

    .line 556
    :goto_22e
    if-eqz v9, :cond_233

    :try_start_230
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 557
    :cond_233
    if-eqz v10, :cond_238

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 558
    :cond_238
    if-eqz v2, :cond_23d

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23d
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_23d} :catch_23e

    .line 562
    :cond_23d
    :goto_23d
    throw v16

    .line 559
    :catch_23e
    move-exception v17

    goto :goto_23d

    .line 555
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "response":Ljava/lang/StringBuilder;
    .restart local v13    # "responseCode":I
    .restart local v15    # "url":Ljava/net/URL;
    :catchall_240
    move-exception v16

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_22e

    .line 547
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catch_243
    move-exception v3

    move-object v10, v11

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_1ee

    .line 541
    .end local v12    # "response":Ljava/lang/StringBuilder;
    .end local v13    # "responseCode":I
    .end local v15    # "url":Ljava/net/URL;
    :catch_246
    move-exception v3

    goto/16 :goto_188

    .line 559
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "response":Ljava/lang/StringBuilder;
    .restart local v13    # "responseCode":I
    .restart local v15    # "url":Ljava/net/URL;
    :catch_249
    move-exception v16

    goto :goto_1ea

    .end local v8    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "response":Ljava/lang/StringBuilder;
    .restart local v5    # "errorBody":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catch_24b
    move-exception v16

    goto/16 :goto_154
.end method

.method private static isPlaceholderKey(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "YOUR_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static mask(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    if-nez p0, :cond_5

    const-string v0, "null"

    .line 239
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private parseReply(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .registers 15
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 389
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 391
    .local v7, "root":Lorg/json/JSONObject;
    const-string v9, "error"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 392
    const-string v9, "error"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 393
    .local v4, "error":Lorg/json/JSONObject;
    const-string v9, "OpenAIClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "API error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "message"

    const-string v12, "Unknown error"

    invoke-virtual {v4, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 423
    .end local v4    # "error":Lorg/json/JSONObject;
    .end local v7    # "root":Lorg/json/JSONObject;
    :cond_35
    :goto_35
    return-object v6

    .line 397
    .restart local v7    # "root":Lorg/json/JSONObject;
    :cond_36
    const-string v9, "choices"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 398
    .local v1, "choices":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-nez v9, :cond_44

    move-object v6, v8

    .line 399
    goto :goto_35

    .line 401
    :cond_44
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "message"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 403
    .local v5, "message":Lorg/json/JSONObject;
    new-instance v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    invoke-direct {v6}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;-><init>()V

    .line 404
    .local v6, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    const-string v9, "content"

    const-string v10, ""

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    .line 406
    const-string v9, "audio"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 407
    .local v0, "audio":Lorg/json/JSONObject;
    if-eqz v0, :cond_35

    .line 408
    const-string v9, "format"

    const-string v10, "mp3"

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audioFormat:Ljava/lang/String;

    .line 409
    const-string v9, "url"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audioUrl:Ljava/lang/String;

    .line 410
    const-string v9, "data"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_85} :catch_ad

    move-result v9

    if-lez v9, :cond_35

    .line 413
    const/4 v9, 0x0

    :try_start_89
    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    iput-object v9, v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8f} :catch_90

    goto :goto_35

    .line 414
    :catch_90
    move-exception v3

    .line 415
    .local v3, "e":Ljava/lang/Exception;
    :try_start_91
    const-string v9, "OpenAIClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u97f3\u9891 base64 \u89e3\u7801\u5931\u8d25: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/4 v9, 0x0

    iput-object v9, v6, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_ac} :catch_ad

    goto :goto_35

    .line 421
    .end local v0    # "audio":Lorg/json/JSONObject;
    .end local v1    # "choices":Lorg/json/JSONArray;
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "message":Lorg/json/JSONObject;
    .end local v6    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .end local v7    # "root":Lorg/json/JSONObject;
    :catch_ad
    move-exception v3

    .line 422
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "OpenAIClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 423
    goto/16 :goto_35
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 353
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 357
    const-string v8, "error"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 358
    .local v3, "error":Lorg/json/JSONObject;
    const-string v8, "message"

    const-string v9, "Unknown error"

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 359
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

    .line 376
    .end local v3    # "error":Lorg/json/JSONObject;
    .end local v4    # "errorMsg":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    :cond_34
    :goto_34
    return-object v1

    .line 364
    .restart local v7    # "root":Lorg/json/JSONObject;
    :cond_35
    const-string v8, "choices"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 365
    .local v0, "choices":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_34

    .line 366
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 367
    .local v5, "firstChoice":Lorg/json/JSONObject;
    const-string v8, "message"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 368
    .local v6, "message":Lorg/json/JSONObject;
    const-string v8, "content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_51} :catch_53

    move-result-object v1

    .line 369
    .local v1, "content":Ljava/lang/String;
    goto :goto_34

    .line 374
    .end local v0    # "choices":Lorg/json/JSONArray;
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "firstChoice":Lorg/json/JSONObject;
    .end local v6    # "message":Lorg/json/JSONObject;
    .end local v7    # "root":Lorg/json/JSONObject;
    :catch_53
    move-exception v2

    .line 375
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
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistoryEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v0

    .line 98
    .local v0, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    iget-object v1, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    goto :goto_7
.end method

.method public chatWithHistoryEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .registers 31
    .param p1, "userInput"    # Ljava/lang/String;
    .param p2, "conversationHistory"    # Ljava/lang/String;
    .param p3, "systemPrompt"    # Ljava/lang/String;
    .param p4, "topicUser"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 108
    :cond_8
    const-string v2, "OpenAIClient"

    const-string v3, "Empty user input"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v25, 0x0

    .line 168
    :goto_11
    return-object v25

    .line 112
    :cond_12
    const-string v2, "doubao"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getTts()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 116
    .local v7, "wantAudio":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isFallbackSameAsPrimary()Z

    move-result v2

    if-nez v2, :cond_a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .line 117
    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->isPlaceholderKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a3

    const/16 v21, 0x1

    .line 118
    .local v21, "hasFallback":Z
    :goto_3a
    if-eqz v21, :cond_a6

    const/4 v9, 0x2

    .line 121
    .local v9, "primaryAttempts":I
    :goto_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 122
    .local v22, "now":J
    sget-wide v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->sPrimaryDownUntil:J

    cmp-long v2, v22, v2

    if-gez v2, :cond_a8

    const/16 v24, 0x1

    .line 123
    .local v24, "primaryDown":Z
    :goto_49
    if-nez v24, :cond_d6

    .line 124
    if-eqz p4, :cond_57

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 125
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getUser()Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "primaryTopic":Ljava/lang/String;
    :goto_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getApiKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    .line 127
    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getThinking()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 126
    invoke-direct/range {v2 .. v12}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->callEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v25

    .line 129
    .local v25, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    if-eqz v25, :cond_b0

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    if-eqz v2, :cond_b0

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 130
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->sPrimaryDownUntil:J

    goto/16 :goto_11

    .line 117
    .end local v8    # "primaryTopic":Ljava/lang/String;
    .end local v9    # "primaryAttempts":I
    .end local v21    # "hasFallback":Z
    .end local v22    # "now":J
    .end local v24    # "primaryDown":Z
    .end local v25    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    :cond_a3
    const/16 v21, 0x0

    goto :goto_3a

    .line 118
    .restart local v21    # "hasFallback":Z
    :cond_a6
    const/4 v9, 0x3

    goto :goto_3d

    .line 122
    .restart local v9    # "primaryAttempts":I
    .restart local v22    # "now":J
    :cond_a8
    const/16 v24, 0x0

    goto :goto_49

    .line 125
    .restart local v24    # "primaryDown":Z
    :cond_ab
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_5f

    .line 134
    .restart local v8    # "primaryTopic":Ljava/lang/String;
    .restart local v25    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    :cond_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    sput-wide v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->sPrimaryDownUntil:J

    .line 135
    const-string v2, "OpenAIClient"

    const-string v3, "[FALLBACK] \u4e3b\u7aef\u70b9\u4e0d\u53ef\u7528, 300s \u5185\u76f4\u63a5\u8d70\u5907\u7528\u7aef\u70b9"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v8    # "primaryTopic":Ljava/lang/String;
    .end local v25    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    :goto_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isFallbackSameAsPrimary()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 144
    const-string v2, "OpenAIClient"

    const-string v3, "[FALLBACK] \u5907\u7528\u7aef\u70b9\u4e0e\u4e3b\u7aef\u70b9\u76f8\u540c, \u653e\u5f03\u964d\u7ea7"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 138
    :cond_d6
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FALLBACK] \u4e3b\u7aef\u70b9\u51b7\u5374\u4e2d(\u5269\u4f59 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->sPrimaryDownUntil:J

    sub-long v4, v4, v22

    const-wide/16 v14, 0x3e8

    div-long/2addr v4, v14

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s), \u76f4\u63a5\u7528\u5907\u7528\u7aef\u70b9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    .line 148
    :cond_fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackBaseUrl()Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, "fbUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackApiKey()Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "fbKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackModel()Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "fbModel":Ljava/lang/String;
    if-eqz v12, :cond_122

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_122

    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->isPlaceholderKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 152
    :cond_122
    const-string v2, "OpenAIClient"

    const-string v3, "[FALLBACK] \u5907\u7528\u7aef\u70b9\u6ca1\u914d Key, \u65e0\u6cd5\u964d\u7ea7(\u89c1 ai_config.ini \u7684 fallback_api_key)"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v25, 0x0

    goto/16 :goto_11

    .line 156
    :cond_12d
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FALLBACK] \u6539\u7528\u5907\u7528\u7aef\u70b9: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->config:Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getThinking()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v10, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    invoke-direct/range {v10 .. v20}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->callEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v25

    .line 163
    .restart local v25    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    if-eqz v25, :cond_198

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    if-eqz v2, :cond_198

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_198

    .line 164
    const-string v2, "OpenAIClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FALLBACK] \u5907\u7528\u7aef\u70b9\u5df2\u63a5\u624b, \u56de\u590d: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 167
    :cond_198
    const-string v2, "OpenAIClient"

    const-string v3, "[FALLBACK] \u5907\u7528\u7aef\u70b9\u4e5f\u6ca1\u6210\u529f"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v25, 0x0

    goto/16 :goto_11
.end method
