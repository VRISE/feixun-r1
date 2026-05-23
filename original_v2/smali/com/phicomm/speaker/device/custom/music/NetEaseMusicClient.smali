.class public Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;
.super Ljava/lang/Object;
.source "NetEaseMusicClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;,
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://www.gequbao.com"

.field private static final CONNECT_TIMEOUT:I = 0x1f40

.field private static final MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

.field private static final MUSIC_PATH:Ljava/lang/String; = "/music/"

.field private static final PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final PLAY_URL_PATH:Ljava/lang/String; = "/api/play-url"

.field private static final READ_TIMEOUT:I = 0x3a98

.field private static final SEARCH_PATH:Ljava/lang/String; = "/s/"

.field private static final TAG:Ljava/lang/String; = "MusicClient"


# instance fields
.field private baseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "href=\"/music/(\\d+)\"[^>]*title=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "play_id\\\\u0022:\\\\u0022([A-Za-z0-9+/=]+)\\\\u0022"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    const-string v0, "https://www.gequbao.com"

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "baseUrl":Ljava/lang/String;
    :cond_16
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private httpGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 225
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 227
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 228
    const-string v9, "User-Agent"

    const-string v11, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v1, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v9, "Accept"

    const-string v11, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v1, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 v9, 0x1f40

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 231
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 232
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 234
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 235
    .local v7, "responseCode":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_5d

    .line 236
    const-string v9, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "httpGet failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_c5
    .catchall {:try_start_3 .. :try_end_51} :catchall_b2

    .line 254
    if-eqz v4, :cond_56

    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 255
    :cond_56
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_c9

    :cond_5b
    :goto_5b
    move-object v9, v10

    .line 251
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :goto_5c
    return-object v9

    .line 240
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_5d
    :try_start_5d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v6, "response":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v9, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_72} :catch_c5
    .catchall {:try_start_5d .. :try_end_72} :catchall_b2

    .line 243
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_72
    :try_start_72
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_a2

    .line 244
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_7c
    .catchall {:try_start_72 .. :try_end_7b} :catchall_c0

    goto :goto_72

    .line 249
    .end local v3    # "line":Ljava/lang/String;
    :catch_7c
    move-exception v2

    move-object v4, v5

    .line 250
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_7e
    :try_start_7e
    const-string v9, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "httpGet error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7e .. :try_end_96} :catchall_b2

    .line 254
    if-eqz v4, :cond_9b

    :try_start_98
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 255
    :cond_9b
    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a0} :catch_c3

    :cond_a0
    :goto_a0
    move-object v9, v10

    .line 251
    goto :goto_5c

    .line 247
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_a2
    :try_start_a2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_7c
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_c0

    move-result-object v9

    .line 254
    if-eqz v5, :cond_ab

    :try_start_a8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 255
    :cond_ab
    if-eqz v1, :cond_b0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b0} :catch_c7

    :cond_b0
    :goto_b0
    move-object v4, v5

    .line 247
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5c

    .line 253
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :catchall_b2
    move-exception v9

    .line 254
    :goto_b3
    if-eqz v4, :cond_b8

    :try_start_b5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 255
    :cond_b8
    if-eqz v1, :cond_bd

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_bd} :catch_be

    .line 257
    :cond_bd
    :goto_bd
    throw v9

    .line 256
    :catch_be
    move-exception v10

    goto :goto_bd

    .line 253
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_c0
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_b3

    .line 256
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_c3
    move-exception v9

    goto :goto_a0

    .line 249
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_c5
    move-exception v2

    goto :goto_7e

    .line 256
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :catch_c7
    move-exception v10

    goto :goto_b0

    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_c9
    move-exception v9

    goto :goto_5b
.end method

.method private httpPostForm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "formBody"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 319
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 322
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 323
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 324
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 325
    const-string v10, "User-Agent"

    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v10, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v10, "Accept"

    const-string v12, "application/json"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/16 v10, 0x1f40

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 329
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 330
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 331
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 334
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 335
    const-string v10, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    .line 336
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 338
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 339
    .local v8, "responseCode":I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_80

    .line 340
    const-string v10, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpPostForm failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6f} :catch_f7
    .catchall {:try_start_4 .. :try_end_6f} :catchall_df

    .line 358
    if-eqz v4, :cond_74

    :try_start_71
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 359
    :cond_74
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 360
    :cond_79
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7e} :catch_fb

    :cond_7e
    :goto_7e
    move-object v10, v11

    .line 355
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :goto_7f
    return-object v10

    .line 344
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_80
    :try_start_80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v7, "response":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_95} :catch_f7
    .catchall {:try_start_80 .. :try_end_95} :catchall_df

    .line 347
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_95
    :try_start_95
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_ca

    .line 348
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9e} :catch_9f
    .catchall {:try_start_95 .. :try_end_9e} :catchall_f2

    goto :goto_95

    .line 353
    .end local v3    # "line":Ljava/lang/String;
    :catch_9f
    move-exception v2

    move-object v5, v6

    .line 354
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_a1
    :try_start_a1
    const-string v10, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpPostForm error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_df

    .line 358
    if-eqz v4, :cond_be

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 359
    :cond_be
    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 360
    :cond_c3
    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c8} :catch_f5

    :cond_c8
    :goto_c8
    move-object v10, v11

    .line 355
    goto :goto_7f

    .line 351
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_ca
    :try_start_ca
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_9f
    .catchall {:try_start_ca .. :try_end_cd} :catchall_f2

    move-result-object v10

    .line 358
    if-eqz v4, :cond_d3

    :try_start_d0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 359
    :cond_d3
    if-eqz v6, :cond_d8

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 360
    :cond_d8
    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dd} :catch_f9

    :cond_dd
    :goto_dd
    move-object v5, v6

    .line 351
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_7f

    .line 357
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catchall_df
    move-exception v10

    .line 358
    :goto_e0
    if-eqz v4, :cond_e5

    :try_start_e2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 359
    :cond_e5
    if-eqz v5, :cond_ea

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 360
    :cond_ea
    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ef} :catch_f0

    .line 362
    :cond_ef
    :goto_ef
    throw v10

    .line 361
    :catch_f0
    move-exception v11

    goto :goto_ef

    .line 357
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_f2
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_e0

    .line 361
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_f5
    move-exception v10

    goto :goto_c8

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_f7
    move-exception v2

    goto :goto_a1

    .line 361
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catch_f9
    move-exception v11

    goto :goto_dd

    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_fb
    move-exception v10

    goto :goto_7e
.end method

.method private httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "jsonBody"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 266
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 269
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_4
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 270
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 271
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 272
    const-string v10, "User-Agent"

    const-string v12, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v10, "Content-Type"

    const-string v12, "application/json; charset=UTF-8"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v10, "Accept"

    const-string v12, "application/json"

    invoke-virtual {v1, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/16 v10, 0x1f40

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 276
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 277
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 278
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 282
    const-string v10, "UTF-8"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    .line 283
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 285
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 286
    .local v8, "responseCode":I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_80

    .line 287
    const-string v10, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpPostJson failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6f} :catch_f7
    .catchall {:try_start_4 .. :try_end_6f} :catchall_df

    .line 305
    if-eqz v4, :cond_74

    :try_start_71
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 306
    :cond_74
    if-eqz v5, :cond_79

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 307
    :cond_79
    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7e} :catch_fb

    :cond_7e
    :goto_7e
    move-object v10, v11

    .line 302
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :goto_7f
    return-object v10

    .line 291
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_80
    :try_start_80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v7, "response":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v10, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_95} :catch_f7
    .catchall {:try_start_80 .. :try_end_95} :catchall_df

    .line 294
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_95
    :try_start_95
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_ca

    .line 295
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_9e} :catch_9f
    .catchall {:try_start_95 .. :try_end_9e} :catchall_f2

    goto :goto_95

    .line 300
    .end local v3    # "line":Ljava/lang/String;
    :catch_9f
    move-exception v2

    move-object v5, v6

    .line 301
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_a1
    :try_start_a1
    const-string v10, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "httpPostJson error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_df

    .line 305
    if-eqz v4, :cond_be

    :try_start_bb
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 306
    :cond_be
    if-eqz v5, :cond_c3

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 307
    :cond_c3
    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c8} :catch_f5

    :cond_c8
    :goto_c8
    move-object v10, v11

    .line 302
    goto :goto_7f

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_ca
    :try_start_ca
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_9f
    .catchall {:try_start_ca .. :try_end_cd} :catchall_f2

    move-result-object v10

    .line 305
    if-eqz v4, :cond_d3

    :try_start_d0
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 306
    :cond_d3
    if-eqz v6, :cond_d8

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 307
    :cond_d8
    if-eqz v1, :cond_dd

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dd} :catch_f9

    :cond_dd
    :goto_dd
    move-object v5, v6

    .line 298
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_7f

    .line 304
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catchall_df
    move-exception v10

    .line 305
    :goto_e0
    if-eqz v4, :cond_e5

    :try_start_e2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 306
    :cond_e5
    if-eqz v5, :cond_ea

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 307
    :cond_ea
    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ef} :catch_f0

    .line 309
    :cond_ef
    :goto_ef
    throw v10

    .line 308
    :catch_f0
    move-exception v11

    goto :goto_ef

    .line 304
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_f2
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_e0

    .line 308
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_f5
    move-exception v10

    goto :goto_c8

    .line 300
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_f7
    move-exception v2

    goto :goto_a1

    .line 308
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catch_f9
    move-exception v11

    goto :goto_dd

    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_fb
    move-exception v10

    goto :goto_7e
.end method


# virtual methods
.method public getPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/music/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "musicUrl":Ljava/lang/String;
    const-string v11, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPlayUrl music page: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "musicHtml":Ljava/lang/String;
    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_46

    .line 131
    :cond_3d
    const-string v11, "MusicClient"

    const-string v12, "getPlayUrl failed: empty music page"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v8, 0x0

    .line 183
    .end local v4    # "musicHtml":Ljava/lang/String;
    .end local v5    # "musicUrl":Ljava/lang/String;
    :goto_45
    return-object v8

    .line 136
    .restart local v4    # "musicHtml":Ljava/lang/String;
    .restart local v5    # "musicUrl":Ljava/lang/String;
    :cond_46
    sget-object v11, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 137
    .local v7, "playIdMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-nez v11, :cond_5b

    .line 138
    const-string v11, "MusicClient"

    const-string v12, "getPlayUrl failed: no play_id found"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v8, 0x0

    goto :goto_45

    .line 141
    :cond_5b
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "playId":Ljava/lang/String;
    const-string v11, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "play_id: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/api/play-url"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "apiUrl":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{\"id\":\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\"}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "jsonBody":Ljava/lang/String;
    const-string v11, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "play-url request: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " body: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0, v0, v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpPostJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "json":Ljava/lang/String;
    if-eqz v2, :cond_d4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_de

    .line 152
    :cond_d4
    const-string v11, "MusicClient"

    const-string v12, "getPlayUrl failed: empty API response"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 158
    :cond_de
    const-string v11, "\"url\":\""

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 159
    .local v10, "urlStart":I
    const/4 v11, -0x1

    if-ne v10, v11, :cond_f1

    .line 160
    const-string v11, "MusicClient"

    const-string v12, "getPlayUrl failed: no url in response"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 164
    :cond_f1
    add-int/lit8 v10, v10, 0x7

    .line 165
    const-string v11, "\""

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 166
    .local v9, "urlEnd":I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_106

    .line 167
    const-string v11, "MusicClient"

    const-string v12, "getPlayUrl failed: invalid url"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v8, 0x0

    goto/16 :goto_45

    .line 171
    :cond_106
    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, "playUrl":Ljava/lang/String;
    const-string v11, "\\/"

    const-string v12, "/"

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\u0026"

    const-string v13, "&"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\u003d"

    const-string v13, "="

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 175
    const-string v11, "https://"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_143

    .line 176
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "http://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 178
    :cond_143
    const-string v11, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "playUrl: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15b} :catch_15d

    goto/16 :goto_45

    .line 181
    .end local v0    # "apiUrl":Ljava/lang/String;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "jsonBody":Ljava/lang/String;
    .end local v4    # "musicHtml":Ljava/lang/String;
    .end local v5    # "musicUrl":Ljava/lang/String;
    .end local v6    # "playId":Ljava/lang/String;
    .end local v7    # "playIdMatcher":Ljava/util/regex/Matcher;
    .end local v8    # "playUrl":Ljava/lang/String;
    .end local v9    # "urlEnd":I
    .end local v10    # "urlStart":I
    :catch_15d
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "MusicClient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPlayUrl error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v8, 0x0

    goto/16 :goto_45
.end method

.method public search(Ljava/lang/String;)Ljava/util/List;
    .registers 15
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;>;"
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/s/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {p1, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "urlStr":Ljava/lang/String;
    const-string v9, "MusicClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "search url: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v8}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "html":Ljava/lang/String;
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 80
    :cond_49
    const-string v9, "MusicClient"

    const-string v10, "search failed: empty response"

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "html":Ljava/lang/String;
    .end local v8    # "urlStr":Ljava/lang/String;
    :cond_50
    :goto_50
    return-object v6

    .line 85
    .restart local v1    # "html":Ljava/lang/String;
    .restart local v8    # "urlStr":Ljava/lang/String;
    :cond_51
    sget-object v9, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 86
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :cond_57
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_50

    .line 87
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "id":Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "title":Ljava/lang/String;
    new-instance v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;

    invoke-direct {v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;-><init>()V

    .line 91
    .local v3, "item":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    iput-object v2, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    .line 94
    const-string v9, " - "

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, "parts":[Ljava/lang/String;
    array-length v9, v5

    if-lez v9, :cond_80

    .line 96
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    .line 98
    :cond_80
    array-length v9, v5

    if-le v9, v12, :cond_d0

    .line 99
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    .line 104
    :goto_8c
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v9, "MusicClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_57

    goto :goto_50

    .line 101
    :cond_d0
    const-string v9, ""

    iput-object v9, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d4} :catch_d5

    goto :goto_8c

    .line 111
    .end local v1    # "html":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "urlStr":Ljava/lang/String;
    :catch_d5
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "MusicClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "search error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50
.end method

.method public searchAndGetFirst(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    .registers 9
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;>;"
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 195
    :cond_d
    const-string v4, "MusicClient"

    const-string v5, "searchAndGetFirst: no results"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_14
    return-object v2

    .line 199
    :cond_15
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;

    .line 200
    .local v0, "first":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->getPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "playUrl":Ljava/lang/String;
    if-nez v1, :cond_3f

    .line 202
    const-string v4, "MusicClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchAndGetFirst: failed to get play url for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 206
    :cond_3f
    new-instance v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    invoke-direct {v2}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;-><init>()V

    .line 207
    .local v2, "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->name:Ljava/lang/String;

    .line 208
    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    iput-object v4, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    .line 209
    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->album:Ljava/lang/String;

    iput-object v4, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->album:Ljava/lang/String;

    .line 210
    iput-object v1, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->playUrl:Ljava/lang/String;

    .line 211
    iget-wide v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->duration:J

    iput-wide v4, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->duration:J

    .line 212
    iget-object v4, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->picUrl:Ljava/lang/String;

    iput-object v4, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->picUrl:Ljava/lang/String;

    goto :goto_14
.end method
