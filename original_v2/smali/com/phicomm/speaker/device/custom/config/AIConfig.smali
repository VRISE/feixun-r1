.class public Lcom/phicomm/speaker/device/custom/config/AIConfig;
.super Ljava/lang/Object;
.source "AIConfig.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "ai_config.ini"

.field private static final CURRENT_CONFIG_VERSION:I = 0x5

.field private static final DEFAULT_API_KEY:Ljava/lang/String; = "YOUR_ZHIPU_API_KEY_HERE"

.field private static final DEFAULT_BASE_URL:Ljava/lang/String; = "https://open.bigmodel.cn/api/paas/v4/chat/completions"

.field private static final DEFAULT_MAX_TOKENS:I = 0x400

.field private static final DEFAULT_MODEL:Ljava/lang/String; = "GLM-4.5-Flash"

.field private static final DEFAULT_PROVIDER:Ljava/lang/String; = "openai"

.field private static final DEFAULT_TEMPERATURE:F = 0.7f

.field private static final DEFAULT_THINKING:Ljava/lang/String; = "disabled"

.field private static final DEFAULT_TTS:Ljava/lang/String; = "doubao"

.field private static final DEFAULT_USER:Ljava/lang/String; = "r1-speaker"

.field private static final FORCE_API_KEY:Z = false

.field private static final FORCE_BASE_URL:Z = false

.field private static final FORCE_MAX_TOKENS:Z = false

.field private static final FORCE_MODEL:Z = false

.field private static final FORCE_PROVIDER:Z = false

.field private static final FORCE_TEMPERATURE:Z = false

.field private static final FORCE_THINKING:Z = false

.field private static final SECTION_AI:Ljava/lang/String; = "[AI]"

.field private static final TAG:Ljava/lang/String; = "AIConfig"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field private configVersion:I

.field private maxTokens:I

.field private model:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private temperature:F

.field private thinking:Ljava/lang/String;

.field private tts:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyForcedDefaults()Z
    .registers 4

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 276
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 277
    const-string v1, "AIConfig"

    const-string v2, "Applied forced defaults from code (FORCE_* switches)"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_a
    return v0
.end method

.method private static createDefaultConfig(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    new-instance v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 427
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    const-string v1, "openai"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 428
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 429
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 430
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 431
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 432
    const/16 v1, 0x400

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 433
    const-string v1, "disabled"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 434
    const/4 v1, 0x5

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 435
    const-string v1, "doubao"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 436
    const-string v1, "r1-speaker"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 438
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 439
    const-string v1, "AIConfig"

    const-string v2, "Default config created"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 283
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static isPlaceholder(Ljava/lang/String;)Z
    .registers 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 217
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x5

    .line 162
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ai_config.ini"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 165
    const-string v3, "AIConfig"

    const-string v4, "Config file not found, creating default config"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->createDefaultConfig(Landroid/content/Context;)V

    .line 172
    :cond_1c
    new-instance v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 173
    .local v1, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->readFromFile(Ljava/io/File;)V

    .line 175
    const/4 v0, 0x0

    .line 180
    .local v0, "changed":Z
    iget v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    if-ge v3, v6, :cond_57

    .line 181
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", migrating (keeping api_key)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->migrate()V

    .line 184
    const/4 v0, 0x1

    .line 188
    :cond_57
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->applyForcedDefaults()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 189
    const/4 v0, 0x1

    .line 193
    :cond_5e
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 194
    const-string v3, "AIConfig"

    const-string v4, "api_key is placeholder, adopting DEFAULT_API_KEY from code"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 196
    const/4 v0, 0x1

    .line 199
    :cond_7a
    if-eqz v0, :cond_81

    .line 200
    iput v6, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 201
    invoke-virtual {v1, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 204
    :cond_81
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 205
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Key \u672a\u914d\u7f6e! \u8bf7\u6309 README.MD \u9876\u90e8\u6559\u7a0b\u7533\u8bf7\u667a\u8c31 Key, \u518d\u586b\u5165 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_a5
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config loaded: provider="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", model="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max_tokens="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thinking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object v1
.end method

.method private migrate()V
    .registers 2

    .prologue
    .line 224
    const-string v0, "openai"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 225
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 226
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 227
    const/16 v0, 0x400

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 228
    const-string v0, "disabled"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 229
    const/4 v0, 0x5

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 232
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 233
    :cond_24
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 235
    :cond_28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 236
    :cond_34
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 239
    :cond_38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 240
    const-string v0, "doubao"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 242
    :cond_40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 243
    :cond_4c
    const-string v0, "r1-speaker"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 245
    :cond_50
    return-void
.end method

.method private readFromFile(Ljava/io/File;)V
    .registers 16
    .param p1, "configFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 322
    const-string v8, "openai"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 323
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 324
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 325
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 326
    const v8, 0x3f333333    # 0.7f

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 327
    const/16 v8, 0x400

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 328
    const-string v8, "disabled"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 329
    iput v9, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 330
    const-string v8, "doubao"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 331
    const-string v8, "r1-speaker"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 334
    :try_start_2a
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 335
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v8, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 338
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 340
    .local v2, "inAiSection":Z
    :cond_3c
    :goto_3c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_1ce

    .line 341
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3c

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3c

    .line 349
    const-string v8, "[AI]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 350
    const/4 v2, 0x1

    .line 351
    goto :goto_3c

    .line 352
    :cond_66
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 353
    const/4 v2, 0x0

    .line 354
    goto :goto_3c

    .line 358
    :cond_70
    if-eqz v2, :cond_3c

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 359
    const-string v8, "="

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "parts":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v11, :cond_3c

    .line 361
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 362
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 365
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1fc

    :cond_9a
    :goto_9a
    packed-switch v8, :pswitch_data_226

    goto :goto_3c

    .line 367
    :pswitch_9e
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_a6} :catch_a7

    goto :goto_3c

    .line 417
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "inAiSection":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :catch_a7
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "AIConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load config: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c0
    return-void

    .line 365
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "inAiSection":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :sswitch_c1
    :try_start_c1
    const-string v12, "provider"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    move v8, v9

    goto :goto_9a

    :sswitch_cb
    const-string v12, "base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    move v8, v10

    goto :goto_9a

    :sswitch_d5
    const-string v12, "api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    move v8, v11

    goto :goto_9a

    :sswitch_df
    const-string v12, "model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/4 v8, 0x3

    goto :goto_9a

    :sswitch_e9
    const-string v12, "temperature"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/4 v8, 0x4

    goto :goto_9a

    :sswitch_f3
    const-string v12, "max_tokens"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/4 v8, 0x5

    goto :goto_9a

    :sswitch_fd
    const-string v12, "thinking"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/4 v8, 0x6

    goto :goto_9a

    :sswitch_107
    const-string v12, "config_version"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/4 v8, 0x7

    goto :goto_9a

    :sswitch_111
    const-string v12, "tts"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/16 v8, 0x8

    goto/16 :goto_9a

    :sswitch_11d
    const-string v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9a

    const/16 v8, 0x9

    goto/16 :goto_9a

    .line 370
    :pswitch_129
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    goto/16 :goto_3c

    .line 373
    :pswitch_133
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    goto/16 :goto_3c

    .line 376
    :pswitch_13d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_145} :catch_a7

    goto/16 :goto_3c

    .line 380
    :pswitch_147
    :try_start_147
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F
    :try_end_14d
    .catch Ljava/lang/NumberFormatException; {:try_start_147 .. :try_end_14d} :catch_14f
    .catch Ljava/lang/Exception; {:try_start_147 .. :try_end_14d} :catch_a7

    goto/16 :goto_3c

    .line 381
    :catch_14f
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_150
    const-string v8, "AIConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid temperature value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_168} :catch_a7

    goto/16 :goto_3c

    .line 387
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_16a
    :try_start_16a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I
    :try_end_170
    .catch Ljava/lang/NumberFormatException; {:try_start_16a .. :try_end_170} :catch_172
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_170} :catch_a7

    goto/16 :goto_3c

    .line 388
    :catch_172
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_173
    const-string v8, "AIConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid max_tokens value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 393
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_18d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_195} :catch_a7

    goto/16 :goto_3c

    .line 397
    :pswitch_197
    :try_start_197
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I
    :try_end_19d
    .catch Ljava/lang/NumberFormatException; {:try_start_197 .. :try_end_19d} :catch_19f
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_19d} :catch_a7

    goto/16 :goto_3c

    .line 398
    :catch_19f
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_1a0
    const-string v8, "AIConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid config_version value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 403
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1ba
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto/16 :goto_3c

    .line 406
    :pswitch_1c4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3c

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    goto/16 :goto_3c

    .line 413
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_1ce
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 414
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 416
    const-string v8, "AIConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Config loaded: provider="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", model="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fa
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1fa} :catch_a7

    goto/16 :goto_c0

    .line 365
    :sswitch_data_1fc
    .sparse-switch
        -0x6696d4ff -> :sswitch_cb
        -0x3adbfa0f -> :sswitch_c1
        -0x2fb05546 -> :sswitch_d5
        -0x1fca1b25 -> :sswitch_107
        0x1c1f3 -> :sswitch_111
        0x36ebcb -> :sswitch_11d
        0x633fb29 -> :sswitch_df
        0x132cc574 -> :sswitch_e9
        0x48fd95b0 -> :sswitch_fd
        0x5070c4d5 -> :sswitch_f3
    .end sparse-switch

    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_129
        :pswitch_133
        :pswitch_13d
        :pswitch_147
        :pswitch_16a
        :pswitch_18d
        :pswitch_197
        :pswitch_1ba
        :pswitch_1c4
    .end packed-switch
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()I
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    return v0
.end method

.method public getMaxTokens()I
    .registers 2

    .prologue
    .line 465
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()F
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    return v0
.end method

.method public getThinking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    return-object v0
.end method

.method public getTts()Ljava/lang/String;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const-string v0, "r1-speaker"

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public save(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "ai_config.ini"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .local v0, "configFile":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[AI]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v4, "base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v4, "api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v4, "model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v4, "temperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v4, "max_tokens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v4, "thinking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v4, "tts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v4, :cond_ff

    const-string v4, ""

    :goto_a3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const-string v4, "user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-nez v4, :cond_102

    const-string v4, ""

    :goto_b8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v4, "config_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 309
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 311
    const-string v4, "AIConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config saved to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_fe
    return-void

    .line 304
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_ff
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto :goto_a3

    .line 305
    :cond_102
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_104} :catch_105

    goto :goto_b8

    .line 312
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_105
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AIConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to save config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fe
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 502
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setMaxTokens(I)V
    .registers 2
    .param p1, "maxTokens"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 514
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public setTemperature(F)V
    .registers 2
    .param p1, "temperature"    # F

    .prologue
    .line 509
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 510
    return-void
.end method

.method public setThinking(Ljava/lang/String;)V
    .registers 2
    .param p1, "thinking"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 518
    return-void
.end method
