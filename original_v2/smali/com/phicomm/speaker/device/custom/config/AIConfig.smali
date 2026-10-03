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

.field private fallbackApiKey:Ljava/lang/String;

.field private fallbackBaseUrl:Ljava/lang/String;

.field private fallbackModel:Ljava/lang/String;

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
    .line 277
    const/4 v0, 0x0

    .line 301
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 302
    const-string v1, "AIConfig"

    const-string v2, "Applied forced defaults from code (FORCE_* switches)"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_a
    return v0
.end method

.method private static createDefaultConfig(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 470
    new-instance v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 471
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    const-string v1, "openai"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 472
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 473
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 474
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 475
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 476
    const/16 v1, 0x400

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 477
    const-string v1, "disabled"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 478
    const/4 v1, 0x5

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 479
    const-string v1, "doubao"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 480
    const-string v1, "r1-speaker"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 481
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 482
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 483
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 485
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 486
    const-string v1, "AIConfig"

    const-string v2, "Default config created"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 308
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
    .line 232
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

    .line 177
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ai_config.ini"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 180
    const-string v3, "AIConfig"

    const-string v4, "Config file not found, creating default config"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->createDefaultConfig(Landroid/content/Context;)V

    .line 187
    :cond_1c
    new-instance v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 188
    .local v1, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->readFromFile(Ljava/io/File;)V

    .line 190
    const/4 v0, 0x0

    .line 195
    .local v0, "changed":Z
    iget v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    if-ge v3, v6, :cond_57

    .line 196
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

    .line 198
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->migrate()V

    .line 199
    const/4 v0, 0x1

    .line 203
    :cond_57
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->applyForcedDefaults()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 204
    const/4 v0, 0x1

    .line 208
    :cond_5e
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 209
    const-string v3, "AIConfig"

    const-string v4, "api_key is placeholder, adopting DEFAULT_API_KEY from code"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 211
    const/4 v0, 0x1

    .line 214
    :cond_7a
    if-eqz v0, :cond_81

    .line 215
    iput v6, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 216
    invoke-virtual {v1, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 219
    :cond_81
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 220
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Key \u672a\u914d\u7f6e! \u8bf7\u6309 README.MD \u9876\u90e8\u6559\u7a0b\u7533\u8bf7\u667a\u8c31 Key, \u518d\u586b\u5165 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
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

    .line 227
    return-object v1
.end method

.method private migrate()V
    .registers 2

    .prologue
    .line 239
    const-string v0, "openai"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 240
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 241
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 242
    const/16 v0, 0x400

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 243
    const-string v0, "disabled"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 244
    const/4 v0, 0x5

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 248
    :cond_24
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 250
    :cond_28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 251
    :cond_34
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 254
    :cond_38
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 255
    const-string v0, "doubao"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 257
    :cond_40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 258
    :cond_4c
    const-string v0, "r1-speaker"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 261
    :cond_50
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 262
    :cond_5c
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 264
    :cond_60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 265
    :cond_6c
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 267
    :cond_70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 268
    :cond_7c
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 270
    :cond_80
    return-void
.end method

.method private readFromFile(Ljava/io/File;)V
    .registers 16
    .param p1, "configFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 354
    const-string v8, "openai"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 355
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 356
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 357
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 358
    const v8, 0x3f333333    # 0.7f

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 359
    const/16 v8, 0x400

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 360
    const-string v8, "disabled"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 361
    iput v9, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 362
    const-string v8, "doubao"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 363
    const-string v8, "r1-speaker"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 364
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 365
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 366
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 369
    :try_start_36
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 370
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v8, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 373
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 375
    .local v2, "inAiSection":Z
    :cond_48
    :goto_48
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_21c

    .line 376
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_48

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 384
    const-string v8, "[AI]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 385
    const/4 v2, 0x1

    .line 386
    goto :goto_48

    .line 387
    :cond_72
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 388
    const/4 v2, 0x0

    .line 389
    goto :goto_48

    .line 393
    :cond_7c
    if-eqz v2, :cond_48

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 394
    const-string v8, "="

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "parts":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v11, :cond_48

    .line 396
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_24a

    :cond_a6
    :goto_a6
    packed-switch v8, :pswitch_data_280

    goto :goto_48

    .line 402
    :pswitch_aa
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_b2} :catch_b3

    goto :goto_48

    .line 461
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "inAiSection":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :catch_b3
    move-exception v0

    .line 462
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

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_cc
    return-void

    .line 400
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "inAiSection":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :sswitch_cd
    :try_start_cd
    const-string v12, "provider"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    move v8, v9

    goto :goto_a6

    :sswitch_d7
    const-string v12, "base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    move v8, v10

    goto :goto_a6

    :sswitch_e1
    const-string v12, "api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    move v8, v11

    goto :goto_a6

    :sswitch_eb
    const-string v12, "model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/4 v8, 0x3

    goto :goto_a6

    :sswitch_f5
    const-string v12, "temperature"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/4 v8, 0x4

    goto :goto_a6

    :sswitch_ff
    const-string v12, "max_tokens"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/4 v8, 0x5

    goto :goto_a6

    :sswitch_109
    const-string v12, "thinking"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/4 v8, 0x6

    goto :goto_a6

    :sswitch_113
    const-string v12, "config_version"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/4 v8, 0x7

    goto :goto_a6

    :sswitch_11d
    const-string v12, "tts"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/16 v8, 0x8

    goto/16 :goto_a6

    :sswitch_129
    const-string v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/16 v8, 0x9

    goto/16 :goto_a6

    :sswitch_135
    const-string v12, "fallback_base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/16 v8, 0xa

    goto/16 :goto_a6

    :sswitch_141
    const-string v12, "fallback_api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/16 v8, 0xb

    goto/16 :goto_a6

    :sswitch_14d
    const-string v12, "fallback_model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const/16 v8, 0xc

    goto/16 :goto_a6

    .line 405
    :pswitch_159
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    goto/16 :goto_48

    .line 408
    :pswitch_163
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    goto/16 :goto_48

    .line 411
    :pswitch_16d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_175} :catch_b3

    goto/16 :goto_48

    .line 415
    :pswitch_177
    :try_start_177
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_17d} :catch_17f
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17d} :catch_b3

    goto/16 :goto_48

    .line 416
    :catch_17f
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_180
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
    :try_end_198
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_198} :catch_b3

    goto/16 :goto_48

    .line 422
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_19a
    :try_start_19a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I
    :try_end_1a0
    .catch Ljava/lang/NumberFormatException; {:try_start_19a .. :try_end_1a0} :catch_1a2
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1a0} :catch_b3

    goto/16 :goto_48

    .line 423
    :catch_1a2
    move-exception v0

    .line 424
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_1a3
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

    goto/16 :goto_48

    .line 428
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1bd
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1c5} :catch_b3

    goto/16 :goto_48

    .line 432
    :pswitch_1c7
    :try_start_1c7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I
    :try_end_1cd
    .catch Ljava/lang/NumberFormatException; {:try_start_1c7 .. :try_end_1cd} :catch_1cf
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1cd} :catch_b3

    goto/16 :goto_48

    .line 433
    :catch_1cf
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_1d0
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

    goto/16 :goto_48

    .line 438
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1ea
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto/16 :goto_48

    .line 441
    :pswitch_1f4
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    goto/16 :goto_48

    .line 444
    :pswitch_1fe
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    goto/16 :goto_48

    .line 447
    :pswitch_208
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    goto/16 :goto_48

    .line 450
    :pswitch_212
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_48

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    goto/16 :goto_48

    .line 457
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_21c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 458
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 460
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
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_1d0 .. :try_end_248} :catch_b3

    goto/16 :goto_cc

    .line 400
    :sswitch_data_24a
    .sparse-switch
        -0x6696d4ff -> :sswitch_d7
        -0x3adbfa0f -> :sswitch_cd
        -0x2fb05546 -> :sswitch_e1
        -0x1fca1b25 -> :sswitch_113
        -0x5d09a3 -> :sswitch_141
        0x1c1f3 -> :sswitch_11d
        0x36ebcb -> :sswitch_129
        0x633fb29 -> :sswitch_eb
        0x101bd38c -> :sswitch_14d
        0x132cc574 -> :sswitch_f5
        0x48fd95b0 -> :sswitch_109
        0x5070c4d5 -> :sswitch_ff
        0x547f53be -> :sswitch_135
    .end sparse-switch

    :pswitch_data_280
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_159
        :pswitch_163
        :pswitch_16d
        :pswitch_177
        :pswitch_19a
        :pswitch_1bd
        :pswitch_1c7
        :pswitch_1ea
        :pswitch_1f4
        :pswitch_1fe
        :pswitch_208
        :pswitch_212
    .end packed-switch
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()I
    .registers 2

    .prologue
    .line 516
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    return v0
.end method

.method public getFallbackApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 546
    :cond_10
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    .line 545
    :goto_12
    return-object v0

    .line 546
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallbackBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 540
    :cond_10
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    .line 539
    :goto_12
    return-object v0

    .line 540
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallbackModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 552
    :cond_10
    const-string v0, "GLM-4.5-Flash"

    .line 551
    :goto_12
    return-object v0

    .line 552
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getMaxTokens()I
    .registers 2

    .prologue
    .line 512
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()F
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    return v0
.end method

.method public getThinking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    return-object v0
.end method

.method public getTts()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
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
    .line 534
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

.method public isFallbackSameAsPrimary()Z
    .registers 3

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public save(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "ai_config.ini"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 318
    .local v0, "configFile":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 319
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[AI]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v4, "base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v4, "api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v4, "model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v4, "temperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v4, "max_tokens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v4, "thinking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v4, "tts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v4, :cond_150

    const-string v4, ""

    :goto_a3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v4, "user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-nez v4, :cond_154

    const-string v4, ""

    :goto_b8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v4, "fallback_base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 333
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    const-string v6, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_158

    const-string v4, ""

    :goto_d3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v4, "fallback_api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 335
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    const-string v6, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, ""

    :goto_ee
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v4, "fallback_model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 337
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    const-string v6, "GLM-4.5-Flash"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15f

    const-string v4, ""

    :goto_109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v4, "config_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 341
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 343
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

    .line 347
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_14f
    return-void

    .line 329
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_150
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto/16 :goto_a3

    .line 330
    :cond_154
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    goto/16 :goto_b8

    .line 333
    :cond_158
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    goto/16 :goto_d3

    .line 335
    :cond_15c
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    goto :goto_ee

    .line 337
    :cond_15f
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_161} :catch_162

    goto :goto_109

    .line 344
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_162
    move-exception v1

    .line 345
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

    goto :goto_14f
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 575
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public setFallbackApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    return-void
.end method

.method public setFallbackBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setFallbackModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    return-void
.end method

.method public setMaxTokens(I)V
    .registers 2
    .param p1, "maxTokens"    # I

    .prologue
    .line 587
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 588
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 568
    return-void
.end method

.method public setTemperature(F)V
    .registers 2
    .param p1, "temperature"    # F

    .prologue
    .line 583
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 584
    return-void
.end method

.method public setThinking(Ljava/lang/String;)V
    .registers 2
    .param p1, "thinking"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 592
    return-void
.end method
