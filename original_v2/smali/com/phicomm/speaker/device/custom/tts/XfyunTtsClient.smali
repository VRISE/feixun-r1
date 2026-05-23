.class public Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
.super Ljava/lang/Object;
.source "XfyunTtsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;,
        Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_DIR:Ljava/lang/String; = "/sdcard/r1-tts"

.field private static final DEFAULT_API_KEY:Ljava/lang/String; = "cccd2db3d09da7e277ca31f06d8c8ea3"

.field private static final DEFAULT_API_SECRET:Ljava/lang/String; = "OGE1NGE2N2YxY2E4N2I0ZmI4YmQ4NjNk"

.field private static final DEFAULT_APP_ID:Ljava/lang/String; = "0a640374"

.field private static final HOST:Ljava/lang/String; = "tts-api.xfyun.cn"

.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/eav_event.log"

.field private static final TAG:Ljava/lang/String; = "XfyunTtsClient"

.field private static final TTS_URL:Ljava/lang/String; = "wss://tts-api.xfyun.cn/v2/tts"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private audioBuffer:Ljava/io/ByteArrayOutputStream;

.field private volatile completed:Z

.field private volatile errorMsg:Ljava/lang/String;

.field private pitch:I

.field private speed:I

.field private voice:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x32

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "0a640374"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->appId:Ljava/lang/String;

    .line 74
    const-string v0, "OGE1NGE2N2YxY2E4N2I0ZmI4YmQ4NjNk"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiSecret:Ljava/lang/String;

    .line 75
    const-string v0, "cccd2db3d09da7e277ca31f06d8c8ea3"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiKey:Ljava/lang/String;

    .line 81
    const-string v0, "x4_yezi"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->voice:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->speed:I

    .line 83
    const/16 v0, 0x5a

    iput v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->volume:I

    .line 84
    iput v1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->pitch:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    .line 109
    const-string v0, "=== XfyunTtsClient \u6784\u9020\u51fd\u6570\u88ab\u8c03\u7528 ==="

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->loadConfig()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    .registers 4
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->playAudio(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lokhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .param p1, "x1"    # Lokhttp3/WebSocket;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->sendRequest(Lokhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lokhttp3/WebSocket;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;
    .param p1, "x1"    # Lokhttp3/WebSocket;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->handleTextMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/io/ByteArrayOutputStream;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method private getAuthUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;
    .param p3, "apiSecret"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 466
    new-instance v11, Ljava/net/URI;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 467
    .local v11, "uri":Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, "host":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 469
    .local v7, "path":Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v12, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    .line 470
    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "date":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "host: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\ndate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nGET "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " HTTP/1.1"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 478
    .local v10, "signatureOrigin":Ljava/lang/String;
    const-string v12, "HmacSHA256"

    invoke-static {v12}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    .line 479
    .local v6, "mac":Ljavax/crypto/Mac;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const-string v13, "HmacSHA256"

    invoke-direct {v5, v12, v13}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 480
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v6, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 481
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v9

    .line 482
    .local v9, "signatureBytes":[B
    const/4 v12, 0x2

    invoke-static {v9, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "signature":Ljava/lang/String;
    const-string v12, "api_key=\"%s\", algorithm=\"hmac-sha256\", headers=\"host date request-line\", signature=\"%s\""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p2, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "authorizationOrigin":Ljava/lang/String;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "authorization":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "?authorization="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-static {v1, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&date="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    .line 493
    invoke-static {v3, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "&host="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "UTF-8"

    .line 494
    invoke-static {v4, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 492
    return-object v12
.end method

.method private handleTextMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .registers 18
    .param p1, "ws"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 412
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6536\u5230\u54cd\u5e94: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0xc8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 413
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6536\u5230\u54cd\u5e94: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xc8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    .local v7, "root":Lorg/json/JSONObject;
    const-string v10, "code"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 417
    .local v3, "code":I
    const-string v10, "sid"

    const-string v11, ""

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, "sid":Ljava/lang/String;
    const-string v10, "message"

    const-string v11, ""

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, "message":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 422
    if-eqz v3, :cond_e8

    .line 423
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS \u9519\u8bef: code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", message="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS \u9519\u8bef: code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", message="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 425
    iput-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    .line 426
    const/16 v10, 0x3e8

    const-string v11, "Error"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    .line 460
    .end local v3    # "code":I
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    .end local v8    # "sid":Ljava/lang/String;
    :cond_e7
    :goto_e7
    return-void

    .line 430
    .restart local v3    # "code":I
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v7    # "root":Lorg/json/JSONObject;
    .restart local v8    # "sid":Ljava/lang/String;
    :cond_e8
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS session: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 434
    const-string v10, "data"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 435
    .local v4, "dataObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_e7

    .line 436
    const-string v10, "audio"

    const-string v11, ""

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, "audioBase64":Ljava/lang/String;
    const-string v10, "status"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 439
    .local v9, "status":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u6536\u5230\u97f3\u9891\u7247\u6bb5, Base64\u957f\u5ea6: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1a2

    .line 442
    const/4 v10, 0x0

    invoke-static {v1, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 443
    .local v2, "audioBytes":[B
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 444
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u6536\u5230\u97f3\u9891\u7247\u6bb5: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u97f3\u9891\u7f13\u51b2\u7d2f\u8ba1: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 448
    .end local v2    # "audioBytes":[B
    :cond_1a2
    const/4 v10, 0x2

    if-ne v9, v10, :cond_e7

    .line 449
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z

    .line 450
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TTS \u5408\u6210\u5b8c\u6210,\u603b\u97f3\u9891: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTS \u5408\u6210\u5b8c\u6210,\u603b\u97f3\u9891: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 452
    const/16 v10, 0x3e8

    const-string v11, "Completed"

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_e7

    .line 455
    .end local v1    # "audioBase64":Ljava/lang/String;
    .end local v3    # "code":I
    .end local v4    # "dataObj":Lorg/json/JSONObject;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "root":Lorg/json/JSONObject;
    .end local v8    # "sid":Ljava/lang/String;
    .end local v9    # "status":I
    :catch_1f9
    move-exception v5

    .line 456
    .local v5, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89e3\u6790 TTS \u54cd\u5e94\u5931\u8d25: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 457
    const-string v10, "XfyunTtsClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u89e3\u6790 TTS \u54cd\u5e94\u5931\u8d25: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u89e3\u6790\u5931\u8d25: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    goto/16 :goto_e7
.end method

.method private loadConfig()V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 120
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/data/com.phicomm.speaker.device/files/tts_config.ini"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_18

    .line 122
    const-string v8, "XfyunTtsClient"

    const-string v9, "TTS config file not found, using defaults"

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "configFile":Ljava/io/File;
    :goto_17
    return-void

    .line 126
    .restart local v0    # "configFile":Ljava/io/File;
    :cond_18
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v13, "UTF-8"

    invoke-direct {v8, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 129
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 131
    .local v2, "inSection":Z
    :cond_2a
    :goto_2a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_fd

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 133
    const-string v8, "[TTS]"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 134
    const/4 v2, 0x1

    .line 135
    goto :goto_2a

    .line 136
    :cond_3e
    const-string v8, "["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 137
    const/4 v2, 0x0

    .line 138
    goto :goto_2a

    .line 141
    :cond_48
    if-eqz v2, :cond_2a

    const-string v8, "="

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 142
    const-string v8, "="

    const/4 v12, 0x2

    invoke-virtual {v4, v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "parts":[Ljava/lang/String;
    array-length v8, v5

    if-ne v8, v11, :cond_2a

    .line 144
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "value":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_128

    :cond_72
    :goto_72
    packed-switch v8, :pswitch_data_146

    goto :goto_2a

    .line 149
    :pswitch_76
    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->appId:Ljava/lang/String;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_78} :catch_79

    goto :goto_2a

    .line 176
    .end local v0    # "configFile":Ljava/io/File;
    .end local v2    # "inSection":Z
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "value":Ljava/lang/String;
    :catch_79
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "XfyunTtsClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load TTS config, using defaults: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "configFile":Ljava/io/File;
    .restart local v2    # "inSection":Z
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "value":Ljava/lang/String;
    :sswitch_93
    :try_start_93
    const-string v12, "app_id"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    move v8, v9

    goto :goto_72

    :sswitch_9d
    const-string v12, "api_secret"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    move v8, v10

    goto :goto_72

    :sswitch_a7
    const-string v12, "api_key"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    move v8, v11

    goto :goto_72

    :sswitch_b1
    const-string v12, "voice"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v8, 0x3

    goto :goto_72

    :sswitch_bb
    const-string v12, "speed"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v8, 0x4

    goto :goto_72

    :sswitch_c5
    const-string v12, "volume"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v8, 0x5

    goto :goto_72

    :sswitch_cf
    const-string v12, "pitch"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const/4 v8, 0x6

    goto :goto_72

    .line 152
    :pswitch_d9
    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiSecret:Ljava/lang/String;

    goto/16 :goto_2a

    .line 155
    :pswitch_dd
    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiKey:Ljava/lang/String;

    goto/16 :goto_2a

    .line 158
    :pswitch_e1
    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->voice:Ljava/lang/String;

    goto/16 :goto_2a

    .line 161
    :pswitch_e5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->speed:I

    goto/16 :goto_2a

    .line 164
    :pswitch_ed
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->volume:I

    goto/16 :goto_2a

    .line 167
    :pswitch_f5
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->pitch:I

    goto/16 :goto_2a

    .line 173
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_fd
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 175
    const-string v8, "XfyunTtsClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TTS config loaded: voice="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->voice:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", speed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->speed:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_126} :catch_79

    goto/16 :goto_17

    .line 147
    :sswitch_data_128
    .sparse-switch
        -0x541b4807 -> :sswitch_93
        -0x305518e6 -> :sswitch_c5
        -0x2fb05546 -> :sswitch_a7
        0x65bc340 -> :sswitch_cf
        0x6890047 -> :sswitch_bb
        0x6b2e132 -> :sswitch_b1
        0x748b2075 -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_76
        :pswitch_d9
        :pswitch_dd
        :pswitch_e1
        :pswitch_e5
        :pswitch_ed
        :pswitch_f5
    .end packed-switch
.end method

.method private playAudio(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;

    .prologue
    .line 502
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "audioFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_22

    .line 504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u97f3\u9891\u6587\u4ef6\u4e0d\u5b58\u5728: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onError(Ljava/lang/String;)V

    .line 538
    .end local v0    # "audioFile":Ljava/io/File;
    :goto_21
    return-void

    .line 508
    .restart local v0    # "audioFile":Ljava/io/File;
    :cond_22
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 509
    .local v3, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v3, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 512
    move-object v2, v3

    .line 513
    .local v2, "finalPlayer":Landroid/media/MediaPlayer;
    new-instance v4, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;

    invoke-direct {v4, p0, p3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$3;-><init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 522
    new-instance v4, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;

    invoke-direct {v4, p0, p3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$4;-><init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 532
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 533
    const-string v4, "XfyunTtsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f00\u59cb\u64ad\u653e\u97f3\u9891: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_21

    .line 534
    .end local v0    # "audioFile":Ljava/io/File;
    .end local v2    # "finalPlayer":Landroid/media/MediaPlayer;
    .end local v3    # "player":Landroid/media/MediaPlayer;
    :catch_5a
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "XfyunTtsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u64ad\u653e\u97f3\u9891\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u64ad\u653e\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$PlayCallback;->onError(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private sendRequest(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .registers 12
    .param p1, "ws"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 368
    :try_start_0
    const-string v6, "\u6b63\u5728\u6784\u5efa TTS \u8bf7\u6c42..."

    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 370
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 371
    .local v0, "business":Lorg/json/JSONObject;
    const-string v6, "aue"

    const-string v7, "lame"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v6, "sfl"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 373
    const-string v6, "auf"

    const-string v7, "audio/L16;rate=16000"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v6, "vcn"

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->voice:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    const-string v6, "speed"

    iget v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->speed:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    const-string v6, "volume"

    iget v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->volume:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    const-string v6, "pitch"

    iget v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->pitch:I

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 378
    const-string v6, "bgs"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    const-string v6, "tte"

    const-string v7, "UTF8"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "textBase64":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 384
    .local v2, "data":Lorg/json/JSONObject;
    const-string v6, "status"

    const/4 v7, 0x2

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    const-string v6, "text"

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 389
    .local v1, "common":Lorg/json/JSONObject;
    const-string v6, "app_id"

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->appId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v4, "request":Lorg/json/JSONObject;
    const-string v6, "common"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v6, "business"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string v6, "data"

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53d1\u9001\u8bf7\u6c42: app_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", voice="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->voice:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    .line 398
    const-string v6, "XfyunTtsClient"

    const-string v7, "TTS \u8bf7\u6c42\u5df2\u53d1\u9001"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v6, "TTS \u8bf7\u6c42\u5df2\u53d1\u9001"

    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c3} :catch_c4

    .line 405
    .end local v0    # "business":Lorg/json/JSONObject;
    .end local v1    # "common":Lorg/json/JSONObject;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "request":Lorg/json/JSONObject;
    .end local v5    # "textBase64":Ljava/lang/String;
    :goto_c3
    return-void

    .line 400
    :catch_c4
    move-exception v3

    .line 401
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6784\u5efa TTS \u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 402
    const-string v6, "XfyunTtsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6784\u5efa TTS \u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u6784\u5efa\u8bf7\u6c42\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    goto :goto_c3
.end method

.method private synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    .prologue
    .line 264
    const-string v5, "--- synthesizeToFile \u5f00\u59cb ---"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 267
    :try_start_5
    const-string v5, "\u6b63\u5728\u6784\u5efa\u9274\u6743 URL"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 268
    const-string v5, "wss://tts-api.xfyun.cn/v2/tts"

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiSecret:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->getAuthUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "authUrl":Ljava/lang/String;
    const-string v5, "XfyunTtsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u9274\u6743 URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9274\u6743 URL \u524d\u7f00: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 273
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v5, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;

    .line 274
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z

    .line 275
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;

    .line 276
    const-string v5, "\u97f3\u9891\u7f13\u51b2\u5df2\u521d\u59cb\u5316"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 279
    new-instance v5, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v5}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 280
    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 281
    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 283
    .local v1, "client":Lokhttp3/OkHttpClient;
    const-string v5, "OkHttp \u5ba2\u6237\u7aef\u5df2\u521b\u5efa"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 286
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 287
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 288
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 289
    .local v3, "request":Lokhttp3/Request;
    const-string v5, "WebSocket \u8bf7\u6c42\u5df2\u6784\u5efa"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 292
    const-string v5, "\u6b63\u5728\u5efa\u7acb WebSocket \u8fde\u63a5..."

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 293
    new-instance v5, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;-><init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V

    invoke-virtual {v1, v3, v5}, Lokhttp3/OkHttpClient;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v4

    .line 353
    .local v4, "ws":Lokhttp3/WebSocket;
    const-string v5, "WebSocket \u8fde\u63a5\u5df2\u53d1\u8d77 (\u5f02\u6b65)"

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_bb} :catch_bc

    .line 361
    .end local v0    # "authUrl":Ljava/lang/String;
    .end local v1    # "client":Lokhttp3/OkHttpClient;
    .end local v3    # "request":Lokhttp3/Request;
    .end local v4    # "ws":Lokhttp3/WebSocket;
    :goto_bb
    return-void

    .line 355
    :catch_bc
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS \u521d\u59cb\u5316\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    const-string v5, "XfyunTtsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TTS \u521d\u59cb\u5316\u5931\u8d25: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u5316\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    goto :goto_bb
.end method

.method private static writeLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sdcard/eav_event.log"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 97
    .local v1, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "timestamp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "XfyunTtsClient"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 99
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 103
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "timestamp":Ljava/lang/String;
    :goto_3c
    return-void

    .line 100
    :catch_3d
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "XfyunTtsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5199\u5165\u65e5\u5fd7\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method


# virtual methods
.method public synthesizeAndPlay(Landroid/content/Context;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    .prologue
    .line 195
    const-string v3, "======================================="

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 196
    const-string v3, "synthesizeAndPlay \u88ab\u8c03\u7528"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6587\u672c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiKey:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->apiKey:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 200
    const-string v3, "======================================="

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 202
    if-eqz p2, :cond_74

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 203
    :cond_74
    const-string v3, "XfyunTtsClient"

    const-string v4, "TTS text is empty"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v3, "\u9519\u8bef: \u6587\u672c\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 205
    const-string v3, "\u6587\u672c\u4e3a\u7a7a"

    invoke-interface {p3, v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    .line 258
    :goto_85
    return-void

    .line 209
    :cond_86
    const-string v3, "XfyunTtsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5f00\u59cb\u8baf\u98de TTS \u5408\u6210, \u6587\u672c: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "\u5f00\u59cb\u5408\u6210\u6d41\u7a0b"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/r1-tts"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b8

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 216
    const-string v3, "\u521b\u5efa\u97f3\u9891\u76ee\u5f55: /sdcard/r1-tts"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 220
    :cond_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/r1-tts/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "outputPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8f93\u51fa\u6587\u4ef6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    .line 225
    new-instance v3, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;

    invoke-direct {v3, p0, p1, p3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$1;-><init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Landroid/content/Context;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V

    invoke-direct {p0, p2, v2, v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V

    .line 257
    const-string v3, "synthesizeAndPlay \u65b9\u6cd5\u8fd4\u56de (\u5f02\u6b65\u6267\u884c\u4e2d)"

    invoke-static {v3}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V

    goto/16 :goto_85
.end method
