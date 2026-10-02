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
    .line 222
    const/4 v0, 0x0

    .line 246
    .local v0, "changed":Z
    if-eqz v0, :cond_a

    .line 247
    const-string v1, "AIConfig"

    const-string v2, "Applied forced defaults from code (FORCE_* switches)"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_a
    return v0
.end method

.method private static createDefaultConfig(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    new-instance v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 387
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    const-string v1, "openai"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 388
    const-string v1, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 389
    const-string v1, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 390
    const-string v1, "GLM-4.5-Flash"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 391
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 392
    const/16 v1, 0x400

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 393
    const-string v1, "disabled"

    iput-object v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 394
    const/4 v1, 0x5

    iput v1, v0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 396
    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 397
    const-string v1, "AIConfig"

    const-string v2, "Default config created"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method private static eq(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 253
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
    .line 194
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

    .line 139
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "ai_config.ini"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .local v2, "configFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 142
    const-string v3, "AIConfig"

    const-string v4, "Config file not found, creating default config"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->createDefaultConfig(Landroid/content/Context;)V

    .line 149
    :cond_1c
    new-instance v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;

    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;-><init>()V

    .line 150
    .local v1, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    invoke-direct {v1, v2}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->readFromFile(Ljava/io/File;)V

    .line 152
    const/4 v0, 0x0

    .line 157
    .local v0, "changed":Z
    iget v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    if-ge v3, v6, :cond_57

    .line 158
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

    .line 160
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->migrate()V

    .line 161
    const/4 v0, 0x1

    .line 165
    :cond_57
    invoke-direct {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->applyForcedDefaults()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 166
    const/4 v0, 0x1

    .line 170
    :cond_5e
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    .line 171
    const-string v3, "AIConfig"

    const-string v4, "api_key is placeholder, adopting DEFAULT_API_KEY from code"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 173
    const/4 v0, 0x1

    .line 176
    :cond_7a
    if-eqz v0, :cond_81

    .line 177
    iput v6, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 178
    invoke-virtual {v1, p0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->save(Landroid/content/Context;)V

    .line 181
    :cond_81
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 182
    const-string v3, "AIConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "API Key \u672a\u914d\u7f6e! \u8bf7\u6309 README.MD \u9876\u90e8\u6559\u7a0b\u7533\u8bf7\u667a\u8c31 Key, \u518d\u586b\u5165 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
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

    .line 189
    return-object v1
.end method

.method private migrate()V
    .registers 2

    .prologue
    .line 201
    const-string v0, "openai"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 202
    const-string v0, "GLM-4.5-Flash"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 203
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 204
    const/16 v0, 0x400

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 205
    const-string v0, "disabled"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 206
    const/4 v0, 0x5

    iput v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 210
    :cond_24
    const-string v0, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 212
    :cond_28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 213
    :cond_34
    const-string v0, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 215
    :cond_38
    return-void
.end method

.method private readFromFile(Ljava/io/File;)V
    .registers 16
    .param p1, "configFile"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 290
    const-string v8, "openai"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 291
    const-string v8, "https://open.bigmodel.cn/api/paas/v4/chat/completions"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 292
    const-string v8, "YOUR_ZHIPU_API_KEY_HERE"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 293
    const-string v8, "GLM-4.5-Flash"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 294
    const v8, 0x3f333333    # 0.7f

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 295
    const/16 v8, 0x400

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 296
    const-string v8, "disabled"

    iput-object v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 297
    iput v9, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    .line 300
    :try_start_22
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 301
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v12, "UTF-8"

    invoke-direct {v8, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 304
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 306
    .local v2, "inAiSection":Z
    :cond_34
    :goto_34
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_19a

    .line 307
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_34

    const-string v8, ";"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 315
    const-string v8, "[AI]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5e

    .line 316
    const/4 v2, 0x1

    .line 317
    goto :goto_34

    .line 318
    :cond_5e
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 319
    const/4 v2, 0x0

    .line 320
    goto :goto_34

    .line 324
    :cond_68
    if-eqz v2, :cond_34

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 325
    const-string v8, "="

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "parts":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v11, :cond_34

    .line 327
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1c8

    :cond_92
    :goto_92
    packed-switch v8, :pswitch_data_1ea

    goto :goto_34

    .line 333
    :pswitch_96
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_9e} :catch_9f

    goto :goto_34

    .line 377
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "inAiSection":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :catch_9f
    move-exception v0

    .line 378
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

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b8
    return-void

    .line 331
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "inAiSection":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :sswitch_b9
    :try_start_b9
    const-string v12, "provider"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    move v8, v9

    goto :goto_92

    :sswitch_c3
    const-string v12, "base_url"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    move v8, v10

    goto :goto_92

    :sswitch_cd
    const-string v12, "api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    move v8, v11

    goto :goto_92

    :sswitch_d7
    const-string v12, "model"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    const/4 v8, 0x3

    goto :goto_92

    :sswitch_e1
    const-string v12, "temperature"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    const/4 v8, 0x4

    goto :goto_92

    :sswitch_eb
    const-string v12, "max_tokens"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    const/4 v8, 0x5

    goto :goto_92

    :sswitch_f5
    const-string v12, "thinking"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    const/4 v8, 0x6

    goto :goto_92

    :sswitch_ff
    const-string v12, "config_version"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    const/4 v8, 0x7

    goto :goto_92

    .line 336
    :pswitch_109
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    goto/16 :goto_34

    .line 339
    :pswitch_113
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    goto/16 :goto_34

    .line 342
    :pswitch_11d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_125} :catch_9f

    goto/16 :goto_34

    .line 346
    :pswitch_127
    :try_start_127
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F
    :try_end_12d
    .catch Ljava/lang/NumberFormatException; {:try_start_127 .. :try_end_12d} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12d} :catch_9f

    goto/16 :goto_34

    .line 347
    :catch_12f
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_130
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
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_148} :catch_9f

    goto/16 :goto_34

    .line 353
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_14a
    :try_start_14a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I
    :try_end_150
    .catch Ljava/lang/NumberFormatException; {:try_start_14a .. :try_end_150} :catch_152
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_150} :catch_9f

    goto/16 :goto_34

    .line 354
    :catch_152
    move-exception v0

    .line 355
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_153
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

    goto/16 :goto_34

    .line 359
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :pswitch_16d
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_34

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_175} :catch_9f

    goto/16 :goto_34

    .line 363
    :pswitch_177
    :try_start_177
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_17d} :catch_17f
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17d} :catch_9f

    goto/16 :goto_34

    .line 364
    :catch_17f
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_180
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

    goto/16 :goto_34

    .line 373
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_19a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 374
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 376
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
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_1c6} :catch_9f

    goto/16 :goto_b8

    .line 331
    :sswitch_data_1c8
    .sparse-switch
        -0x6696d4ff -> :sswitch_c3
        -0x3adbfa0f -> :sswitch_b9
        -0x2fb05546 -> :sswitch_cd
        -0x1fca1b25 -> :sswitch_ff
        0x633fb29 -> :sswitch_d7
        0x132cc574 -> :sswitch_e1
        0x48fd95b0 -> :sswitch_f5
        0x5070c4d5 -> :sswitch_eb
    .end sparse-switch

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_96
        :pswitch_109
        :pswitch_113
        :pswitch_11d
        :pswitch_127
        :pswitch_14a
        :pswitch_16d
        :pswitch_177
    .end packed-switch
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigVersion()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    return v0
.end method

.method public getMaxTokens()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()F
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    return v0
.end method

.method public getThinking()Ljava/lang/String;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 260
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "ai_config.ini"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 263
    .local v0, "configFile":Ljava/io/File;
    :try_start_b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 264
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "[AI]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v4, "base_url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v4, "api_key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v4, "model = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v4, "temperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v4, "max_tokens = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v4, "thinking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v4, "config_version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->configVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 277
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 279
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
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d4} :catch_d5

    .line 283
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_d4
    return-void

    .line 280
    :catch_d5
    move-exception v1

    .line 281
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

    goto :goto_d4
.end method

.method public setApiKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->apiKey:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->baseUrl:Ljava/lang/String;

    .line 446
    return-void
.end method

.method public setMaxTokens(I)V
    .registers 2
    .param p1, "maxTokens"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->maxTokens:I

    .line 462
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->model:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->provider:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setTemperature(F)V
    .registers 2
    .param p1, "temperature"    # F

    .prologue
    .line 457
    iput p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->temperature:F

    .line 458
    return-void
.end method

.method public setThinking(Ljava/lang/String;)V
    .registers 2
    .param p1, "thinking"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/config/AIConfig;->thinking:Ljava/lang/String;

    .line 466
    return-void
.end method
