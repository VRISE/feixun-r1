.class public Lcom/phicomm/speaker/device/custom/config/AIConfig;
.super Ljava/lang/Object;
.source "AIConfig.java"


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "ai_config.ini"

.field private static final CURRENT_CONFIG_VERSION:I = 0x6

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

.field private fallback2ApiKey:Ljava/lang/String;

.field private fallback2BaseUrl:Ljava/lang/String;

.field private fallback2Model:Ljava/lang/String;

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
    .line 312
    const/4 v0, 0x0

    .line 336
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 337
    const-string v1, "AIConfig"

    const-string v2, "Applied forced defaults from code (FORCE_* switches)"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_a
    return v0
.end method

.method private static createDefaultConfig(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 523
    new-instance v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 524
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    const-string v1, "openai"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 525
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 526
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 527
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 528
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 529
    const/16 v1, 0x400

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 530
    const-string v1, "disabled"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 531
    const/4 v1, 0x6

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 532
    const-string v1, "doubao"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 533
    const-string v1, "r1-speaker"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 534
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 535
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 536
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 537
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    .line 538
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    .line 539
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 542
    const-string v1, "AIConfig"

    const-string v2, "Default config created"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 343
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
    .line 248
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
    const/4 v6, 0x6

    .line 189
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ai_config.ini"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 192
    const-string v3, "AIConfig"

    const-string v4, "Config file not found, creating default config"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->createDefaultConfig(Landroid/content/Context;)V

    .line 199
    :cond_1c
    new-instance v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 200
    .local v1, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->readFromFile(Ljava/io/File;)V

    .line 202
    const/4 v0, 0x0

    .line 207
    .local v0, "changed":Z
    iget v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    if-ge v3, v6, :cond_57

    .line 208
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

    .line 210
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->migrate()V

    .line 211
    const/4 v0, 0x1

    .line 215
    :cond_57
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->applyForcedDefaults()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 216
    const/4 v0, 0x1

    .line 220
    :cond_5e
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 221
    const-string v3, "AIConfig"

    const-string v4, "api_key is placeholder, adopting DEFAULT_API_KEY from code"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 223
    const/4 v0, 0x1

    .line 226
    :cond_7a
    if-eqz v0, :cond_81

    .line 227
    iput v6, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 228
    invoke-virtual {v1, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 231
    :cond_81
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 232
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Key \u672a\u914d\u7f6e! \u8bf7\u6309 README.MD \u9876\u90e8\u6559\u7a0b\u7533\u8bf7\u667a\u8c31 Key, \u518d\u586b\u5165 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 233
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
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

    .line 240
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CHAIN] L1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | L2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 241
    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallbackModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | L3 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 242
    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallback2BaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getFallback2Model()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v1
.end method

.method private migrate()V
    .registers 4

    .prologue
    .line 255
    const-string v0, "openai"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_16

    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 262
    :cond_16
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 267
    :goto_1a
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 268
    const/16 v0, 0x400

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 269
    const-string v0, "disabled"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 270
    const/4 v0, 0x6

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 273
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 274
    :cond_36
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 276
    :cond_3a
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 277
    :cond_46
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 280
    :cond_4a
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 281
    const-string v0, "doubao"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 283
    :cond_52
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 284
    :cond_5e
    const-string v0, "r1-speaker"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 287
    :cond_62
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 288
    :cond_6e
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 290
    :cond_72
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 291
    :cond_7e
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 293
    :cond_82
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 294
    :cond_8e
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 296
    :cond_92
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_9e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 297
    :cond_9e
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    .line 299
    :cond_a2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 300
    :cond_ae
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    .line 302
    :cond_b2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 303
    :cond_be
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    .line 305
    :cond_c2
    return-void

    .line 264
    :cond_c3
    const-string v0, "AIConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrate: \u81ea\u5b9a\u4e49\u7aef\u70b9 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \u4fdd\u7559 model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a
.end method

.method private readFromFile(Ljava/io/File;)V
    .registers 16
    .param p1, "configFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 395
    const-string v8, "openai"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 396
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 397
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 398
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 399
    const v8, 0x3f333333    # 0.7f

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 400
    const/16 v8, 0x400

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 401
    const-string v8, "disabled"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 402
    iput v9, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 403
    const-string v8, "doubao"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    .line 404
    const-string v8, "r1-speaker"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    .line 405
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    .line 406
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    .line 407
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    .line 408
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    .line 409
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    .line 410
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    .line 413
    :try_start_42
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 414
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v8, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 417
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 419
    .local v2, "inAiSection":Z
    :cond_54
    :goto_54
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_26a

    .line 420
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_54

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_54

    .line 428
    const-string v8, "[AI]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 429
    const/4 v2, 0x1

    .line 430
    goto :goto_54

    .line 431
    :cond_7e
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 432
    const/4 v2, 0x0

    .line 433
    goto :goto_54

    .line 437
    :cond_88
    if-eqz v2, :cond_54

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_54

    .line 438
    const-string v8, "="

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "parts":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v11, :cond_54

    .line 440
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 441
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_298

    :cond_b2
    :goto_b2
    packed-switch v8, :pswitch_data_2da

    goto :goto_54

    .line 446
    :pswitch_b6
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_be} :catch_bf

    goto :goto_54

    .line 514
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "inAiSection":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :catch_bf
    move-exception v0

    .line 515
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

    .line 517
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d8
    return-void

    .line 444
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "inAiSection":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :sswitch_d9
    :try_start_d9
    const-string v12, "provider"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    move v8, v9

    goto :goto_b2

    :sswitch_e3
    const-string v12, "base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    move v8, v10

    goto :goto_b2

    :sswitch_ed
    const-string v12, "api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    move v8, v11

    goto :goto_b2

    :sswitch_f7
    const-string v12, "model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/4 v8, 0x3

    goto :goto_b2

    :sswitch_101
    const-string v12, "temperature"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/4 v8, 0x4

    goto :goto_b2

    :sswitch_10b
    const-string v12, "max_tokens"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/4 v8, 0x5

    goto :goto_b2

    :sswitch_115
    const-string v12, "thinking"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/4 v8, 0x6

    goto :goto_b2

    :sswitch_11f
    const-string v12, "config_version"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/4 v8, 0x7

    goto :goto_b2

    :sswitch_129
    const-string v12, "tts"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0x8

    goto/16 :goto_b2

    :sswitch_135
    const-string v12, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0x9

    goto/16 :goto_b2

    :sswitch_141
    const-string v12, "fallback_base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xa

    goto/16 :goto_b2

    :sswitch_14d
    const-string v12, "fallback_api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xb

    goto/16 :goto_b2

    :sswitch_159
    const-string v12, "fallback_model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xc

    goto/16 :goto_b2

    :sswitch_165
    const-string v12, "fallback2_base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xd

    goto/16 :goto_b2

    :sswitch_171
    const-string v12, "fallback2_api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xe

    goto/16 :goto_b2

    :sswitch_17d
    const-string v12, "fallback2_model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b2

    const/16 v8, 0xf

    goto/16 :goto_b2

    .line 449
    :pswitch_189
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    goto/16 :goto_54

    .line 452
    :pswitch_193
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    goto/16 :goto_54

    .line 455
    :pswitch_19d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_1a5} :catch_bf

    goto/16 :goto_54

    .line 459
    :pswitch_1a7
    :try_start_1a7
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F
    :try_end_1ad
    .catch Ljava/lang/NumberFormatException; {:try_start_1a7 .. :try_end_1ad} :catch_1af
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1ad} :catch_bf

    goto/16 :goto_54

    .line 460
    :catch_1af
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1b0
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
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1c8} :catch_bf

    goto/16 :goto_54

    .line 466
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1ca
    :try_start_1ca
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I
    :try_end_1d0
    .catch Ljava/lang/NumberFormatException; {:try_start_1ca .. :try_end_1d0} :catch_1d2
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1d0} :catch_bf

    goto/16 :goto_54

    .line 467
    :catch_1d2
    move-exception v0

    .line 468
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_1d3
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

    goto/16 :goto_54

    .line 472
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1ed
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1f5} :catch_bf

    goto/16 :goto_54

    .line 476
    :pswitch_1f7
    :try_start_1f7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I
    :try_end_1fd
    .catch Ljava/lang/NumberFormatException; {:try_start_1f7 .. :try_end_1fd} :catch_1ff
    .catch Ljava/lang/Exception; {:try_start_1f7 .. :try_end_1fd} :catch_bf

    goto/16 :goto_54

    .line 477
    :catch_1ff
    move-exception v0

    .line 478
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_200
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

    goto/16 :goto_54

    .line 482
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_21a
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto/16 :goto_54

    .line 485
    :pswitch_224
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    goto/16 :goto_54

    .line 488
    :pswitch_22e
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    goto/16 :goto_54

    .line 491
    :pswitch_238
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    goto/16 :goto_54

    .line 494
    :pswitch_242
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    goto/16 :goto_54

    .line 497
    :pswitch_24c
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    goto/16 :goto_54

    .line 500
    :pswitch_256
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    goto/16 :goto_54

    .line 503
    :pswitch_260
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_54

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    goto/16 :goto_54

    .line 510
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_26a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 511
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 513
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
    :try_end_296
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_296} :catch_bf

    goto/16 :goto_d8

    .line 444
    :sswitch_data_298
    .sparse-switch
        -0x7114d846 -> :sswitch_17d
        -0x6696d4ff -> :sswitch_e3
        -0x3adbfa0f -> :sswitch_d9
        -0x2fb05546 -> :sswitch_ed
        -0x1fca1b25 -> :sswitch_11f
        -0x5d09a3 -> :sswitch_14d
        0x1c1f3 -> :sswitch_129
        0x36ebcb -> :sswitch_135
        0x633fb29 -> :sswitch_f7
        0x7edf70b -> :sswitch_171
        0x101bd38c -> :sswitch_159
        0x132cc574 -> :sswitch_101
        0x48fd95b0 -> :sswitch_115
        0x5070c4d5 -> :sswitch_10b
        0x547f53be -> :sswitch_141
        0x559468d0 -> :sswitch_165
    .end sparse-switch

    :pswitch_data_2da
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_189
        :pswitch_193
        :pswitch_19d
        :pswitch_1a7
        :pswitch_1ca
        :pswitch_1ed
        :pswitch_1f7
        :pswitch_21a
        :pswitch_224
        :pswitch_22e
        :pswitch_238
        :pswitch_242
        :pswitch_24c
        :pswitch_256
        :pswitch_260
    .end packed-switch
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()I
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    return v0
.end method

.method public getFallback2ApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 628
    :cond_10
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    .line 627
    :goto_12
    return-object v0

    .line 628
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallback2BaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 622
    :cond_10
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    .line 621
    :goto_12
    return-object v0

    .line 622
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallback2Model()Ljava/lang/String;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 634
    :cond_10
    const-string v0, "GLM-4.5-Flash"

    .line 633
    :goto_12
    return-object v0

    .line 634
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallbackApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 602
    :cond_10
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    .line 601
    :goto_12
    return-object v0

    .line 602
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallbackBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 596
    :cond_10
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    .line 595
    :goto_12
    return-object v0

    .line 596
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getFallbackModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 608
    :cond_10
    const-string v0, "GLM-4.5-Flash"

    .line 607
    :goto_12
    return-object v0

    .line 608
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getMaxTokens()I
    .registers 2

    .prologue
    .line 568
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()F
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    return v0
.end method

.method public getThinking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    return-object v0
.end method

.method public getTts()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
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
    .line 590
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
    .line 613
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
    .line 350
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "ai_config.ini"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v0, "configFile":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 354
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[AI]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v4, "base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v4, "api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v4, "model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v4, "temperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v4, "max_tokens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v4, "thinking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v4, "tts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    if-nez v4, :cond_1a1

    const-string v4, ""

    :goto_a3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v4, "user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    if-nez v4, :cond_1a5

    const-string v4, ""

    :goto_b8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v4, "fallback_base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    const-string v6, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a9

    const-string v4, ""

    :goto_d3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v4, "fallback_api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 370
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    const-string v6, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1ad

    const-string v4, ""

    :goto_ee
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v4, "fallback_model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 372
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    const-string v6, "GLM-4.5-Flash"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b1

    const-string v4, ""

    :goto_109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v4, "fallback2_base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 374
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    const-string v6, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b5

    const-string v4, ""

    :goto_124
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string v4, "fallback2_api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 376
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    const-string v6, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    const-string v4, ""

    :goto_13f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v4, "fallback2_model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 378
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    const-string v6, "GLM-4.5-Flash"

    invoke-static {v4, v6}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->eq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1bc

    const-string v4, ""

    :goto_15a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v4, "config_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 382
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 384
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

    .line 388
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_1a0
    return-void

    .line 364
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1a1
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->tts:Ljava/lang/String;

    goto/16 :goto_a3

    .line 365
    :cond_1a5
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->user:Ljava/lang/String;

    goto/16 :goto_b8

    .line 368
    :cond_1a9
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    goto/16 :goto_d3

    .line 370
    :cond_1ad
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    goto/16 :goto_ee

    .line 372
    :cond_1b1
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    goto/16 :goto_109

    .line 374
    :cond_1b5
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    goto/16 :goto_124

    .line 376
    :cond_1b9
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    goto :goto_13f

    .line 378
    :cond_1bc
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1be} :catch_1bf

    goto :goto_15a

    .line 385
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1bf
    move-exception v1

    .line 386
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

    goto :goto_1a0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 656
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 652
    return-void
.end method

.method public setFallback2ApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2ApiKey:Ljava/lang/String;

    return-void
.end method

.method public setFallback2BaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2BaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setFallback2Model(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallback2Model:Ljava/lang/String;

    return-void
.end method

.method public setFallbackApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackApiKey:Ljava/lang/String;

    return-void
.end method

.method public setFallbackBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackBaseUrl:Ljava/lang/String;

    return-void
.end method

.method public setFallbackModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->fallbackModel:Ljava/lang/String;

    return-void
.end method

.method public setMaxTokens(I)V
    .registers 2
    .param p1, "maxTokens"    # I

    .prologue
    .line 667
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 668
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 660
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 648
    return-void
.end method

.method public setTemperature(F)V
    .registers 2
    .param p1, "temperature"    # F

    .prologue
    .line 663
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 664
    return-void
.end method

.method public setThinking(Ljava/lang/String;)V
    .registers 2
    .param p1, "thinking"    # Ljava/lang/String;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 672
    return-void
.end method
