.class public Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;
.super Ljava/lang/Object;
.source "NetEaseMusicClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;,
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;,
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;,
        Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://www.gequbao.com"

.field private static final CODE_PATTERN:Ljava/util/regex/Pattern;

.field private static final CONNECT_TIMEOUT:I = 0x1f40

.field private static final MAX_CANDIDATES:I = 0x5

.field private static final MAX_RETRY:I = 0x3

.field private static final MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

.field private static final MUSIC_PATH:Ljava/lang/String; = "/music/"

.field private static final PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final PLAY_URL_PATH:Ljava/lang/String; = "/member/common-play-url"

.field private static final READ_TIMEOUT:I = 0x3a98

.field private static final SEARCH_PATH:Ljava/lang/String; = "/s/"

.field private static final TAG:Ljava/lang/String; = "MusicClient"

.field private static final UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

.field private static final URL_CACHE_TTL_MS:J = 0x1b7740L


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private final urlCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "href=\"/music/(\\d+)\"[^>]*title=\"([^\"]+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

    .line 67
    const-string v0, "play_id\\\\u0022:\\\\u0022([A-Za-z0-9+/=]+)\\\\u0022"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "\"code\"\\s*:\\s*(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->CODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    const-string v0, "https://www.gequbao.com"

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlCache:Ljava/util/Map;

    .line 87
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "baseUrl":Ljava/lang/String;
    :cond_1d
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private closeQuietly(Ljava/io/BufferedReader;)V
    .registers 3
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 502
    if-eqz p1, :cond_5

    .line 504
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 507
    :cond_5
    :goto_5
    return-void

    .line 505
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private extractJsonUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 314
    const-string v3, "\"url\":\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 315
    .local v2, "urlStart":I
    if-ne v2, v4, :cond_b

    .line 332
    :cond_a
    :goto_a
    return-object v0

    .line 318
    :cond_b
    add-int/lit8 v2, v2, 0x7

    .line 319
    const-string v3, "\""

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 320
    .local v1, "urlEnd":I
    if-eq v1, v4, :cond_a

    .line 323
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "playUrl":Ljava/lang/String;
    const-string v3, "\\/"

    const-string v4, "/"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u0026"

    const-string v5, "&"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\u003d"

    const-string v5, "="

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_52
    const-string v3, "MusicClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private htmlUnescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 347
    if-nez p1, :cond_5

    const-string v0, ""

    .line 348
    :goto_4
    return-object v0

    :cond_5
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    .line 349
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    .line 350
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    .line 351
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&#39;"

    const-string v2, "\'"

    .line 352
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&nbsp;"

    const-string v2, " "

    .line 353
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private httpGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 358
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGet(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private httpGet(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "retries"    # I

    .prologue
    .line 362
    const/4 v0, 0x0

    .local v0, "attempt":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 363
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGetOnce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "r":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 372
    .end local v1    # "r":Ljava/lang/String;
    :goto_9
    return-object v1

    .line 367
    .restart local v1    # "r":Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_17

    .line 368
    const-wide/16 v2, 0x258

    add-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->sleepQuietly(J)V

    .line 362
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v1    # "r":Ljava/lang/String;
    :cond_1a
    const-string v2, "MusicClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpGet exhausted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private httpGetOnce(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 380
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 381
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 382
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 383
    const-string v9, "User-Agent"

    const-string v11, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v1, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v9, "Accept"

    const-string v11, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v1, v9, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const/16 v9, 0x1f40

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 386
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 387
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 389
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 390
    .local v7, "responseCode":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_5b

    .line 391
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
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_c1
    .catchall {:try_start_3 .. :try_end_51} :catchall_ac

    .line 408
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 409
    if-eqz v1, :cond_59

    .line 411
    :try_start_56
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_b6

    :cond_59
    :goto_59
    move-object v9, v10

    .line 406
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :goto_5a
    return-object v9

    .line 395
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_5b
    :try_start_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v6, "response":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v9, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_70} :catch_c1
    .catchall {:try_start_5b .. :try_end_70} :catchall_ac

    .line 398
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_70
    :try_start_70
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_9e

    .line 399
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_7a
    .catchall {:try_start_70 .. :try_end_79} :catchall_be

    goto :goto_70

    .line 404
    .end local v3    # "line":Ljava/lang/String;
    :catch_7a
    move-exception v2

    move-object v4, v5

    .line 405
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_7c
    :try_start_7c
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
    :try_end_94
    .catchall {:try_start_7c .. :try_end_94} :catchall_ac

    .line 408
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 409
    if-eqz v1, :cond_9c

    .line 411
    :try_start_99
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_ba

    :cond_9c
    :goto_9c
    move-object v9, v10

    .line 406
    goto :goto_5a

    .line 402
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_9e
    :try_start_9e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a1} :catch_7a
    .catchall {:try_start_9e .. :try_end_a1} :catchall_be

    move-result-object v9

    .line 408
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 409
    if-eqz v1, :cond_aa

    .line 411
    :try_start_a7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_b8

    :cond_aa
    :goto_aa
    move-object v4, v5

    .line 402
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5a

    .line 408
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :catchall_ac
    move-exception v9

    :goto_ad
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 409
    if-eqz v1, :cond_b5

    .line 411
    :try_start_b2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_bc

    .line 414
    :cond_b5
    :goto_b5
    throw v9

    .line 412
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :catch_b6
    move-exception v9

    goto :goto_59

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    :catch_b8
    move-exception v10

    goto :goto_aa

    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_ba
    move-exception v9

    goto :goto_9c

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_bc
    move-exception v10

    goto :goto_b5

    .line 408
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "response":Ljava/lang/StringBuilder;
    .restart local v7    # "responseCode":I
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_be
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_ad

    .line 404
    .end local v6    # "response":Ljava/lang/StringBuilder;
    .end local v7    # "responseCode":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_c1
    move-exception v2

    goto :goto_7c
.end method

.method private httpPostForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "formBody"    # Ljava/lang/String;
    .param p3, "referer"    # Ljava/lang/String;
    .param p4, "retries"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    .local v0, "attempt":I
    :goto_1
    if-ge v0, p4, :cond_1a

    .line 424
    invoke-direct {p0, p1, p2, p3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpPostFormOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "r":Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 432
    .end local v1    # "r":Ljava/lang/String;
    :goto_9
    return-object v1

    .line 428
    .restart local v1    # "r":Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, p4, -0x1

    if-ge v0, v2, :cond_17

    .line 429
    const-wide/16 v2, 0x258

    add-int/lit8 v4, v0, 0x1

    int-to-long v4, v4

    mul-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->sleepQuietly(J)V

    .line 423
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 432
    .end local v1    # "r":Ljava/lang/String;
    :cond_1a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private httpPostFormOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "formBody"    # Ljava/lang/String;
    .param p3, "referer"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 437
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 438
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 441
    .local v4, "os":Ljava/io/OutputStream;
    :try_start_3
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 442
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 443
    const-string v10, "POST"

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 444
    const-string v10, "User-Agent"

    const-string v11, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v10, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v10, "X-Requested-With"

    const-string v11, "XMLHttpRequest"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v10, "Accept"

    const-string v11, "application/json, text/javascript, */*; q=0.01"

    invoke-virtual {v1, v10, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    if-eqz p3, :cond_3a

    .line 449
    const-string v10, "Referer"

    move-object/from16 v0, p3

    invoke-virtual {v1, v10, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_3a
    const/16 v10, 0x1f40

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 452
    const/16 v10, 0x3a98

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 453
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 454
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 456
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 457
    const-string v10, "UTF-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write([B)V

    .line 458
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 460
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 461
    .local v8, "responseCode":I
    const/16 v10, 0xc8

    if-eq v8, v10, :cond_8b

    .line 462
    const-string v10, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "httpPostForm failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7c} :catch_108
    .catchall {:try_start_3 .. :try_end_7c} :catchall_e8

    .line 463
    const/4 v10, 0x0

    .line 479
    if-eqz v4, :cond_82

    .line 481
    :try_start_7f
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_f7

    .line 484
    :cond_82
    :goto_82
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 485
    if-eqz v1, :cond_8a

    .line 487
    :try_start_87
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_f9

    .line 477
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :cond_8a
    :goto_8a
    return-object v10

    .line 466
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_8b
    :try_start_8b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v7, "response":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a0} :catch_108
    .catchall {:try_start_8b .. :try_end_a0} :catchall_e8

    .line 469
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :goto_a0
    :try_start_a0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_d5

    .line 470
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a9} :catch_aa
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_105

    goto :goto_a0

    .line 475
    .end local v3    # "line":Ljava/lang/String;
    :catch_aa
    move-exception v2

    move-object v5, v6

    .line 476
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_ac
    :try_start_ac
    const-string v10, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "httpPostForm error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catchall {:try_start_ac .. :try_end_c4} :catchall_e8

    .line 477
    const/4 v10, 0x0

    .line 479
    if-eqz v4, :cond_ca

    .line 481
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_ff

    .line 484
    :cond_ca
    :goto_ca
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 485
    if-eqz v1, :cond_8a

    .line 487
    :try_start_cf
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d3

    goto :goto_8a

    .line 488
    :catch_d3
    move-exception v11

    goto :goto_8a

    .line 473
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_d5
    :try_start_d5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_d8} :catch_aa
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_105

    move-result-object v10

    .line 479
    if-eqz v4, :cond_de

    .line 481
    :try_start_db
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_fb

    .line 484
    :cond_de
    :goto_de
    invoke-direct {p0, v6}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 485
    if-eqz v1, :cond_e6

    .line 487
    :try_start_e3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_e6} :catch_fd

    :cond_e6
    :goto_e6
    move-object v5, v6

    .line 473
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_8a

    .line 479
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catchall_e8
    move-exception v10

    :goto_e9
    if-eqz v4, :cond_ee

    .line 481
    :try_start_eb
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ee} :catch_101

    .line 484
    :cond_ee
    :goto_ee
    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->closeQuietly(Ljava/io/BufferedReader;)V

    .line 485
    if-eqz v1, :cond_f6

    .line 487
    :try_start_f3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_103

    .line 490
    :cond_f6
    :goto_f6
    throw v10

    .line 482
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catch_f7
    move-exception v11

    goto :goto_82

    .line 488
    :catch_f9
    move-exception v11

    goto :goto_8a

    .line 482
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    :catch_fb
    move-exception v11

    goto :goto_de

    .line 488
    :catch_fd
    move-exception v11

    goto :goto_e6

    .line 482
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_ff
    move-exception v11

    goto :goto_ca

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_101
    move-exception v11

    goto :goto_ee

    .line 488
    :catch_103
    move-exception v11

    goto :goto_f6

    .line 479
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "response":Ljava/lang/StringBuilder;
    .restart local v8    # "responseCode":I
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_105
    move-exception v10

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_e9

    .line 475
    .end local v7    # "response":Ljava/lang/StringBuilder;
    .end local v8    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_108
    move-exception v2

    goto :goto_ac
.end method

.method private sleepQuietly(J)V
    .registers 6
    .param p1, "ms"    # J

    .prologue
    .line 495
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 499
    :goto_3
    return-void

    .line 496
    :catch_4
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3
.end method

.method private urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    .line 339
    .end local p1    # "s":Ljava/lang/String;
    :goto_6
    return-object p1

    .line 338
    .restart local p1    # "s":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_6
.end method


# virtual methods
.method public getPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->resolvePlayUrl(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;

    move-result-object v0

    .line 155
    .local v0, "r":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public resolvePlayUrl(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    .registers 32
    .param p1, "songId"    # Ljava/lang/String;

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlCache:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 165
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlCache:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;

    .line 166
    .local v11, "hit":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;
    if-eqz v11, :cond_5a

    iget-wide v0, v11, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;->expireAt:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    cmp-long v22, v24, v26

    if-lez v22, :cond_5a

    .line 167
    const-string v22, "MusicClient"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "play url cache hit: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v5, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;

    invoke-direct {v5}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;-><init>()V

    .line 169
    .local v5, "cached":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    iget-object v0, v11, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    .line 170
    const/16 v22, 0x0

    move/from16 v0, v22

    iput-boolean v0, v5, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->captchaRequired:Z

    .line 171
    monitor-exit v23

    .line 261
    .end local v5    # "cached":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    :goto_59
    return-object v5

    .line 173
    :cond_5a
    monitor-exit v23
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_ad

    .line 177
    :try_start_5b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/music/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, "musicUrl":Ljava/lang/String;
    const-string v22, "MusicClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getPlayUrl music page: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 181
    .local v14, "musicHtml":Ljava/lang/String;
    if-eqz v14, :cond_a4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_b0

    .line 182
    :cond_a4
    const-string v22, "MusicClient"

    const-string v23, "getPlayUrl failed: empty music page"

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ab} :catch_1e0

    .line 183
    const/4 v5, 0x0

    goto :goto_59

    .line 173
    .end local v11    # "hit":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;
    .end local v14    # "musicHtml":Ljava/lang/String;
    .end local v15    # "musicUrl":Ljava/lang/String;
    :catchall_ad
    move-exception v22

    :try_start_ae
    monitor-exit v23
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v22

    .line 186
    .restart local v11    # "hit":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;
    .restart local v14    # "musicHtml":Ljava/lang/String;
    .restart local v15    # "musicUrl":Ljava/lang/String;
    :cond_b0
    :try_start_b0
    sget-object v22, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->PLAY_ID_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    .line 187
    .local v18, "playIdMatcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->find()Z

    move-result v22

    if-nez v22, :cond_c7

    .line 188
    const-string v22, "MusicClient"

    const-string v23, "getPlayUrl failed: no play_id found"

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v5, 0x0

    goto :goto_59

    .line 191
    :cond_c7
    const/16 v22, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    .line 192
    .local v17, "playId":Ljava/lang/String;
    const-string v22, "MusicClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "play_id: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "purpose"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "play"

    aput-object v25, v23, v24

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    .line 203
    .local v21, "rules":[[Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/member/common-play-url"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "apiUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_139
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2be

    aget-object v20, v21, v22

    .line 205
    .local v20, "rule":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v10, "form":Ljava/lang/StringBuilder;
    const-string v24, "id="

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_15a
    add-int/lit8 v24, v12, 0x1

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_195

    .line 208
    const-string v24, "&"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    .line 209
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    add-int/lit8 v25, v12, 0x1

    aget-object v25, v20, v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v12, v12, 0x2

    goto :goto_15a

    .line 213
    :cond_195
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v4, v1, v15, v2}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpPostForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "json":Ljava/lang/String;
    if-eqz v13, :cond_1ad

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_1b7

    .line 215
    :cond_1ad
    const-string v24, "MusicClient"

    const-string v25, "play-url rule failed (empty), next rule"

    invoke-static/range {v24 .. v25}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_1b4
    add-int/lit8 v22, v22, 0x1

    goto :goto_139

    .line 219
    :cond_1b7
    sget-object v24, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->CODE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 220
    .local v7, "codeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-nez v24, :cond_1fe

    .line 221
    const-string v24, "MusicClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "play-url: no code in response: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_1df} :catch_1e0

    goto :goto_1b4

    .line 259
    .end local v4    # "apiUrl":Ljava/lang/String;
    .end local v7    # "codeMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "form":Ljava/lang/StringBuilder;
    .end local v12    # "i":I
    .end local v13    # "json":Ljava/lang/String;
    .end local v14    # "musicHtml":Ljava/lang/String;
    .end local v15    # "musicUrl":Ljava/lang/String;
    .end local v17    # "playId":Ljava/lang/String;
    .end local v18    # "playIdMatcher":Ljava/util/regex/Matcher;
    .end local v20    # "rule":[Ljava/lang/String;
    .end local v21    # "rules":[[Ljava/lang/String;
    :catch_1e0
    move-exception v9

    .line 260
    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "MusicClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getPlayUrl error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v5, 0x0

    goto/16 :goto_59

    .line 224
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "apiUrl":Ljava/lang/String;
    .restart local v7    # "codeMatcher":Ljava/util/regex/Matcher;
    .restart local v10    # "form":Ljava/lang/StringBuilder;
    .restart local v12    # "i":I
    .restart local v13    # "json":Ljava/lang/String;
    .restart local v14    # "musicHtml":Ljava/lang/String;
    .restart local v15    # "musicUrl":Ljava/lang/String;
    .restart local v17    # "playId":Ljava/lang/String;
    .restart local v18    # "playIdMatcher":Ljava/util/regex/Matcher;
    .restart local v20    # "rule":[Ljava/lang/String;
    .restart local v21    # "rules":[[Ljava/lang/String;
    :cond_1fe
    const/16 v24, 0x1

    :try_start_200
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "code":I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v6, v0, :cond_240

    .line 228
    const-string v22, "MusicClient"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "play-url: captcha required for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v8, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;-><init>()V

    .line 230
    .local v8, "cr":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    .line 231
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v8, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->captchaRequired:Z

    move-object v5, v8

    .line 232
    goto/16 :goto_59

    .line 234
    .end local v8    # "cr":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    :cond_240
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v6, v0, :cond_268

    .line 235
    const-string v24, "MusicClient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "play-url: code="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", next rule"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 239
    :cond_268
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->extractJsonUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 240
    .local v19, "playUrl":Ljava/lang/String;
    if-nez v19, :cond_279

    .line 241
    const-string v24, "MusicClient"

    const-string v25, "play-url: code=1 but no url"

    invoke-static/range {v24 .. v25}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b4

    .line 245
    :cond_279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlCache:Ljava/util/Map;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_280
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_280} :catch_1e0

    .line 246
    :try_start_280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->urlCache:Ljava/util/Map;

    move-object/from16 v22, v0

    new-instance v24, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/32 v28, 0x1b7740

    add-long v26, v26, v28

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;-><init>(Ljava/lang/String;J)V

    .line 246
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    monitor-exit v23
    :try_end_2a4
    .catchall {:try_start_280 .. :try_end_2a4} :catchall_2bb

    .line 250
    :try_start_2a4
    new-instance v16, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;

    invoke-direct/range {v16 .. v16}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;-><init>()V

    .line 251
    .local v16, "ok":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    .line 252
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->captchaRequired:Z
    :try_end_2b7
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_2b7} :catch_1e0

    move-object/from16 v5, v16

    .line 253
    goto/16 :goto_59

    .line 248
    .end local v16    # "ok":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    :catchall_2bb
    move-exception v22

    :try_start_2bc
    monitor-exit v23
    :try_end_2bd
    .catchall {:try_start_2bc .. :try_end_2bd} :catchall_2bb

    :try_start_2bd
    throw v22

    .line 256
    .end local v6    # "code":I
    .end local v7    # "codeMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "form":Ljava/lang/StringBuilder;
    .end local v12    # "i":I
    .end local v13    # "json":Ljava/lang/String;
    .end local v19    # "playUrl":Ljava/lang/String;
    .end local v20    # "rule":[Ljava/lang/String;
    :cond_2be
    const-string v22, "MusicClient"

    const-string v23, "getPlayUrl failed: all rules exhausted"

    invoke-static/range {v22 .. v23}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2c5} :catch_1e0

    .line 257
    const/4 v5, 0x0

    goto/16 :goto_59
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
    .line 96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;>;"
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->baseUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/s/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {p1, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, "urlStr":Ljava/lang/String;
    const-string v10, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "search url: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v9}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "html":Ljava/lang/String;
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 104
    :cond_48
    const-string v10, "MusicClient"

    const-string v11, "search failed: empty response"

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "html":Ljava/lang/String;
    .end local v9    # "urlStr":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return-object v5

    .line 108
    .restart local v1    # "html":Ljava/lang/String;
    .restart local v9    # "urlStr":Ljava/lang/String;
    :cond_50
    sget-object v10, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->MUSIC_LINK_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 110
    .local v4, "matcher":Ljava/util/regex/Matcher;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v6, "seenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5b
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 112
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "id":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "title":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5b

    .line 117
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;

    invoke-direct {v3}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;-><init>()V

    .line 120
    .local v3, "item":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    iput-object v2, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    .line 123
    invoke-direct {p0, v8}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->htmlUnescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    const-string v10, " - "

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 126
    .local v7, "sep":I
    if-ltz v7, :cond_e3

    .line 127
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    .line 128
    add-int/lit8 v10, v7, 0x3

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    .line 134
    :goto_9e
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v10, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_5b

    goto/16 :goto_4f

    .line 130
    :cond_e3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    .line 131
    const-string v10, ""

    iput-object v10, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ed} :catch_ee

    goto :goto_9e

    .line 141
    .end local v1    # "html":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "item":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "seenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "sep":I
    .end local v8    # "title":Ljava/lang/String;
    .end local v9    # "urlStr":Ljava/lang/String;
    :catch_ee
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "MusicClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "search error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4f
.end method

.method public searchAndGetFirst(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    .registers 11
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 276
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;>;"
    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 277
    :cond_d
    const-string v6, "MusicClient"

    const-string v7, "searchAndGetFirst: no results"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_14
    return-object v4

    .line 281
    :cond_15
    const/4 v6, 0x5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 282
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    if-ge v1, v2, :cond_b4

    .line 283
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;

    .line 284
    .local v0, "candidate":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->id:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->resolvePlayUrl(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;

    move-result-object v3

    .line 286
    .local v3, "pr":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    if-nez v3, :cond_4c

    .line 287
    const-string v6, "MusicClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAndGetFirst: resolve failed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 290
    :cond_4c
    iget-boolean v6, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->captchaRequired:Z

    if-nez v6, :cond_54

    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    if-nez v6, :cond_6f

    .line 291
    :cond_54
    const-string v6, "MusicClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAndGetFirst: captcha needed, try next: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 295
    :cond_6f
    new-instance v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    invoke-direct {v4}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;-><init>()V

    .line 296
    .local v4, "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->name:Ljava/lang/String;

    iput-object v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->name:Ljava/lang/String;

    .line 297
    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->artist:Ljava/lang/String;

    iput-object v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    .line 298
    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->album:Ljava/lang/String;

    iput-object v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->album:Ljava/lang/String;

    .line 299
    iget-object v6, v3, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;->url:Ljava/lang/String;

    iput-object v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->playUrl:Ljava/lang/String;

    .line 300
    iget-wide v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->duration:J

    iput-wide v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->duration:J

    .line 301
    iget-object v6, v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;->picUrl:Ljava/lang/String;

    iput-object v6, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->picUrl:Ljava/lang/String;

    .line 302
    const-string v6, "MusicClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAndGetFirst ok: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 306
    .end local v0    # "candidate":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicSearchResult;
    .end local v3    # "pr":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
    .end local v4    # "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    :cond_b4
    const-string v6, "MusicClient"

    const-string v7, "searchAndGetFirst: no playable candidate"

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14
.end method
