.class public Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommExternalMusicHandler.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;",
        "Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CLOSE:I

.field private final EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final NEXT:I

.field private final PAUSE:I

.field private final PLAY:I

.field private final PREV:I

.field private final SETTING_MP:I

.field private final STOP:I

.field private currentWakeupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

.field private mContext:Landroid/content/Context;

.field private final mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

.field private mIsExternMode:Z

.field private serviceType:I

.field private settingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;Landroid/content/Context;)V
    .registers 10
    .param p1, "commonPlayer"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 46
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "EMPTY_RESULT"

    .line 47
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    .line 48
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "MUSIC_STATUS_PAUSE"

    .line 49
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    .line 50
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "MUSIC_STATUS_STOP"

    .line 51
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    .line 56
    iput v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->SETTING_MP:I

    .line 61
    iput v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PREV:I

    .line 62
    iput v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->NEXT:I

    .line 63
    iput v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PLAY:I

    .line 64
    iput v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PAUSE:I

    .line 65
    iput v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->STOP:I

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->CLOSE:I

    .line 71
    iput v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 83
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .line 85
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    .line 88
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PREV"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_NEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PLAY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PAUSE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_STOP"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_CLOSE"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;
    .registers 14
    .param p1, "settingExtIntent"    # Lnluparser/scheme/SettingExtIntent;

    .prologue
    const v11, 0x7f080007

    const v10, 0x7f050067

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 370
    const-string v2, ""

    .line 371
    .local v2, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 372
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnluparser/scheme/SettingIntent;

    .line 373
    .local v4, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v4}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v4}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "operands":Ljava/lang/String;
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-->>dealMediaSettingService operator11:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a9

    .line 377
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_1b4

    .end local v0    # "operands":Ljava/lang/String;
    .end local v1    # "operator":Ljava/lang/String;
    .end local v4    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_5d
    :goto_5d
    :pswitch_5d
    move-object v3, v2

    .line 438
    .end local v2    # "prompt":Ljava/lang/String;
    .local v3, "prompt":Ljava/lang/String;
    :goto_5e
    return-object v3

    .line 379
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v0    # "operands":Ljava/lang/String;
    .restart local v1    # "operator":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    .restart local v4    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :pswitch_5f
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_85

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 380
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 381
    .end local v2    # "prompt":Ljava/lang/String;
    .restart local v3    # "prompt":Ljava/lang/String;
    goto :goto_5e

    .line 383
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    :cond_85
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playPrev()V

    .line 384
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 385
    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 386
    goto :goto_5d

    .line 388
    :pswitch_95
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_bb

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 389
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 390
    .end local v2    # "prompt":Ljava/lang/String;
    .restart local v3    # "prompt":Ljava/lang/String;
    goto :goto_5e

    .line 392
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    :cond_bb
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playNext()V

    .line 393
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 394
    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 395
    goto :goto_5d

    .line 397
    :pswitch_cb
    sget-object v5, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dealMediaSettingService: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v5, "OBJ_FAV_MUSIC_LIST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    .line 399
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v2

    .line 400
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    goto/16 :goto_5d

    .line 402
    :cond_f6
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_128

    .line 403
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    .line 404
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 405
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 406
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 408
    :cond_128
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f05005f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    goto/16 :goto_5d

    .line 414
    :pswitch_133
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_151

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 415
    :cond_151
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->pause()V

    .line 416
    iput-boolean v8, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 417
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f050052

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 418
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_5d

    .line 422
    :pswitch_178
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 423
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->stop()V

    .line 424
    iput-boolean v8, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 425
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    goto/16 :goto_5d

    .line 435
    :cond_1a9
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v6, 0x7f05004f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5d

    .line 377
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_95
        :pswitch_cb
        :pswitch_133
        :pswitch_133
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_5d
        :pswitch_178
    .end packed-switch
.end method

.method private exitSession(ZZ)V
    .registers 6
    .param p1, "isNeedRecoveryWakeup"    # Z
    .param p2, "isNeedFireResume"    # Z

    .prologue
    .line 278
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>exitSession isNeedRecoveryWakeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isNeedFireResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->reset()V

    .line 284
    if-eqz p1, :cond_31

    .line 285
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 286
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 288
    :cond_31
    if-eqz p2, :cond_38

    .line 289
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 291
    :cond_38
    return-void
.end method

.method private firNluMusicWakeupOperate(Ljava/lang/String;)V
    .registers 9
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f05000e

    const v5, 0x7f05000d

    .line 242
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 243
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeRaise()V

    .line 271
    :cond_1b
    :goto_1b
    return-void

    .line 244
    :cond_1c
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 245
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeLower()V

    goto :goto_1b

    .line 247
    :cond_32
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v4, "-->>firNluMusicWakeupOperate simulation music operate command nlu"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v3}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v2

    .line 252
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    const v3, 0x7f050012

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 253
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPrevNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    .line 267
    :cond_57
    :goto_57
    if-eqz v1, :cond_1b

    .line 268
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_1b

    .line 254
    :cond_63
    const v3, 0x7f05000f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 255
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicNextNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57

    .line 256
    :cond_75
    const v3, 0x7f050011

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 257
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPlayNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57

    .line 258
    :cond_87
    const v3, 0x7f050010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 259
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPauseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57

    .line 260
    :cond_99
    const v3, 0x7f050013

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 261
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicCloseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57

    .line 262
    :cond_ab
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 263
    invoke-static {}, Lnlucreator/SettingNluCreator;->createVolumeIncreaseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57

    .line 264
    :cond_ba
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 265
    invoke-static {}, Lnlucreator/SettingNluCreator;->createVolumeDecreaseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_57
.end method

.method private isIntervalWakeupWord(Ljava/lang/String;)Z
    .registers 8
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 302
    const v4, 0x7f080005

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 303
    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSStringArray(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "words":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 305
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "avoidWakeNext":Ljava/lang/String;
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "avoidWakePre":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 312
    .end local v0    # "avoidWakeNext":Ljava/lang/String;
    .end local v1    # "avoidWakePre":Ljava/lang/String;
    :cond_36
    :goto_36
    return v3

    .line 310
    .restart local v0    # "avoidWakeNext":Ljava/lang/String;
    .restart local v1    # "avoidWakePre":Ljava/lang/String;
    :cond_37
    const/4 v3, 0x1

    goto :goto_36
.end method

.method private isRemotePlayMusic(Lnluparser/scheme/SettingExtIntent;)Z
    .registers 5
    .param p1, "intent"    # Lnluparser/scheme/SettingExtIntent;

    .prologue
    .line 356
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 357
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/SettingIntent;

    .line 358
    .local v1, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v1}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "operands":Ljava/lang/String;
    const-string v2, "ATTR_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 360
    const/4 v2, 0x1

    .line 363
    .end local v0    # "operands":Ljava/lang/String;
    .end local v1    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :goto_29
    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_29
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .registers 6
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v1, :cond_42

    .line 104
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "service":Ljava/lang/String;
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptInboundEvent0 service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 108
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v1

    invoke-virtual {v1}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/SettingExtIntent;

    .line 107
    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->isRemotePlayMusic(Lnluparser/scheme/SettingExtIntent;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 109
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setPriority(I)V

    .line 110
    const/4 v1, 0x3

    iput v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 111
    const/4 v1, 0x1

    .line 114
    .end local v0    # "service":Ljava/lang/String;
    :goto_41
    return v1

    :cond_42
    const/4 v1, 0x0

    goto :goto_41
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 176
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>doInterrupt type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",eventReceived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v0, :cond_49

    .line 178
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 179
    const-string v0, "doFinishAllInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->stop()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 188
    :cond_49
    :goto_49
    return-void

    .line 184
    :cond_4a
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->pause()V

    .line 185
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    goto :goto_49
.end method

.method protected doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v3, 0x0

    .line 191
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>doResume shouldResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v0, :cond_72

    .line 193
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_73

    .line 195
    :cond_3d
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v1, "doResume: =========\u7ee7\u7eed\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mark(Z)V

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0, v3, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 202
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->reset()V

    .line 203
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 209
    :cond_72
    :goto_72
    return-void

    .line 204
    :cond_73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 206
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_72
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 10
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 141
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DefaultMusicHandler evt :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, ""

    .line 143
    .local v2, "prompt":Ljava/lang/String;
    iget v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    packed-switch v3, :pswitch_data_cc

    .line 153
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventReceived: default"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_38
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 157
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v4, "--->>eventReceived get prompt is null"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v3

    invoke-interface {v3}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 159
    invoke-direct {p0, v6, v6}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    .line 160
    invoke-interface {p2, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 165
    :goto_65
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    const/16 v4, 0x83b

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 173
    :goto_6e
    return-void

    .line 145
    :pswitch_6f
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingExtIntent;

    .line 146
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v3

    if-eqz v3, :cond_8a

    .line 147
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnluparser/scheme/SettingExtIntent;->setVoiceTip(Ljava/lang/String;)V

    .line 149
    :cond_8a
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;

    move-result-object v2

    .line 150
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eventReceived:SETTING_MP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 162
    .end local v0    # "intent":Lnluparser/scheme/SettingExtIntent;
    :cond_a7
    invoke-interface {p2, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    goto :goto_65

    .line 167
    :cond_ab
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f050066

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "noSongResult":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 169
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 171
    :cond_c8
    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    goto :goto_6e

    .line 143
    :pswitch_data_cc
    .packed-switch 0x3
        :pswitch_6f
    .end packed-switch
.end method

.method protected initPriority()V
    .registers 2

    .prologue
    .line 79
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setPriority(I)V

    .line 80
    return-void
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 97
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v1, "DefaultMusicHandler onASREventEngineInitDone :"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 99
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onDeviceStatusChanged(II)V
    .registers 6
    .param p1, "prevStatus"    # I
    .param p2, "status"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 442
    if-ne p2, v1, :cond_11

    .line 443
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    .line 444
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_10

    .line 445
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 459
    :cond_10
    :goto_10
    return-void

    .line 447
    :cond_11
    if-ne p1, v1, :cond_10

    .line 448
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    .line 449
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 450
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_10

    .line 451
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 452
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 453
    if-eq p2, v2, :cond_10

    .line 455
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_10
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 212
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_6d

    .line 213
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->>onTTSEventPlayingEnd serviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    packed-switch v0, :pswitch_data_72

    .line 230
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    move v0, v1

    .line 233
    :goto_29
    return v0

    .line 216
    :pswitch_2a
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 217
    invoke-direct {p0, v1, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 218
    goto :goto_29

    .line 219
    :cond_49
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 220
    invoke-direct {p0, v4, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 221
    goto :goto_29

    .line 224
    :cond_68
    invoke-direct {p0, v4, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 225
    goto :goto_29

    .line 233
    :cond_6d
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_29

    .line 214
    :pswitch_data_72
    .packed-switch 0x3
        :pswitch_2a
    .end packed-switch
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_6

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_6

    .line 350
    const/4 v0, 0x1

    .line 352
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_5
.end method

.method protected recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 336
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 337
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 338
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoveryDefaultWakeupWord wakupWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 294
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 295
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 296
    return-void
.end method

.method protected setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 8
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 319
    .line 320
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "musicWakeup":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 322
    .local v1, "listWakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->getEffectWakeupword(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 323
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 324
    .local v0, "isContain":Z
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->>setOperateWakeupWord isContain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-nez v0, :cond_46

    .line 326
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 329
    :cond_46
    sget-object v3, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOperateWakeupWord wakupWords:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 7
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v1, :cond_39

    .line 124
    instance-of v1, p1, Lnluparser/scheme/LocalASR;

    if-eqz v1, :cond_39

    move-object v1, p1

    .line 125
    check-cast v1, Lnluparser/scheme/LocalASR;

    invoke-virtual {v1}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "wakeupWord":Ljava/lang/String;
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->>userEventTriggered wakeupWord:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->isIntervalWakeupWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 128
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->firNluMusicWakeupOperate(Ljava/lang/String;)V

    .line 134
    .end local v0    # "wakeupWord":Ljava/lang/String;
    :goto_38
    return-void

    .line 133
    :cond_39
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_38
.end method
