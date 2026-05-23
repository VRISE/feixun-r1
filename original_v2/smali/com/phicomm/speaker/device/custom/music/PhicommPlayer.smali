.class public Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/CommonPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;
    }
.end annotation


# static fields
.field public static final MESSAGE_CURRENT_ITEM:I = 0x8

.field public static final MESSAGE_CURRENT_PLAY_MODE:I = 0xd

.field public static final MESSAGE_PAUSE:I = 0x2

.field public static final MESSAGE_PLAY:I = 0x1

.field public static final MESSAGE_PLAY_ERROR:I = 0xe

.field public static final MESSAGE_PLAY_LIST_WITH_INDEX:I = 0xf

.field public static final MESSAGE_PLAY_MODE:I = 0x7

.field public static final MESSAGE_PLAY_NEW:I = 0x9

.field public static final MESSAGE_PLAY_NEXT:I = 0x6

.field public static final MESSAGE_PLAY_PREV:I = 0x5

.field public static final MESSAGE_PLAY_SPECIFIED:I = 0xb

.field public static final MESSAGE_QUERY_ITEM_LIST:I = 0x13

.field public static final MESSAGE_RESUME:I = 0x3

.field public static final MESSAGE_STOP:I = 0x4

.field public static final MESSAGE_SYNCHRONIZE_PLAYER:I = 0x10

.field public static final MESSAGE_UDID:I = 0x11

.field private static final PAGE_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhicommPlayer"

.field private static final TYPE_AUDIO:I = 0x1

.field private static final TYPE_MUSIC:I = 0x0

.field private static final TYPE_NEWS:I = 0x2

.field private static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

.field private errorTimes:I

.field public mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

.field private mCurrentPage:I

.field private mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field private mDevicePlayingType:Ljava/lang/String;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMessageManager:Landroid/os/MessageDispatchManager;

.field private final mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

.field private playState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "udid"    # Ljava/lang/String;
    .param p3, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/16 v3, 0x11

    const/16 v2, 0x8

    const/4 v4, 0x4

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 69
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 70
    const-string v0, "none"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 79
    const-string v0, "PhicommPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PhicommPlayer: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMainHandler:Landroid/os/Handler;

    .line 82
    invoke-static {p1}, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->messageCenter(Landroid/content/Context;)Landroid/os/MessageDispatchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    .line 83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    new-instance v5, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;)V

    invoke-virtual {v0, v5, v2}, Landroid/os/MessageDispatchManager;->registerMessageReceiver(Landroid/os/MessageDispatchManager$MessageReceiver;I)V

    .line 84
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-static {p2}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v7

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 86
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    if-ne v0, v1, :cond_7e

    .line 87
    const-string v0, "PhicommPlayer"

    const-string v1, "onSuccess: get device state success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v1, v6, v2}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 90
    :cond_7e
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Lcom/unisound/vui/engine/ANTEngine;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentMode(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->handlePlayError(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizePlayerInfo(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->queryPlayItem(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->checkResponseSuccess(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    return p1
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    return p1
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V

    return-void
.end method

.method static synthetic access$702(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p1, "x1"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V

    return-void
.end method

.method private buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)",
            "Lcom/google/gson/JsonArray;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    .line 350
    .local v1, "musicJsonArr":Lcom/google/gson/JsonArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 351
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 352
    .local v0, "musicJson":Lcom/google/gson/JsonObject;
    const-string v4, "itemType"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 353
    const-string v4, "title"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v4, "url"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "itemId"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v4, "album"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v4, "artist"

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_9

    .line 360
    .end local v0    # "musicJson":Lcom/google/gson/JsonObject;
    .end local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_5c
    return-object v1
.end method

.method private checkResponseSuccess(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 447
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelableUtil;

    invoke-virtual {v0}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_18

    .line 448
    check-cast p1, Landroid/os/ParcelableUtil;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 451
    :goto_17
    return v0

    .line 450
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_18
    const-string v0, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illeage arugument!current obj is not boolean but"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/os/ParcelableUtil;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private handlePlayError(Landroid/os/ParcelableUtil;)V
    .registers 4
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V

    .line 485
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 486
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V

    .line 487
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V

    .line 488
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    .line 489
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1e

    .line 490
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playNext()V

    .line 491
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resume()V

    .line 495
    :goto_1d
    return-void

    .line 494
    :cond_1e
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doFinishAllInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_1d
.end method

.method private onStateChanged()V
    .registers 3

    .prologue
    .line 616
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 617
    const-string v0, "PhicommPlayer"

    const-string v1, "current device status is bluetooth, ignore play status changed event"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_12
    :goto_12
    return-void

    .line 618
    :cond_13
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    if-eqz v0, :cond_12

    .line 619
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    iget v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;->onPlayStateChanged(I)V

    goto :goto_12
.end method

.method private parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .registers 3
    .param p1, "playMode"    # I

    .prologue
    .line 465
    packed-switch p1, :pswitch_data_10

    .line 473
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    :goto_5
    return-object v0

    .line 467
    :pswitch_6
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_5

    .line 469
    :pswitch_9
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_5

    .line 471
    :pswitch_c
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    goto :goto_5

    .line 465
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private parseCurrentState(I)I
    .registers 3
    .param p1, "playState2"    # I

    .prologue
    .line 574
    packed-switch p1, :pswitch_data_a

    .line 577
    const/4 v0, 0x1

    .line 581
    :goto_4
    return v0

    .line 579
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_4

    .line 581
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 574
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I
    .registers 4
    .param p1, "type"    # Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    .prologue
    .line 586
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 594
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 588
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 590
    :pswitch_f
    const/4 v0, 0x0

    goto :goto_c

    .line 592
    :pswitch_11
    const/4 v0, 0x2

    goto :goto_c

    .line 586
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method private queryPlayItem(I)V
    .registers 8
    .param p1, "page"    # I

    .prologue
    .line 367
    const/4 v3, 0x0

    .line 368
    .local v3, "z":Z
    const/4 v2, -0x1

    .line 369
    .local v2, "type":I
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 370
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_38

    .line 386
    const/4 v3, 0x1

    .line 389
    :goto_c
    if-eqz v3, :cond_36

    .line 390
    const/4 v2, 0x2

    .line 394
    :goto_f
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1d

    .line 395
    move v0, v2

    .line 396
    .local v0, "finalType":I
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;

    invoke-direct {v5, p0, v0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;II)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    .end local v0    # "finalType":I
    :cond_1d
    return-void

    .line 372
    :sswitch_1e
    const-string v4, "news"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 373
    const/4 v3, 0x0

    .line 374
    goto :goto_c

    .line 376
    :cond_28
    const/4 v3, 0x1

    .line 377
    goto :goto_c

    .line 379
    :sswitch_2a
    const-string v4, "audio"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 380
    const/4 v3, 0x1

    .line 381
    goto :goto_c

    .line 383
    :cond_34
    const/4 v3, 0x1

    .line 384
    goto :goto_c

    .line 392
    :cond_36
    const/4 v2, 0x3

    goto :goto_f

    .line 370
    :sswitch_data_38
    .sparse-switch
        0x338ad3 -> :sswitch_1e
        0x58d9bd6 -> :sswitch_2a
    .end sparse-switch
.end method

.method private requestPhicommPlayMode()V
    .registers 6

    .prologue
    .line 478
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0xd

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 479
    return-void
.end method

.method private resetPage()V
    .registers 2

    .prologue
    .line 624
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 625
    return-void
.end method

.method private setCircleMode()V
    .registers 6

    .prologue
    .line 604
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setCircleMode 7-2"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 606
    return-void
.end method

.method private setRandomMode()V
    .registers 6

    .prologue
    .line 599
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setRandomMode 7-1"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 601
    return-void
.end method

.method private setSingleMode()V
    .registers 6

    .prologue
    .line 609
    const-string v0, "PhicommPlayer"

    const-string v1, "sendMessage MSG_TYPE_PLAYER setSingleMode 7-3"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 611
    return-void
.end method

.method private synchronizeAuidoList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    const/4 v6, 0x0

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v1, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/MusicItem;

    .line 548
    .local v2, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v0, Lnluparser/scheme/AudioResult$Music;

    invoke-direct {v0}, Lnluparser/scheme/AudioResult$Music;-><init>()V

    .line 549
    .local v0, "audio":Lnluparser/scheme/AudioResult$Music;
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setId(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setUrl(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/AudioResult$Music;->setTitle(Ljava/lang/String;)V

    .line 552
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 554
    .end local v0    # "audio":Lnluparser/scheme/AudioResult$Music;
    .end local v2    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    :cond_34
    invoke-static {v1, v6, v6}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 555
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 556
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 557
    return-void
.end method

.method private synchronizeMusicList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/MusicItem;

    .line 532
    .local v1, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v0, Lnluparser/scheme/MusicResult$Music;

    invoke-direct {v0}, Lnluparser/scheme/MusicResult$Music;-><init>()V

    .line 533
    .local v0, "music":Lnluparser/scheme/MusicResult$Music;
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setId(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setUrl(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setTitle(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setAlbum(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/MusicItem;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnluparser/scheme/MusicResult$Music;->setArtist(Ljava/lang/String;)V

    .line 538
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 540
    .end local v0    # "music":Lnluparser/scheme/MusicResult$Music;
    .end local v1    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    :cond_41
    invoke-static {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 541
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 542
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    return-void
.end method

.method private synchronizeNewsList(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v2, "newsList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NewsResult$NewsBean;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/MusicItem;

    .line 562
    .local v0, "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    new-instance v1, Lnluparser/scheme/NewsResult$NewsBean;

    invoke-direct {v1}, Lnluparser/scheme/NewsResult$NewsBean;-><init>()V

    .line 563
    .local v1, "newsBean":Lnluparser/scheme/NewsResult$NewsBean;
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setId(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setAudioUrl(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lnluparser/scheme/NewsResult$NewsBean;->setTitle(Ljava/lang/String;)V

    .line 566
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 568
    .end local v0    # "musicItem":Lcom/unisound/ant/device/bean/MusicItem;
    .end local v1    # "newsBean":Lnluparser/scheme/NewsResult$NewsBean;
    :cond_33
    invoke-static {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptNews(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 569
    .local v3, "playItemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 570
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 571
    return-void
.end method

.method private synchronizePlayList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/ant/device/bean/MusicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/MusicItem;->getItemType()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 525
    :goto_e
    return-void

    .line 516
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeMusicList(Ljava/util/List;)V

    goto :goto_e

    .line 519
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeAuidoList(Ljava/util/List;)V

    goto :goto_e

    .line 522
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizeNewsList(Ljava/util/List;)V

    goto :goto_e

    .line 514
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method private synchronizePlayerInfo(Landroid/os/ParcelableUtil;)V
    .registers 7
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 500
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncPlayerInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;

    invoke-static {v2, v3}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;

    .line 502
    .local v0, "phicommPlayerInfo":Lcom/unisound/ant/device/bean/PhicommPlayerInfo;
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayList()Ljava/util/List;

    move-result-object v1

    .line 503
    .local v1, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3d

    if-eqz v1, :cond_3d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_45

    .line 504
    :cond_3d
    const-string v2, "PhicommPlayer"

    const-string v3, "empty player info, do not sync, return"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_44
    return-void

    .line 507
    :cond_45
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizePlayList(Ljava/util/List;)V

    .line 508
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 509
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 510
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommPlayerInfo;->getPlayState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentState(I)I

    move-result v2

    iput v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    goto :goto_44
.end method

.method private updateCurrentItem(Landroid/os/ParcelableUtil;)V
    .registers 8
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 431
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;

    invoke-direct {v5, p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    invoke-virtual {v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 432
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4b

    .line 433
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-virtual {v3}, Lcom/unisound/ant/device/bean/MusicItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "itemId":Ljava/lang/String;
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 435
    .local v2, "mCurrentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 436
    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 441
    .end local v0    # "itemId":Ljava/lang/String;
    .end local v2    # "mCurrentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_4b
    const-string v3, "PhicommPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update currentItem, item is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private updateCurrentMode(Landroid/os/ParcelableUtil;)V
    .registers 6
    .param p1, "obj"    # Landroid/os/ParcelableUtil;

    .prologue
    .line 457
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCurrentMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/unisound/ant/device/bean/PhicommModeInfo;

    invoke-static {v1, v2}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/bean/PhicommModeInfo;

    .line 459
    .local v0, "modeInfo":Lcom/unisound/ant/device/bean/PhicommModeInfo;
    if-eqz v0, :cond_36

    .line 460
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/PhicommModeInfo;->getPlayMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseCurrentMode(I)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    move-result-object v1

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 462
    :cond_36
    return-void
.end method

.method private updateDevicePlayingType()V
    .registers 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_28

    .line 410
    sget-object v1, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_38

    .line 421
    const-string v0, "none"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 425
    :cond_28
    :goto_28
    return-void

    .line 412
    :pswitch_29
    const-string v0, "audio"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_28

    .line 415
    :pswitch_2e
    const-string v0, "music"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_28

    .line 418
    :pswitch_33
    const-string v0, "news"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    goto :goto_28

    .line 410
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public addCollectMusic(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 260
    .local v0, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 261
    const-string v1, "PhicommPlayer"

    const-string v2, "addCollectMusic: true"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 266
    .end local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_27
    return-void
.end method

.method public appendPlayList(IILjava/util/List;)V
    .registers 10
    .param p1, "page"    # I
    .param p2, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appendPlayList: page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", itemList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    if-eqz p3, :cond_9d

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9d

    .line 310
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 311
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    invoke-direct {p0, p3}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 313
    .local v0, "musicJson":Lcom/google/gson/JsonArray;
    iget v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    if-le p1, v2, :cond_9e

    .line 314
    iput p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    .line 318
    :goto_3e
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 319
    .local v1, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v2, "pageIndex"

    iget v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 320
    const-string v2, "totalPage"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 321
    const-string v2, "curItemId"

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v3}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "itemList"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 323
    const-string v2, "PhicommPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data success, send item list to phicomm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v3, 0x4

    const/16 v4, 0x13

    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(IILandroid/os/Parcelable;)V

    .line 326
    .end local v0    # "musicJson":Lcom/google/gson/JsonArray;
    .end local v1    # "musicJsonObj":Lcom/google/gson/JsonObject;
    :cond_9d
    return-void

    .line 316
    .restart local v0    # "musicJson":Lcom/google/gson/JsonArray;
    :cond_9e
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPage:I

    goto :goto_3e
.end method

.method public batchDeleteCollectMusic(Ljava/lang/String;)V
    .registers 8
    .param p1, "ids"    # Ljava/lang/String;

    .prologue
    .line 280
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v4, v3

    if-ge v0, v4, :cond_32

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, "j":I
    :goto_b
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_16

    .line 281
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 287
    :cond_16
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 288
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 289
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    goto :goto_13

    .line 292
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    .line 293
    goto :goto_b

    .line 295
    .end local v1    # "j":I
    .end local v2    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_32
    return-void
.end method

.method public collect()V
    .registers 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 201
    return-void
.end method

.method public deleteCollectMusic(Ljava/lang/String;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 271
    .local v0, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 272
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->setCollected(Z)V

    .line 276
    .end local v0    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_20
    return-void
.end method

.method public getBufferPercent()I
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    return-object v0
.end method

.method public getCurrentPlayMode()Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentPlayMode:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    return-object v0
.end method

.method public getCurrentPosition()J
    .registers 3

    .prologue
    .line 219
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDevicePlayingType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayStatus()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    return v0
.end method

.method public getPlayWhenReady()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 3

    .prologue
    .line 229
    iget v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x2

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 153
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->pause(Landroid/os/MessageDispatchManager;)V

    .line 154
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->play(II)V

    .line 100
    return-void
.end method

.method public play(I)V
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 253
    const-string v0, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:start to play index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 255
    return-void
.end method

.method public play(II)V
    .registers 9
    .param p1, "currentPage"    # I
    .param p2, "totalPage"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 105
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 106
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    .local v0, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v1, "itemList"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 108
    const-string v2, "asrResult"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v1, "pageIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 110
    const-string v1, "totalPage"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 111
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 113
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 114
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .registers 8
    .param p1, "asrResult"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 119
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 120
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 121
    .local v0, "musicJsonObj":Lcom/google/gson/JsonObject;
    const-string v1, "itemList"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->buildMusicJson(Ljava/util/List;)Lcom/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 122
    const-string v1, "asrResult"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 125
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 126
    return-void
.end method

.method public play(Ljava/util/List;I)V
    .registers 4
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->play(Ljava/util/List;III)V

    .line 131
    return-void
.end method

.method public play(Ljava/util/List;III)V
    .registers 15
    .param p2, "index"    # I
    .param p3, "currentPage"    # I
    .param p4, "totalPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const-string v0, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_9c

    if-ltz p2, :cond_9c

    .line 137
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->resetPage()V

    .line 138
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v7, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_52
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 143
    .local v8, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    new-instance v0, Lcom/unisound/ant/device/bean/MusicItem;

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->parseItemType(Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;)I

    move-result v4

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getAlbum()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/unisound/ant/device/bean/MusicItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    .line 145
    .end local v8    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    :cond_83
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    const/4 v1, 0x4

    const/16 v2, 0xf

    const/4 v3, -0x1

    new-instance v4, Lcom/unisound/ant/device/bean/PhicommMusicInfo;

    invoke-direct {v4, p2, v7, p3, p4}, Lcom/unisound/ant/device/bean/PhicommMusicInfo;-><init>(ILjava/util/List;II)V

    invoke-static {v4}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/MessageDispatchManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 146
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 148
    .end local v7    # "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/ant/device/bean/MusicItem;>;"
    :cond_9c
    return-void
.end method

.method public playNext()V
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playNext(Landroid/os/MessageDispatchManager;)V

    .line 176
    return-void
.end method

.method public playPrev()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->playPrev(Landroid/os/MessageDispatchManager;)V

    .line 171
    return-void
.end method

.method public registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V
    .registers 2
    .param p1, "callback2"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->callback:Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;

    .line 245
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 180
    return-void
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x3

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->resume(Landroid/os/MessageDispatchManager;)V

    .line 160
    return-void
.end method

.method public seekTo(J)V
    .registers 3
    .param p1, "position"    # J

    .prologue
    .line 205
    return-void
.end method

.method public setCurrentPlayMode(Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;)V
    .registers 4
    .param p1, "currentPlayMode"    # Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .prologue
    .line 184
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    invoke-virtual {p1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 195
    :goto_b
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->requestPhicommPlayMode()V

    .line 196
    return-void

    .line 186
    :pswitch_f
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setRandomMode()V

    goto :goto_b

    .line 189
    :pswitch_13
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setSingleMode()V

    goto :goto_b

    .line 192
    :pswitch_17
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->setCircleMode()V

    goto :goto_b

    .line 184
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public setDevicePlayingType(Ljava/lang/String;)V
    .registers 2
    .param p1, "devicePlayingType"    # Ljava/lang/String;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setPlayList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 304
    :cond_1b
    return-void
.end method

.method public setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V
    .registers 2
    .param p1, "renderer"    # Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;

    .prologue
    .line 249
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I

    .line 165
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mMessageManager:Landroid/os/MessageDispatchManager;

    invoke-static {v0}, Lcom/phicomm/speaker/device/utils/PhicommPlayerUtils;->stop(Landroid/os/MessageDispatchManager;)V

    .line 166
    return-void
.end method
