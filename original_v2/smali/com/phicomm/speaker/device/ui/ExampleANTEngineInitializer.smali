.class public final Lcom/phicomm/speaker/device/ui/ExampleANTEngineInitializer;
.super Lcom/unisound/vui/engine/ANTEngineInitializer;
.source "ExampleANTEngineInitializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTEngineInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineInitDone(Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 14
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    .line 55
    .local v5, "pipeline":Lcom/unisound/vui/engine/ANTPipeline;
    new-instance v7, Lnluparser/MixtureProcessor$Builder;

    invoke-direct {v7}, Lnluparser/MixtureProcessor$Builder;-><init>()V

    invoke-virtual {v7}, Lnluparser/MixtureProcessor$Builder;->build()Lnluparser/MixtureProcessor;

    move-result-object v3

    .line 56
    .local v3, "mixtureProcessor":Lnluparser/MixtureProcessor;
    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v1

    .line 57
    .local v1, "deviceCenterMgr":Lcom/unisound/ant/device/DeviceCenterHandler;
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/filter/NLUDispatcher;

    invoke-direct {v8, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;-><init>(Lnluparser/MixtureProcessor;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 58
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    invoke-direct {v8, v0, v3}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;-><init>(Landroid/content/Context;Lnluparser/MixtureProcessor;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 59
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;

    invoke-direct {v8, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommReminderHandler;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 60
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;

    invoke-direct {v8, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommAlarmHandler;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 61
    new-instance v6, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-direct {v6}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;-><init>()V

    .line 62
    .local v6, "ringingHandler":Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
    new-instance v7, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;

    invoke-direct {v7, p1, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->setOnRingingListener(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;)V

    .line 63
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    aput-object v6, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 64
    new-instance v2, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;

    invoke-direct {v2, v0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "lightListener":Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;

    invoke-direct {v8, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommInterceptHandler;-><init>(Lcom/unisound/vui/handler/session/light/LightListener;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 66
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;

    invoke-direct {v8, v2, v0}, Lcom/unisound/vui/handler/session/light/DefaultLightsHandler;-><init>(Lcom/unisound/vui/handler/session/light/LightListener;Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 67
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommTTSHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 68
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/SimpleSessionManager;

    invoke-direct {v8}, Lcom/unisound/vui/handler/SimpleSessionManager;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 69
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    invoke-virtual {v1, p1, v3}, Lcom/unisound/ant/device/DeviceCenterHandler;->associateEngine(Lcom/unisound/vui/engine/ANTEngine;Lnluparser/MixtureProcessor;)Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 70
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommWakeupWordChangedHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 71
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;

    invoke-direct {v8, v0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommBindStatusHandler;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 72
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;

    invoke-direct {v8, v0}, Lcom/unisound/vui/handler/launch/DefaultANTLaunchHandler;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 74
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommWeatherHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 75
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/weather/DefaultWeatherHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 76
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/stock/DefaultStockHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 79
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 80
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;

    new-instance v9, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;

    invoke-direct {v9, v0}, Lcom/phicomm/speaker/device/custom/music/PhicommExternalPlayer;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v9, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommExternalMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 81
    new-instance v4, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v7

    sget-object v8, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v7, v8}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v4, v0, v7, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unisound/vui/engine/ANTEngine;)V

    .line 82
    .local v4, "phicommPlayer":Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-direct {v8, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 83
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicScheduleHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicScheduleHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 84
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/memo/DefaultNoteHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 85
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;

    new-instance v9, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-direct {v9, v0, p1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V

    invoke-direct {v8, v9}, Lcom/unisound/vui/handler/session/setting/DefaultSettingHandler;-><init>(Lcom/unisound/vui/handler/session/setting/SettingHandler;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 90
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PersonaRouterHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 91
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 93
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 94
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/chat/DefaultChatHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 95
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/DefaultGuideHandler;

    invoke-direct {v8}, Lcom/unisound/vui/handler/session/DefaultGuideHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 96
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;

    invoke-direct {v8}, Lcom/unisound/ant/platform/illeagechat/DefaultIlleageChatHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 97
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;

    invoke-direct {v8}, Lcom/unisound/ant/platform/smarthome/DefaultSmartHomeHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 98
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;

    invoke-direct {v8, v0}, Lcom/unisound/vui/handler/session/DefaultUnSupportHandler;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 99
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 100
    new-array v7, v11, [Lcom/unisound/vui/engine/ANTHandler;

    new-instance v8, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;

    invoke-direct {v8}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;-><init>()V

    aput-object v8, v7, v10

    invoke-interface {v5, v7}, Lcom/unisound/vui/engine/ANTPipeline;->addLast([Lcom/unisound/vui/engine/ANTHandler;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 101
    new-instance v7, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;

    invoke-direct {v7, v0, p1, v4}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;-><init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    new-instance v8, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;

    invoke-direct {v8, v6}, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;-><init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V

    invoke-virtual {v7, v10, v8}, Lcom/phicomm/speaker/device/custom/api/CustomApiManager;->addListener(ILcom/phicomm/speaker/device/custom/api/CustomApiListener;)V

    .line 102
    return-void
.end method
