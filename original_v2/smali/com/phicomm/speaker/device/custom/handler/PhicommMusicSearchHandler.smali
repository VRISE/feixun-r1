.class public Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommMusicSearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommMusicSearch"


# instance fields
.field private currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

.field private isPlaying:Z

.field private mainHandler:Landroid/os/Handler;

.field private musicClient:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->isPlaying:Z

    .line 50
    const-string v0, "session_music"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->sessionName:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;

    invoke-direct {v0}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->musicClient:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->mainHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;
    .param p1, "x1"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->searchAndPlay(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    return-void
.end method

.method private exit()V
    .registers 2

    .prologue
    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_10

    .line 333
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->reset()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    .line 335
    return-void

    .line 332
    :catch_10
    move-exception v0

    goto :goto_9
.end method

.method private isMusicIntent(Ljava/lang/String;)Z
    .registers 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 133
    :cond_d
    :goto_d
    return v4

    .line 107
    :cond_e
    const/16 v6, 0xd

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "\u4e0d\u8981"

    aput-object v6, v3, v4

    const-string v6, "\u522b"

    aput-object v6, v3, v5

    const-string v6, "\u505c\u6b62"

    aput-object v6, v3, v9

    const-string v6, "\u505c\u4e86"

    aput-object v6, v3, v10

    const-string v6, "\u7ed3\u675f"

    aput-object v6, v3, v11

    const/4 v6, 0x5

    const-string v7, "\u5173\u6389"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "\u4e0d\u8981\u5531"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string v7, "\u4e0d\u8981\u653e"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string v7, "\u522b\u5531"

    aput-object v7, v3, v6

    const/16 v6, 0x9

    const-string v7, "\u522b\u653e"

    aput-object v7, v3, v6

    const/16 v6, 0xa

    const-string v7, "\u4e0d\u8981\u542c"

    aput-object v7, v3, v6

    const/16 v6, 0xb

    const-string v7, "\u522b\u542c"

    aput-object v7, v3, v6

    const/16 v6, 0xc

    const-string v7, "\u4e0d\u8981\u64ad\u653e"

    aput-object v7, v3, v6

    .line 111
    .local v3, "negativeKeywords":[Ljava/lang/String;
    array-length v7, v3

    move v6, v4

    :goto_55
    if-ge v6, v7, :cond_85

    aget-object v2, v3, v6

    .line 112
    .local v2, "neg":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 113
    const-string v5, "PhicommMusicSearch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMusicIntent: \u5305\u542b\u5426\u5b9a\u8bcd \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', \u6392\u9664: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 111
    :cond_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_55

    .line 119
    .end local v2    # "neg":Ljava/lang/String;
    :cond_85
    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "\u64ad\u653e"

    aput-object v6, v1, v4

    const-string v6, "\u653e\u4e00\u9996"

    aput-object v6, v1, v5

    const-string v6, "\u6765\u4e00\u9996"

    aput-object v6, v1, v9

    const-string v6, "\u6765\u4e00\u4e2a"

    aput-object v6, v1, v10

    const-string v6, "\u6211\u60f3\u542c"

    aput-object v6, v1, v11

    const/4 v6, 0x5

    const-string v7, "\u5531\u4e00"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "\u542c\u97f3\u4e50"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "\u542c\u6b4c"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "\u653e\u6b4c"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "\u653e\u97f3\u4e50"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "\u6765\u70b9\u97f3\u4e50"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "\u653e\u4e2a\u6b4c"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, "\u7ed9\u6211\u5531"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, "\u5531\u9996"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, "\u5531\u6b4c"

    aput-object v7, v1, v6

    .line 125
    .local v1, "musicKeywords":[Ljava/lang/String;
    array-length v7, v1

    move v6, v4

    :goto_d8
    if-ge v6, v7, :cond_d

    aget-object v0, v1, v6

    .line 127
    .local v0, "keyword":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 128
    const-string v4, "PhicommMusicSearch"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMusicIntent: \u5339\u914d\u97f3\u4e50\u5173\u952e\u8bcd \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 129
    goto/16 :goto_d

    .line 125
    :cond_107
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8
.end method

.method private parseKeyword(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .registers 16
    .param p1, "evt"    # Lnluparser/scheme/NLU;

    .prologue
    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v3, "keyword":Ljava/lang/StringBuilder;
    :try_start_5
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v11

    if-eqz v11, :cond_57

    .line 172
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v11

    invoke-virtual {v11}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v6

    .line 173
    .local v6, "raw":Lnluparser/scheme/Result;
    instance-of v11, v6, Lnluparser/scheme/MusicResult;

    if-eqz v11, :cond_57

    .line 174
    move-object v0, v6

    check-cast v0, Lnluparser/scheme/MusicResult;

    move-object v7, v0

    .line 177
    .local v7, "result":Lnluparser/scheme/MusicResult;
    invoke-virtual {v7}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-eqz v5, :cond_57

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_57

    .line 179
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnluparser/scheme/MusicResult$Music;

    .line 182
    .local v4, "music":Lnluparser/scheme/MusicResult$Music;
    invoke-virtual {v4}, Lnluparser/scheme/MusicResult$Music;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, "title":Ljava/lang/String;
    if-eqz v10, :cond_3d

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3d

    .line 184
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_3d
    invoke-virtual {v4}, Lnluparser/scheme/MusicResult$Music;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "artist":Ljava/lang/String;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_57

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_54

    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_57} :catch_7e

    .line 200
    .end local v1    # "artist":Ljava/lang/String;
    .end local v4    # "music":Lnluparser/scheme/MusicResult$Music;
    .end local v5    # "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .end local v6    # "raw":Lnluparser/scheme/Result;
    .end local v7    # "result":Lnluparser/scheme/MusicResult;
    .end local v10    # "title":Ljava/lang/String;
    :cond_57
    :goto_57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "result":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7d

    .line 204
    :try_start_65
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, "text":Ljava/lang/String;
    if-eqz v9, :cond_7d

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7d

    .line 207
    const-string v11, "^(\u64ad\u653e|\u653e|\u5531|\u6765\u4e00\u9996|\u6765\u4e00\u4e2a|\u6211\u60f3\u542c|\u6211\u60f3\u5531)"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7c} :catch_98

    move-result-object v7

    .line 214
    .end local v9    # "text":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-object v7

    .line 196
    .end local v7    # "result":Ljava/lang/String;
    :catch_7e
    move-exception v8

    .line 197
    .local v8, "t":Ljava/lang/Throwable;
    const-string v11, "PhicommMusicSearch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parseKeyword error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 209
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_98
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "PhicommMusicSearch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getText fallback failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method private playMusic(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V
    .registers 8
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p2, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    :try_start_0
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    iget-object v1, v2, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->playUrl:Ljava/lang/String;

    .line 262
    .local v1, "playUrl":Ljava/lang/String;
    :goto_8
    if-nez v1, :cond_12

    .line 263
    const-string v2, "\u62b1\u6b49\uff0c\u64ad\u653e\u5730\u5740\u65e0\u6548"

    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 277
    .end local v1    # "playUrl":Ljava/lang/String;
    :goto_f
    return-void

    .line 261
    :cond_10
    const/4 v1, 0x0

    goto :goto_8

    .line 267
    .restart local v1    # "playUrl":Ljava/lang/String;
    :cond_12
    const-string v2, "PhicommMusicSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v2

    const-string v3, "music_search"

    invoke-virtual {v2, v1, v3}, Lcom/unisound/vui/common/media/UniMediaPlayer;->playUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->isPlaying:Z

    .line 272
    const-string v2, "PhicommMusicSearch"

    const-string v3, "music playing started"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3e

    goto :goto_f

    .line 274
    .end local v1    # "playUrl":Ljava/lang/String;
    :catch_3e
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhicommMusicSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playMusic error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private searchAndPlay(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 9
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "keyword"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v3, "PhicommMusicSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAndPlay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :try_start_18
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->musicClient:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;

    invoke-virtual {v3, p2}, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;->searchAndGetFirst(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    move-result-object v1

    .line 227
    .local v1, "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    if-nez v1, :cond_2d

    .line 228
    const-string v3, "PhicommMusicSearch"

    const-string v4, "search failed"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v3, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u76f8\u5173\u6b4c\u66f2"

    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 251
    .end local v1    # "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    :goto_2c
    return-void

    .line 233
    .restart local v1    # "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    :cond_2d
    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    .line 234
    const-string v3, "PhicommMusicSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->playUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 238
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5373\u5c06\u64ad\u653e "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "ttsText":Ljava/lang/String;
    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    if-eqz v3, :cond_a7

    iget-object v3, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff0c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6f14\u5531"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    :cond_a7
    invoke-interface {p1, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_aa} :catch_ab

    goto :goto_2c

    .line 247
    .end local v1    # "result":Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;
    .end local v2    # "ttsText":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PhicommMusicSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchAndPlay error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    const-string v3, "\u62b1\u6b49\uff0c\u64ad\u653e\u5931\u8d25"

    invoke-interface {p1, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method private stopMusic()V
    .registers 3

    .prologue
    .line 314
    const-string v0, "PhicommMusicSearch"

    const-string v1, "stopMusic"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->isPlaying:Z

    if-eqz v0, :cond_15

    .line 317
    :try_start_b
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_19

    .line 319
    :goto_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->isPlaying:Z

    .line 321
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    .line 322
    return-void

    .line 318
    :catch_19
    move-exception v0

    goto :goto_12
.end method


# virtual methods
.method public bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method public acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .registers 11
    .param p1, "evt"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 65
    if-nez p1, :cond_5

    .line 93
    :goto_4
    return v5

    .line 66
    :cond_5
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "service":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "text":Ljava/lang/String;
    const-string v7, "cn.yunzhisheng.music"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 70
    .local v1, "isMusic":Z
    const-string v7, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    .local v2, "isSettingMp":Z
    if-nez v1, :cond_1d

    if-eqz v2, :cond_47

    .line 74
    :cond_1d
    const-string v5, "PhicommMusicSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptInboundEvent0: service="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", accept=true"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 75
    goto :goto_4

    .line 79
    :cond_47
    const-string v7, "cn.yunzhisheng.chat"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    .local v0, "isChat":Z
    if-eqz v0, :cond_91

    if-eqz v4, :cond_91

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_91

    .line 82
    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->isMusicIntent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 83
    const-string v5, "PhicommMusicSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptInboundEvent0: chat \u610f\u56fe\u5305\u542b\u97f3\u4e50\u5173\u952e\u8bcd,\u62e6\u622a: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 84
    goto :goto_4

    .line 87
    :cond_77
    const-string v6, "PhicommMusicSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptInboundEvent0: chat \u610f\u56fe\u4e0d\u5305\u542b\u97f3\u4e50\u5173\u952e\u8bcd,\u653e\u884c: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 92
    :cond_91
    const-string v6, "PhicommMusicSearch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acceptInboundEvent0: service="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", accept=false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->eventReceived:Z

    if-eqz v0, :cond_19

    .line 298
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 301
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->stopMusic()V

    .line 303
    const-string v0, "doOneShotInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 304
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 306
    :cond_16
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->reset()V

    .line 308
    :cond_19
    return-void
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 7
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->parseKeyword(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "keyword":Ljava/lang/String;
    const-string v1, "PhicommMusicSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music search keyword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 151
    :cond_2b
    const-string v1, "\u62b1\u6b49\uff0c\u6ca1\u6709\u542c\u5230\u6b4c\u66f2\u540d\u79f0"

    invoke-interface {p2, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 162
    :goto_30
    return-void

    .line 156
    :cond_31
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 161
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_30
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 58
    const/16 v0, 0x136

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->setPriority(I)V

    .line 59
    return-void
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 139
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 281
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->eventReceived:Z

    if-nez v1, :cond_9

    .line 282
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v1

    .line 292
    :goto_8
    return v1

    .line 286
    :cond_9
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->currentResult:Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;

    iget-object v1, v1, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$MusicPlayResult;->playUrl:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v0, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    invoke-direct {p0, p1, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->playMusic(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/util/List;)V

    .line 292
    .end local v0    # "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    :goto_1b
    const/4 v1, 0x1

    goto :goto_8

    .line 290
    :cond_1d
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->exit()V

    goto :goto_1b
.end method
