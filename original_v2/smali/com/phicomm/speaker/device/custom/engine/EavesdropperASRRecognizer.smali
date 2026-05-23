.class public Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;
.super Ljava/lang/Object;
.source "EavesdropperASRRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;,
        Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    }
.end annotation


# static fields
.field private static final CHUNK_SIZE:I = 0xc80

.field private static final RESULT_TIMEOUT:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "EavesdropperASR"

.field public static final VARIANT_TAG:Ljava/lang/String; = "prod"


# instance fields
.field private final antEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private final context:Landroid/content/Context;

.field private volatile isRecognizing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "antEngine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    .line 47
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;[BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->doRecognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V

    return-void
.end method

.method private clientCreate(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;I)J
    .registers 8
    .param p1, "client"    # Lcn/yunzhisheng/asr/JniUscClient;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 223
    if-eqz p1, :cond_8

    move-object v0, p1

    .line 224
    .local v0, "tmp":Lcn/yunzhisheng/asr/JniUscClient;
    :goto_3
    invoke-virtual {v0, p2, p3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    return-wide v2

    .line 223
    .end local v0    # "tmp":Lcn/yunzhisheng/asr/JniUscClient;
    :cond_8
    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    goto :goto_3
.end method

.method private configureClient(Lcn/yunzhisheng/asr/JniUscClient;Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;)V
    .registers 9
    .param p1, "client"    # Lcn/yunzhisheng/asr/JniUscClient;
    .param p2, "cred"    # Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 229
    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 232
    const/16 v2, 0x2712

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 235
    const/16 v2, 0x271d

    invoke-virtual {p1, v2, v5}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 238
    const/4 v2, 0x4

    const/16 v3, 0x3a98

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "sdkConfigured":Z
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->anInstance:Ljava/lang/Object;

    if-eqz v2, :cond_3a

    .line 244
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->anInstance:Ljava/lang/Object;

    invoke-direct {p0, v2, p1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->invokeAnConfigure(Ljava/lang/Object;Lcn/yunzhisheng/asr/JniUscClient;)Z

    move-result v0

    .line 245
    const-string v2, "EavesdropperASR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK an.b/c/d configure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_3a
    if-nez v0, :cond_71

    .line 250
    const-string v2, "EavesdropperASR"

    const-string v3, "Falling back to manual credential setup"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    if-eqz v2, :cond_4e

    .line 252
    const/16 v2, 0x9

    iget-object v3, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    .line 254
    :cond_4e
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->imei:Ljava/lang/String;

    if-eqz v2, :cond_59

    .line 255
    const/16 v2, 0x8

    iget-object v3, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->imei:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    .line 258
    :cond_59
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->udid:Ljava/lang/String;

    if-eqz v2, :cond_8c

    iget-object v1, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->udid:Ljava/lang/String;

    .line 259
    .local v1, "udid":Ljava/lang/String;
    :goto_5f
    if-eqz v1, :cond_66

    .line 260
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    .line 262
    :cond_66
    iget-object v2, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->userId:Ljava/lang/String;

    if-eqz v2, :cond_71

    .line 263
    const/16 v2, 0x16

    iget-object v3, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->userId:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    .line 268
    .end local v1    # "udid":Ljava/lang/String;
    :cond_71
    const/16 v2, 0x438

    const/16 v3, 0xc80

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 271
    const/16 v2, 0x41d

    invoke-virtual {p1, v2, v5}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 274
    const/16 v2, 0x414

    const/16 v3, 0x3e80

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(II)I

    .line 277
    const/16 v2, 0x3f9

    const-string v3, "returnType=json;filterName=nlu2;scenario=musicDefault"

    invoke-virtual {p1, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    .line 278
    return-void

    .line 258
    :cond_8c
    iget-object v1, p2, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->userId:Ljava/lang/String;

    goto :goto_5f
.end method

.method private doRecognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    .registers 29
    .param p1, "audioBuffer"    # [B
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;

    .prologue
    .line 87
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "doRecognize start, audio_bytes="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-direct/range {p0 .. p1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->normalizeGain([B)[B

    move-result-object p1

    .line 94
    :try_start_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 95
    .local v22, "ts":J
    new-instance v9, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/sdcard/eavesdrop_prod_"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, ".pcm"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v9, "f":Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 97
    .local v10, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DUMP audio: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " size="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_8d} :catch_132

    .line 104
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v22    # "ts":J
    :goto_8d
    const/4 v4, 0x0

    .line 107
    .local v4, "client":Lcn/yunzhisheng/asr/JniUscClient;
    :try_start_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->extract(Lcom/unisound/vui/engine/ANTEngine;)Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;

    move-result-object v7

    .line 108
    .local v7, "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Using credentials: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, v7, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverHost:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_155

    iget-object v0, v7, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverHost:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 112
    .local v18, "server":Ljava/lang/String;
    :goto_c0
    iget v0, v7, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverPort:I

    move/from16 v21, v0

    if-lez v21, :cond_159

    iget v15, v7, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverPort:I

    .line 113
    .local v15, "port":I
    :goto_c8
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "createNative server="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " port="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v5, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v5}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_f9} :catch_384
    .catchall {:try_start_8e .. :try_end_f9} :catchall_3ac

    .line 116
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .local v5, "client":Lcn/yunzhisheng/asr/JniUscClient;
    :try_start_f9
    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v12

    .line 117
    .local v12, "handle":J
    const-wide/16 v24, 0x0

    cmp-long v21, v12, v24

    if-nez v21, :cond_15d

    .line 118
    const-string v21, "EavesdropperASR"

    const-string v24, "createNative failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz p2, :cond_11b

    const-string v21, "createNative failed"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;->onError(Ljava/lang/String;)V

    .line 120
    :cond_11b
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_123} :catch_3cd
    .catchall {:try_start_f9 .. :try_end_123} :catchall_3ca

    .line 204
    if-eqz v5, :cond_128

    .line 206
    :try_start_125
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_3bb

    .line 210
    :cond_128
    :goto_128
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move-object v4, v5

    .line 212
    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .end local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .end local v12    # "handle":J
    .end local v15    # "port":I
    .end local v18    # "server":Ljava/lang/String;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :goto_131
    return-void

    .line 100
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :catch_132
    move-exception v19

    .line 101
    .local v19, "t":Ljava/lang/Throwable;
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "DUMP audio failed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    .line 111
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    :cond_155
    :try_start_155
    const-string v18, "117.121.55.35"
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_157} :catch_384
    .catchall {:try_start_155 .. :try_end_157} :catchall_3ac

    goto/16 :goto_c0

    .line 112
    .restart local v18    # "server":Ljava/lang/String;
    :cond_159
    const/16 v15, 0x50

    goto/16 :goto_c8

    .line 125
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v12    # "handle":J
    .restart local v15    # "port":I
    :cond_15d
    :try_start_15d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->configureClient(Lcn/yunzhisheng/asr/JniUscClient;Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;)V

    .line 128
    const-string v21, "pcm"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;)I

    .line 131
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->a()I

    move-result v17

    .line 132
    .local v17, "ret":I
    if-eqz v17, :cond_1dc

    .line 133
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "start failed: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " errno="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->f()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_1c1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "start failed: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;->onError(Ljava/lang/String;)V

    .line 135
    :cond_1c1
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    .line 136
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_1cc} :catch_3cd
    .catchall {:try_start_15d .. :try_end_1cc} :catchall_3ca

    .line 204
    if-eqz v5, :cond_1d1

    .line 206
    :try_start_1ce
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d1} :catch_3be

    .line 210
    :cond_1d1
    :goto_1d1
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move-object v4, v5

    .line 137
    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    goto/16 :goto_131

    .line 140
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :cond_1dc
    :try_start_1dc
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Streaming "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes to ASR"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v11, 0x0

    .local v11, "offset":I
    :goto_204
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_263

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move/from16 v21, v0

    if-eqz v21, :cond_263

    .line 148
    const/16 v21, 0xc80

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v11

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 149
    .local v3, "chunkLen":I
    new-array v2, v3, [B

    .line 150
    .local v2, "chunk":[B
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v11, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-virtual {v5, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a([BI)I

    move-result v17

    .line 152
    if-eqz v17, :cond_294

    .line 153
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "recognize chunk error at offset "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", ret="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v2    # "chunk":[B
    .end local v3    # "chunkLen":I
    :cond_263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move/from16 v21, v0

    if-nez v21, :cond_298

    .line 159
    const-string v21, "EavesdropperASR"

    const-string v24, "Recognition cancelled"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->d()I

    .line 161
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    .line 162
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z
    :try_end_284
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_284} :catch_3cd
    .catchall {:try_start_1dc .. :try_end_284} :catchall_3ca

    .line 204
    if-eqz v5, :cond_289

    .line 206
    :try_start_286
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_289} :catch_3c1

    .line 210
    :cond_289
    :goto_289
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move-object v4, v5

    .line 163
    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    goto/16 :goto_131

    .line 147
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v2    # "chunk":[B
    .restart local v3    # "chunkLen":I
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :cond_294
    add-int/lit16 v11, v11, 0xc80

    goto/16 :goto_204

    .line 167
    .end local v2    # "chunk":[B
    .end local v3    # "chunkLen":I
    :cond_298
    :try_start_298
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->b()I

    .line 170
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->c()Ljava/lang/String;

    move-result-object v16

    .line 171
    .local v16, "result":Ljava/lang/String;
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ASR raw result: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ASR raw result: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->parseASRResult(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    move-result-object v14

    .line 178
    .local v14, "parsed":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    .line 180
    if-eqz v14, :cond_352

    iget-object v0, v14, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_352

    iget-object v0, v14, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 181
    .local v20, "text":Ljava/lang/String;
    :goto_2f6
    if-eqz v14, :cond_355

    iget v6, v14, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->confidence:F

    .line 183
    .local v6, "confidence":F
    :goto_2fa
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_357

    .line 185
    const-string v21, "EavesdropperASR"

    const-string v24, "ASR empty -> fallback marker"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v20, "[\u542c\u4e0d\u6e05\u7684\u58f0\u97f3]"

    .line 193
    :cond_30d
    :goto_30d
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ASR OK: \""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\" conf="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz p2, :cond_342

    .line 195
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v6}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;->onResult(Ljava/lang/String;F)V
    :try_end_342
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_342} :catch_3cd
    .catchall {:try_start_298 .. :try_end_342} :catchall_3ca

    .line 204
    :cond_342
    if-eqz v5, :cond_347

    .line 206
    :try_start_344
    invoke-virtual {v5}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_347} :catch_3c4

    .line 210
    :cond_347
    :goto_347
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    move-object v4, v5

    .line 211
    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    goto/16 :goto_131

    .line 180
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .end local v6    # "confidence":F
    .end local v20    # "text":Ljava/lang/String;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :cond_352
    :try_start_352
    const-string v20, ""

    goto :goto_2f6

    .line 181
    .restart local v20    # "text":Ljava/lang/String;
    :cond_355
    const/4 v6, 0x0

    goto :goto_2fa

    .line 187
    .restart local v6    # "confidence":F
    :cond_357
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isJunkText(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_30d

    .line 189
    const-string v21, "EavesdropperASR"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ASR JUNK -> fallback marker: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v20, "[\u542c\u4e0d\u6e05\u7684\u58f0\u97f3]"
    :try_end_383
    .catch Ljava/lang/Exception; {:try_start_352 .. :try_end_383} :catch_3cd
    .catchall {:try_start_352 .. :try_end_383} :catchall_3ca

    goto :goto_30d

    .line 198
    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .end local v6    # "confidence":F
    .end local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .end local v11    # "offset":I
    .end local v12    # "handle":J
    .end local v14    # "parsed":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    .end local v15    # "port":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "ret":I
    .end local v18    # "server":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :catch_384
    move-exception v8

    .line 199
    .local v8, "e":Ljava/lang/Exception;
    :goto_385
    :try_start_385
    const-string v21, "EavesdropperASR"

    const-string v24, "ASR recognition exception"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    if-eqz p2, :cond_39d

    .line 201
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;->onError(Ljava/lang/String;)V
    :try_end_39d
    .catchall {:try_start_385 .. :try_end_39d} :catchall_3ac

    .line 204
    :cond_39d
    if-eqz v4, :cond_3a2

    .line 206
    :try_start_39f
    invoke-virtual {v4}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3a2} :catch_3c6

    .line 210
    :cond_3a2
    :goto_3a2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    goto/16 :goto_131

    .line 204
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_3ac
    move-exception v21

    :goto_3ad
    if-eqz v4, :cond_3b2

    .line 206
    :try_start_3af
    invoke-virtual {v4}, Lcn/yunzhisheng/asr/JniUscClient;->e()V
    :try_end_3b2
    .catch Ljava/lang/Exception; {:try_start_3af .. :try_end_3b2} :catch_3c8

    .line 210
    :cond_3b2
    :goto_3b2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    .line 211
    throw v21

    .line 207
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .restart local v12    # "handle":J
    .restart local v15    # "port":I
    .restart local v18    # "server":Ljava/lang/String;
    :catch_3bb
    move-exception v21

    goto/16 :goto_128

    .restart local v17    # "ret":I
    :catch_3be
    move-exception v21

    goto/16 :goto_1d1

    .restart local v11    # "offset":I
    :catch_3c1
    move-exception v21

    goto/16 :goto_289

    .restart local v6    # "confidence":F
    .restart local v14    # "parsed":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v20    # "text":Ljava/lang/String;
    :catch_3c4
    move-exception v21

    goto :goto_347

    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .end local v6    # "confidence":F
    .end local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .end local v11    # "offset":I
    .end local v12    # "handle":J
    .end local v14    # "parsed":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    .end local v15    # "port":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "ret":I
    .end local v18    # "server":Ljava/lang/String;
    .end local v20    # "text":Ljava/lang/String;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v8    # "e":Ljava/lang/Exception;
    :catch_3c6
    move-exception v21

    goto :goto_3a2

    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3c8
    move-exception v24

    goto :goto_3b2

    .line 204
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v7    # "cred":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .restart local v15    # "port":I
    .restart local v18    # "server":Ljava/lang/String;
    :catchall_3ca
    move-exception v21

    move-object v4, v5

    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    goto :goto_3ad

    .line 198
    .end local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    :catch_3cd
    move-exception v8

    move-object v4, v5

    .end local v5    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    .restart local v4    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    goto :goto_385
.end method

.method private getAppKey()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 385
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    if-nez v3, :cond_6

    .line 393
    :cond_5
    :goto_5
    return-object v2

    .line 388
    :cond_6
    :try_start_6
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_VOICEID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v1

    .line 389
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-result-object v2

    goto :goto_5

    .line 390
    .end local v1    # "key":Ljava/lang/Object;
    :catch_19
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "EavesdropperASR"

    const-string v4, "Failed to get app key"

    invoke-static {v3, v4, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private getOrCreateClient(Lcn/yunzhisheng/asr/JniUscClient;Ljava/lang/String;I)Lcn/yunzhisheng/asr/JniUscClient;
    .registers 4
    .param p1, "client"    # Lcn/yunzhisheng/asr/JniUscClient;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 215
    if-nez p1, :cond_a

    .line 216
    new-instance p1, Lcn/yunzhisheng/asr/JniUscClient;

    .end local p1    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    invoke-direct {p1}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    .line 217
    .restart local p1    # "client":Lcn/yunzhisheng/asr/JniUscClient;
    invoke-virtual {p1, p2, p3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    .line 219
    :cond_a
    return-object p1
.end method

.method private invokeAnConfigure(Ljava/lang/Object;Lcn/yunzhisheng/asr/JniUscClient;)Z
    .registers 16
    .param p1, "anInstance"    # Ljava/lang/Object;
    .param p2, "client"    # Lcn/yunzhisheng/asr/JniUscClient;

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 352
    .local v0, "anClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "b":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, "c":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 353
    .local v4, "d":Ljava/lang/reflect/Method;
    move-object v3, v0

    .line 354
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    if-eqz v3, :cond_5c

    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    if-nez v4, :cond_5c

    .line 355
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    const/4 v8, 0x0

    :goto_16
    if-ge v8, v10, :cond_57

    aget-object v6, v9, v8

    .line 356
    .local v6, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3c

    .line 357
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const-class v12, Lcn/yunzhisheng/asr/JniUscClient;

    if-ne v11, v12, :cond_3c

    .line 358
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "n":Ljava/lang/String;
    const-string v11, "b"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    if-nez v1, :cond_3f

    move-object v1, v6

    .line 355
    .end local v7    # "n":Ljava/lang/String;
    :cond_3c
    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    .line 360
    .restart local v7    # "n":Ljava/lang/String;
    :cond_3f
    const-string v11, "c"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4b

    if-nez v2, :cond_4b

    move-object v2, v6

    goto :goto_3c

    .line 361
    :cond_4b
    const-string v11, "d"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    if-nez v4, :cond_3c

    move-object v4, v6

    goto :goto_3c

    .line 364
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "n":Ljava/lang/String;
    :cond_57
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_8

    .line 366
    :cond_5c
    if-eqz v1, :cond_62

    if-eqz v2, :cond_62

    if-nez v4, :cond_90

    .line 367
    :cond_62
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "an.b/c/d not all found: b="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " c="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " d="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v8, 0x0

    .line 380
    .end local v0    # "anClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "b":Ljava/lang/reflect/Method;
    .end local v2    # "c":Ljava/lang/reflect/Method;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "d":Ljava/lang/reflect/Method;
    :goto_8f
    return v8

    .line 370
    .restart local v0    # "anClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "b":Ljava/lang/reflect/Method;
    .restart local v2    # "c":Ljava/lang/reflect/Method;
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "d":Ljava/lang/reflect/Method;
    :cond_90
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 371
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 372
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 373
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v1, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v4, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-virtual {v2, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v8, "EavesdropperASR"

    const-string v9, "an.b/d/c invoked successfully"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_be} :catch_c0

    .line 377
    const/4 v8, 0x1

    goto :goto_8f

    .line 378
    .end local v0    # "anClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "b":Ljava/lang/reflect/Method;
    .end local v2    # "c":Ljava/lang/reflect/Method;
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "d":Ljava/lang/reflect/Method;
    :catch_c0
    move-exception v5

    .line 379
    .local v5, "e":Ljava/lang/Throwable;
    const-string v8, "EavesdropperASR"

    const-string v9, "invokeAnConfigure failed"

    invoke-static {v8, v9, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    const/4 v8, 0x0

    goto :goto_8f
.end method

.method private isJunkText(Ljava/lang/String;)Z
    .registers 9
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 285
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_b

    .line 298
    :cond_a
    :goto_a
    return v4

    .line 286
    :cond_b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 287
    .local v2, "prev":C
    const/4 v3, 0x1

    .line 288
    .local v3, "run":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 290
    .local v0, "c":C
    if-ne v0, v2, :cond_23

    .line 291
    add-int/lit8 v3, v3, 0x1

    .line 292
    if-lt v3, v6, :cond_25

    const/4 v4, 0x1

    goto :goto_a

    .line 294
    :cond_23
    const/4 v3, 0x1

    .line 295
    move v2, v0

    .line 288
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method private normalizeGain([B)[B
    .registers 15
    .param p1, "pcm"    # [B

    .prologue
    .line 306
    if-eqz p1, :cond_6

    array-length v7, p1

    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    .line 341
    .end local p1    # "pcm":[B
    :cond_6
    :goto_6
    return-object p1

    .line 309
    .restart local p1    # "pcm":[B
    :cond_7
    const/4 v4, 0x0

    .line 310
    .local v4, "maxAbs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    add-int/lit8 v7, v3, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_24

    .line 311
    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v6, v7

    .line 312
    .local v6, "s":S
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 313
    .local v0, "abs":I
    if-le v0, v4, :cond_21

    move v4, v0

    .line 310
    :cond_21
    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    .line 315
    .end local v0    # "abs":I
    .end local v6    # "s":S
    :cond_24
    if-nez v4, :cond_2e

    .line 316
    const-string v7, "EavesdropperASR"

    const-string v8, "normalize: silent buffer, skipping"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 321
    :cond_2e
    const/16 v7, 0x4000

    if-lt v4, v7, :cond_51

    .line 322
    const-string v7, "EavesdropperASR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "normalize: maxAbs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already loud, skip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 327
    :cond_51
    const/high16 v7, 0x46800000    # 16384.0f

    int-to-float v8, v4

    div-float v2, v7, v8

    .line 328
    .local v2, "gain":F
    const/high16 v7, 0x41800000    # 16.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_5e

    const/high16 v2, 0x41800000    # 16.0f

    .line 329
    :cond_5e
    const-string v7, "EavesdropperASR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "normalize: maxAbs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " gain="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%.2f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    array-length v7, p1

    new-array v5, v7, [B

    .line 333
    .local v5, "out":[B
    const/4 v3, 0x0

    :goto_9a
    add-int/lit8 v7, v3, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_cf

    .line 334
    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v6, v7

    .line 335
    .restart local v6    # "s":S
    int-to-float v7, v6

    mul-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 336
    .local v1, "amplified":I
    const/16 v7, 0x7fff

    if-le v1, v7, :cond_c8

    const/16 v1, 0x7fff

    .line 338
    :cond_b7
    :goto_b7
    and-int/lit16 v7, v1, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 339
    add-int/lit8 v7, v3, 0x1

    shr-int/lit8 v8, v1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 333
    add-int/lit8 v3, v3, 0x2

    goto :goto_9a

    .line 337
    :cond_c8
    const/16 v7, -0x8000

    if-ge v1, v7, :cond_b7

    const/16 v1, -0x8000

    goto :goto_b7

    .end local v1    # "amplified":I
    .end local v6    # "s":S
    :cond_cf
    move-object p1, v5

    .line 341
    goto/16 :goto_6
.end method

.method private parseASRResult(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    .registers 11
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 406
    const-string v7, "EavesdropperASR"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult input JSON length="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    :goto_13
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 408
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult raw JSON: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_3e
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 412
    :cond_46
    const-string v6, "EavesdropperASR"

    const-string v7, "parseASRResult: json is null or empty"

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v6, 0x0

    .line 439
    :goto_4e
    return-object v6

    .line 406
    :cond_4f
    const/4 v6, 0x0

    goto :goto_13

    .line 418
    :cond_51
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, "trimmed":Ljava/lang/String;
    const-string v6, "}{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15c

    .line 420
    const-string v6, "(?<=\\})(?=\\{)"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "segments":[Ljava/lang/String;
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult: detected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " segments"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "fullText":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 424
    .local v2, "lastScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_89
    array-length v6, v4

    if-ge v1, v6, :cond_12e

    .line 425
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult: segment["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    aget-object v6, v4, v1

    invoke-direct {p0, v6}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->parseSingleSegment(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    move-result-object v3

    .line 427
    .local v3, "segResult":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    if-eqz v3, :cond_10f

    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    if-eqz v6, :cond_10f

    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_10f

    .line 428
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult: segment["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] parsed text=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" conf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->confidence:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    iget v2, v3, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->confidence:F

    .line 424
    :goto_10b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_89

    .line 432
    :cond_10f
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseASRResult: segment["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] parsed as null/empty"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10b

    .line 435
    .end local v3    # "segResult":Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    :cond_12e
    const-string v6, "EavesdropperASR"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ASR multi-segment merged from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " parts: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v6, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_4e

    .line 439
    .end local v0    # "fullText":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "lastScore":F
    .end local v4    # "segments":[Ljava/lang/String;
    :cond_15c
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->parseSingleSegment(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    move-result-object v6

    goto/16 :goto_4e
.end method

.method private parseSingleSegment(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
    .registers 15
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 446
    .local v7, "trimmed":Ljava/lang/String;
    const-string v8, "{"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_31

    .line 448
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment: plain text mode, text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v8, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-direct {v8, v7, v12}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V

    .line 516
    :goto_30
    return-object v8

    .line 453
    :cond_31
    :try_start_31
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 457
    .local v4, "root":Lorg/json/JSONObject;
    const-string v8, "net_nlu"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 458
    const-string v8, "EavesdropperASR"

    const-string v9, "parseSingleSegment: found net_nlu array"

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v8, "net_nlu"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 460
    .local v3, "netNlu":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_fe

    .line 461
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 462
    .local v1, "first":Lorg/json/JSONObject;
    const-string v8, "recognition_result"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 463
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 464
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 466
    :cond_84
    const-string v8, "score"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 467
    .local v5, "score":F
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment net_nlu: text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" score="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v8, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-direct {v8, v6, v5}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_b4} :catch_b6

    goto/16 :goto_30

    .line 508
    .end local v1    # "first":Lorg/json/JSONObject;
    .end local v3    # "netNlu":Lorg/json/JSONArray;
    .end local v4    # "root":Lorg/json/JSONObject;
    .end local v5    # "score":F
    .end local v6    # "text":Ljava/lang/String;
    :catch_b6
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment JSON parse failed, trying as plain text: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_250

    .line 512
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment fallback to plain text: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v8, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-direct {v8, v7, v12}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_30

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_fe
    :try_start_fe
    const-string v8, "local_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_158

    .line 474
    const-string v8, "EavesdropperASR"

    const-string v9, "parseSingleSegment: found local_asr array"

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v8, "local_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 476
    .local v2, "localAsr":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_158

    .line 477
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 478
    .restart local v1    # "first":Lorg/json/JSONObject;
    const-string v8, "recognition_result"

    const-string v9, ""

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 479
    .restart local v6    # "text":Ljava/lang/String;
    const-string v8, "score"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 480
    .restart local v5    # "score":F
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment local_asr: text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" score="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v8, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-direct {v8, v6, v5}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_30

    .line 486
    .end local v1    # "first":Lorg/json/JSONObject;
    .end local v2    # "localAsr":Lorg/json/JSONArray;
    .end local v5    # "score":F
    .end local v6    # "text":Ljava/lang/String;
    :cond_158
    const-string v8, "asr_recongize"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 487
    .restart local v6    # "text":Ljava/lang/String;
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment: asr_recongize=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1aa

    .line 489
    const-string v8, "asr_recognize"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 490
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment: asr_recognize=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_1aa
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1d6

    .line 493
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 494
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment: text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_1d6
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_202

    .line 497
    const-string v8, "recognition_result"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment: recognition_result=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_202
    const-string v8, "score"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 503
    .restart local v5    # "score":F
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment final: text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" score="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseSingleSegment all keys: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/phicomm/speaker/device/custom/util/EventLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v8, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;

    invoke-direct {v8, v6, v5}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;-><init>(Ljava/lang/String;F)V
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_24e} :catch_b6

    goto/16 :goto_30

    .line 515
    .end local v4    # "root":Lorg/json/JSONObject;
    .end local v5    # "score":F
    .end local v6    # "text":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_250
    const-string v8, "EavesdropperASR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse ASR segment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " err="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v8, 0x0

    goto/16 :goto_30
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    .line 80
    return-void
.end method

.method public isRecognizing()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    return v0
.end method

.method public recognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    .registers 5
    .param p1, "audioBuffer"    # [B
    .param p2, "listener"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    if-eqz v0, :cond_c

    .line 57
    const-string v0, "EavesdropperASR"

    const-string v1, "Already recognizing, ignoring"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_b
    :goto_b
    return-void

    .line 61
    :cond_c
    if-eqz p1, :cond_11

    array-length v0, p1

    if-nez v0, :cond_19

    .line 62
    :cond_11
    if-eqz p2, :cond_b

    .line 63
    const-string v0, "Empty audio buffer"

    invoke-interface {p2, v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;->onError(Ljava/lang/String;)V

    goto :goto_b

    .line 68
    :cond_19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->isRecognizing:Z

    .line 70
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;-><init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;[BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_b
.end method
