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
    .line 34
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

    .line 59
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->CLOSE:I

    .line 36
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "EMPTY_RESULT"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    .line 37
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "MUSIC_STATUS_PAUSE"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    .line 38
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    const-string v1, "MUSIC_STATUS_STOP"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    .line 39
    iput v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->NEXT:I

    .line 40
    iput v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PAUSE:I

    .line 41
    iput v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PLAY:I

    .line 42
    iput v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->PREV:I

    .line 43
    iput v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->SETTING_MP:I

    .line 44
    iput v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->STOP:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 50
    iput v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 60
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .line 62
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mDeviceStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PREV"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_NEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PLAY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PAUSE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_STOP"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_CLOSE"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;
    .registers 12
    .param p1, "settingExtIntent"    # Lnluparser/scheme/SettingExtIntent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    const-string v2, ""

    .line 317
    .local v2, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 318
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnluparser/scheme/SettingIntent;

    .line 319
    .local v4, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v4}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v4}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v0

    .line 321
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

    .line 322
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 323
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
    :cond_57
    :goto_57
    :pswitch_57
    move-object v3, v2

    .end local v2    # "prompt":Ljava/lang/String;
    .local v3, "prompt":Ljava/lang/String;
    move-object v5, v2

    .line 381
    :goto_59
    return-object v5

    .line 325
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v0    # "operands":Ljava/lang/String;
    .restart local v1    # "operator":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    .restart local v4    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :pswitch_5a
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_78

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 326
    :cond_78
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playPrev()V

    .line 327
    sget v5, Lcom/phicomm/speaker/device/R$array;->tts_action_music_play_answer:I

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 328
    goto :goto_57

    .line 330
    :cond_8a
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v6, Lcom/phicomm/speaker/device/R$string;->tts_music_not_playing:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    .end local v2    # "prompt":Ljava/lang/String;
    .restart local v3    # "prompt":Ljava/lang/String;
    goto :goto_59

    .line 333
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    :pswitch_94
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_b2

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c4

    .line 334
    :cond_b2
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->playNext()V

    .line 335
    sget v5, Lcom/phicomm/speaker/device/R$array;->tts_action_music_play_answer:I

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 336
    goto :goto_57

    .line 338
    :cond_c4
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v6, Lcom/phicomm/speaker/device/R$string;->tts_music_not_playing:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v2

    .end local v2    # "prompt":Ljava/lang/String;
    .restart local v3    # "prompt":Ljava/lang/String;
    goto :goto_59

    .line 341
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v2    # "prompt":Ljava/lang/String;
    :pswitch_ce
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

    .line 342
    const-string v5, "OBJ_FAV_MUSIC_LIST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12a

    .line 343
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 344
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v6, Lcom/phicomm/speaker/device/R$string;->tts_music_is_already_playing:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    goto/16 :goto_57

    .line 347
    :cond_100
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    .line 348
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 349
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 350
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_57

    .line 354
    :cond_12a
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v2

    .line 355
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    goto/16 :goto_57

    .line 360
    :pswitch_135
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_153

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-interface {v5}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_179

    .line 361
    :cond_153
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->pause()V

    .line 362
    iput-boolean v8, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 363
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v6, Lcom/phicomm/speaker/device/R$string;->tts_music_control_pause:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_57

    .line 368
    :cond_179
    :pswitch_179
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 369
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v5}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->stop()V

    .line 370
    iput-boolean v8, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 371
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    goto/16 :goto_57

    .line 378
    :cond_1aa
    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v6, Lcom/phicomm/speaker/device/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_57

    .line 323
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_94
        :pswitch_ce
        :pswitch_135
        :pswitch_135
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_57
        :pswitch_179
    .end packed-switch
.end method

.method private exitSession(ZZ)V
    .registers 6
    .param p1, "isNeedRecoveryWakeup"    # Z
    .param p2, "isNeedFireResume"    # Z

    .prologue
    .line 240
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

    .line 241
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->reset()V

    .line 242
    if-eqz p1, :cond_31

    .line 243
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 244
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 246
    :cond_31
    if-eqz p2, :cond_38

    .line 247
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 249
    :cond_38
    return-void
.end method

.method private firNluMusicWakeupOperate(Ljava/lang/String;)V
    .registers 6
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/phicomm/speaker/device/R$string;->music_volume_increase:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 210
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeRaise()V

    .line 237
    :cond_17
    :goto_17
    return-void

    .line 211
    :cond_18
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/phicomm/speaker/device/R$string;->music_volume_decrease:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 212
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeLower()V

    goto :goto_17

    .line 214
    :cond_30
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v3, "-->>firNluMusicWakeupOperate simulation music operate command nlu"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 218
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_wakeup_prev:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 219
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPrevNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    .line 233
    :cond_53
    :goto_53
    if-eqz v1, :cond_17

    .line 234
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_17

    .line 220
    :cond_5f
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_wakeup_next:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 221
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicNextNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53

    .line 222
    :cond_70
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_wakeup_play:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 223
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPlayNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53

    .line 224
    :cond_81
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_wakeup_pause:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 225
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicPauseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53

    .line 226
    :cond_92
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_wakeup_stop:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 227
    invoke-static {}, Lnlucreator/MusicNluCreator;->createMusicCloseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53

    .line 228
    :cond_a3
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_volume_increase:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 229
    invoke-static {}, Lnlucreator/SettingNluCreator;->createVolumeIncreaseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53

    .line 230
    :cond_b4
    sget v2, Lcom/phicomm/speaker/device/R$string;->music_volume_decrease:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 231
    invoke-static {}, Lnlucreator/SettingNluCreator;->createVolumeDecreaseNlu()Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_53
.end method

.method private isIntervalWakeupWord(Ljava/lang/String;)Z
    .registers 7
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 259
    sget v3, Lcom/phicomm/speaker/device/R$array;->music_running_wakeup_words:I

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSStringArray(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 267
    :cond_17
    :goto_17
    return v2

    .line 262
    :cond_18
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/phicomm/speaker/device/R$string;->music_avoid_wakeup_next:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "avoidWakeNext":Ljava/lang/String;
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v4, Lcom/phicomm/speaker/device/R$string;->music_avoid_wakeup_prev:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "avoidWakePre":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 267
    const/4 v2, 0x1

    goto :goto_17
.end method

.method private isRemotePlayMusic(Lnluparser/scheme/SettingExtIntent;)Z
    .registers 4
    .param p1, "intent"    # Lnluparser/scheme/SettingExtIntent;

    .prologue
    .line 309
    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v1, "ATTR_BUTTON"

    invoke-virtual {p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingIntent;

    invoke-virtual {v0}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 310
    :cond_28
    const/4 v0, 0x0

    .line 312
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
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
    .line 33
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method public acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .registers 6
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v1, :cond_42

    .line 85
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    .line 86
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

    .line 87
    const-string v1, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v1

    invoke-virtual {v1}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/SettingExtIntent;

    invoke-direct {p0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->isRemotePlayMusic(Lnluparser/scheme/SettingExtIntent;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 88
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setPriority(I)V

    .line 89
    const/4 v1, 0x3

    iput v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 90
    const/4 v1, 0x1

    .line 93
    .end local v0    # "service":Ljava/lang/String;
    :goto_41
    return v1

    :cond_42
    const/4 v1, 0x0

    goto :goto_41
.end method

.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 147
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

    .line 148
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v0, :cond_49

    .line 149
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 150
    const-string v0, "doFinishAllInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 151
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->stop()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 159
    :cond_49
    :goto_49
    return-void

    .line 156
    :cond_4a
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->pause()V

    .line 157
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    goto :goto_49
.end method

.method public doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v3, 0x0

    .line 164
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

    .line 165
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-nez v0, :cond_20

    .line 181
    :cond_1f
    :goto_1f
    return-void

    .line 168
    :cond_20
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_74

    .line 169
    :cond_3e
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v1, "doResume: =========\u7ee7\u7eed\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mark(Z)V

    .line 171
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->resume()V

    .line 172
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 174
    invoke-direct {p0, v3, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    .line 175
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 176
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->reset()V

    .line 177
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    goto :goto_1f

    .line 178
    :cond_74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 179
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_1f
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 9
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DefaultMusicHandler evt :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, ""

    .line 114
    .local v1, "prompt":Ljava/lang/String;
    iget v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    packed-switch v2, :pswitch_data_cc

    .line 124
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventReceived: default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 128
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v3, "--->>eventReceived get prompt is null"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v2

    invoke-interface {v2}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 130
    :cond_5f
    invoke-interface {p2, v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 135
    :goto_62
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    const/16 v3, 0x83b

    invoke-interface {v2, v3}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 142
    :goto_6b
    return-void

    .line 116
    :pswitch_6c
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingExtIntent;

    .line 117
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    if-eqz v2, :cond_87

    .line 118
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnluparser/scheme/SettingExtIntent;->setVoiceTip(Ljava/lang/String;)V

    .line 120
    :cond_87
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eventReceived:SETTING_MP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 132
    .end local v0    # "intent":Lnluparser/scheme/SettingExtIntent;
    :cond_a4
    invoke-direct {p0, v5, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    .line 133
    invoke-interface {p2, v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    goto :goto_62

    .line 138
    :cond_ab
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/phicomm/speaker/device/R$string;->tts_music_no_find_song:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 139
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p2, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 141
    :cond_c7
    invoke-interface {p2, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    goto :goto_6b

    .line 114
    nop

    :pswitch_data_cc
    .packed-switch 0x3
        :pswitch_6c
    .end packed-switch
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 56
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setPriority(I)V

    .line 57
    return-void
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 76
    sget-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    const-string v1, "DefaultMusicHandler onASREventEngineInitDone :"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 78
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

    .line 386
    if-ne p2, v1, :cond_11

    .line 387
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    .line 388
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_10

    .line 389
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 402
    :cond_10
    :goto_10
    return-void

    .line 391
    :cond_11
    if-ne p1, v1, :cond_10

    .line 392
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    .line 393
    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->shouldResume:Z

    .line 394
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v0, :cond_10

    .line 395
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 396
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 397
    if-eq p2, v2, :cond_10

    .line 398
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_10
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 186
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-nez v0, :cond_b

    .line 187
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    .line 204
    :goto_a
    return v0

    .line 189
    :cond_b
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

    .line 190
    iget v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    packed-switch v0, :pswitch_data_72

    .line 203
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    move v0, v1

    .line 204
    goto :goto_a

    .line 192
    :pswitch_2f
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 193
    invoke-direct {p0, v1, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 194
    goto :goto_a

    .line 195
    :cond_4e
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

    if-nez v0, :cond_6d

    .line 196
    :cond_68
    invoke-direct {p0, v4, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 197
    goto :goto_a

    .line 199
    :cond_6d
    invoke-direct {p0, v4, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 200
    goto :goto_a

    .line 190
    :pswitch_data_72
    .packed-switch 0x3
        :pswitch_2f
    .end packed-switch
.end method

.method public onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_6

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_5
.end method

.method public onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_6

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_5
.end method

.method public recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 285
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 286
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 287
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

    .line 288
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 254
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->serviceType:I

    .line 256
    return-void
.end method

.method public setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 272
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/phicomm/speaker/device/R$array;->music_running_wakeup_words:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 273
    .local v1, "listWakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/unisound/vui/util/UserPerferenceUtil;->getEffectWakeupword(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 274
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 275
    .local v0, "isContain":Z
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->>setOperateWakeupWord isContain:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-nez v0, :cond_45

    .line 277
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 280
    :cond_45
    sget-object v2, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOperateWakeupWord wakupWords:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
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
    .line 98
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->mIsExternMode:Z

    if-eqz v1, :cond_39

    instance-of v1, p1, Lnluparser/scheme/LocalASR;

    if-eqz v1, :cond_39

    move-object v1, p1

    .line 99
    check-cast v1, Lnluparser/scheme/LocalASR;

    invoke-virtual {v1}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
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

    .line 101
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->isIntervalWakeupWord(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 102
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;->firNluMusicWakeupOperate(Ljava/lang/String;)V

    .line 107
    .end local v0    # "wakeupWord":Ljava/lang/String;
    :goto_38
    return-void

    .line 106
    :cond_39
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_38
.end method
