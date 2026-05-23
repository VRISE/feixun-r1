.class public Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
.super Lcom/unisound/ant/device/mqtt/BaseTransportChannel;
.source "MqttTransportChannel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;,
        Lcom/unisound/ant/device/mqtt/MqttTransportChannel$MqttCall;
    }
.end annotation


# static fields
.field private static final DEFAULT_REGISTER_DELAYED:I = 0x12c

.field private static final INNER_ADDR:Ljava/lang/String; = "://192.168.11.1:1883"

.field private static final MQTT_CONNECT_PREPARED:I = 0x0

.field private static final MQTT_CONNECT_SUCCESS:I = 0x1

.field private static final MQTT_RECEIVED_MSG:I = 0x5

.field private static final MQTT_RECONNECT:I = 0x2

.field private static final MQTT_REGISTER_OK:Ljava/lang/String; = "mc_0008"

.field private static final MQTT_SEND_PARAM:I = 0x6

.field private static final SP_NAME_FAILED_MESSAGES:Ljava/lang/String; = "failed_msg"

.field private static final TAG:Ljava/lang/String; = "MqttTransportChannel"

.field private static basePublish:Ljava/lang/String;

.field private static baseSubscribe:Ljava/lang/String;

.field private static channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

.field private static client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field public static mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

.field private static mqttTransportChannel:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;


# instance fields
.field private connectHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private mConnecting:Z

.field private mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

.field private mRunnable:Ljava/lang/Runnable;

.field private mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

.field private registerTimes:I

.field private regitstMqttErrorCode:Ljava/lang/String;

.field private taskHandler:Landroid/os/Handler;

.field private taskThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const-string v0, "c2s/msg/"

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    .line 58
    const-string v0, "s2c/msg/"

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/BaseTransportChannel;-><init>()V

    .line 63
    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .line 66
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;

    invoke-direct {v0, p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    .line 74
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    const-string v1, "failed_msg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 76
    iput v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    return-void
.end method

.method static synthetic access$000(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .registers 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->openConectMqttTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->cacheFailedMessage(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    .registers 3
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .registers 1
    .param p0, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerMqtt()V

    return-void
.end method

.method private cacheFailedMessage(Ljava/lang/Object;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 328
    const-string v0, "MqttTransportChannel"

    const-string v1, "cacheFailedMessage"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v0, "synInfo"

    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->getMessageType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 330
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 332
    :cond_2c
    return-void
.end method

.method private connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    .registers 3
    .param p1, "param"    # Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method private connectPrepared(Lcom/unisound/ant/device/mqtt/bean/MqttMessage;)V
    .registers 9
    .param p1, "result"    # Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    .prologue
    const/4 v6, 0x0

    .line 528
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->getConnection()Lcom/unisound/ant/device/mqtt/bean/MqttConnection;

    move-result-object v1

    .line 530
    .local v1, "connectionInfo":Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "cliecntId":Ljava/lang/String;
    new-instance v2, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-direct {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;-><init>()V

    sput-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    .line 532
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setUserName(Ljava/lang/String;)V

    .line 533
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setPassWord(Ljava/lang/String;)V

    .line 534
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v2, v0}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setClientid(Ljava/lang/String;)V

    .line 535
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->baseSubscribe:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setSubscribe([Ljava/lang/String;)V

    .line 536
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->basePublish:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setPublish(Ljava/lang/String;)V

    .line 537
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-direct {p0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->setEnvironmentParam(Lcom/unisound/ant/device/mqtt/bean/MqttConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->setConnectUrl(Ljava/lang/String;)V

    .line 538
    const-string v2, "MqttTransportChannel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    sget-object v5, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    return-void
.end method

.method private getMessageType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 170
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 172
    :try_start_4
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    check-cast p1, Ljava/lang/String;

    .end local p1    # "data":Ljava/lang/Object;
    const-class v2, Lcom/unisound/ant/device/service/BaseRequest;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/service/BaseRequest;

    invoke-virtual {v1}, Lcom/unisound/ant/device/service/BaseRequest;->getMessageType()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_18

    move-result-object v1

    .line 177
    :goto_17
    return-object v1

    .line 173
    :catch_18
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessageType, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static declared-synchronized getMqttTransportChannel()Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .registers 2

    .prologue
    .line 82
    const-class v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttTransportChannel:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    if-nez v0, :cond_e

    .line 83
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;-><init>()V

    sput-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttTransportChannel:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .line 85
    :cond_e
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttTransportChannel:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onConnectFailure(Ljava/lang/String;)V
    .registers 3
    .param p1, "regitstMqttErrorCode2"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 524
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;->onFail(Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private onConnectSuccess()V
    .registers 2

    .prologue
    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 516
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;->onSuccess()V

    .line 517
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->resendFailedMessages()V

    .line 518
    return-void
.end method

.method private openConectMqttTask()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 498
    iget v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    .line 499
    iget v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_4b

    .line 500
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openConectMqttTask, registerTimes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 502
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->cancel(Z)Z

    .line 503
    iput-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    .line 505
    :cond_3b
    new-instance v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    invoke-direct {v0, p0, v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    .line 506
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mServerTask:Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 512
    :goto_4a
    return-void

    .line 509
    :cond_4b
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->regitstMqttErrorCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectFailure(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt\u6ce8\u518c\u5931\u8d25\u8d85\u51fa\u9650\u5236\uff0c\u4e0d\u518d\u91cd\u590d\u6ce8\u518c"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method private queryMqttParamsAndConnect()V
    .registers 5

    .prologue
    .line 110
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 111
    const-string v2, "MqttTransportChannel"

    const-string v3, "mqtt is connected"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_13
    return-void

    .line 112
    :cond_14
    iget-boolean v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    if-eqz v2, :cond_20

    .line 113
    const-string v2, "MqttTransportChannel"

    const-string v3, "mqtt is connecting"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 115
    :cond_20
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerTimes:I

    .line 117
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->setRegisterParam()Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    move-result-object v1

    .line 118
    .local v1, "registerParam":Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 119
    .local v0, "message":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 121
    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method private declared-synchronized reconnect()V
    .registers 1

    .prologue
    .line 296
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private registerMqtt()V
    .registers 7

    .prologue
    .line 423
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-static {v1}, Lcom/unisound/ant/device/mqtt/MqttMsgHelper;->registerMqtt(Lcom/unisound/ant/device/mqtt/bean/RegisterParam;)Lcom/unisound/ant/device/mqtt/bean/MqttMessage;

    move-result-object v0

    .line 424
    .local v0, "result":Lcom/unisound/ant/device/mqtt/bean/MqttMessage;
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt connection info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getResult()Lcom/unisound/ant/device/mqtt/bean/MqttMessage$Result;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 426
    :cond_26
    if-nez v0, :cond_36

    const-string v1, "mc_9999"

    :goto_2a
    iput-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->regitstMqttErrorCode:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    :goto_35
    return-void

    .line 426
    :cond_36
    invoke-virtual {v0}, Lcom/unisound/ant/device/mqtt/bean/MqttMessage;->getReturnCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 430
    :cond_3b
    invoke-direct {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectPrepared(Lcom/unisound/ant/device/mqtt/bean/MqttMessage;)V

    goto :goto_35
.end method

.method private resendFailedMessages()V
    .registers 8

    .prologue
    .line 335
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 336
    .local v1, "failedMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resendFailedMessages, size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 339
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_59

    .line 340
    const-string v4, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resend ----> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    .line 343
    :cond_59
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2a

    .line 345
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_67
    return-void
.end method

.method private sendMessage(Ljava/lang/String;[BLorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .registers 13
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # [B
    .param p3, "listener"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .prologue
    const/4 v8, 0x0

    .line 312
    :try_start_1
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 313
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    .line 321
    :goto_19
    return-object v0

    .line 315
    :cond_1a
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt\u672a\u8fde\u63a5,\u91cd\u65b0\u8fde\u63a5mqtt"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "mqtt is not connected"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    .line 317
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->reconnect()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_31

    move-object v0, v8

    .line 318
    goto :goto_19

    .line 319
    :catch_31
    move-exception v7

    .line 320
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    .line 321
    goto :goto_19
.end method

.method private sendOnlineMessage(Z)V
    .registers 6
    .param p1, "isOnline"    # Z

    .prologue
    .line 446
    new-instance v1, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;

    invoke-direct {v1}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;-><init>()V

    .line 447
    .local v1, "message":Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getClientid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setClientId(Ljava/lang/String;)V

    .line 448
    if-eqz p1, :cond_49

    .line 449
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setEventType(I)V

    .line 453
    :goto_14
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;-><init>()V

    .line 454
    .local v0, "info":Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setUdid(Ljava/lang/String;)V

    .line 455
    sget-object v2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v2}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setAppKey(Ljava/lang/String;)V

    .line 456
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setPassportId(J)V

    .line 457
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setSubsystemId(I)V

    .line 458
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/unisound/ant/device/mqtt/bean/ClientInfo;->setExtras(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v1, v0}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setClientInfo(Lcom/unisound/ant/device/mqtt/bean/ClientInfo;)V

    .line 460
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V

    .line 461
    return-void

    .line 451
    .end local v0    # "info":Lcom/unisound/ant/device/mqtt/bean/ClientInfo;
    :cond_49
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/unisound/ant/device/mqtt/bean/OnlineMessage;->setEventType(I)V

    goto :goto_14
.end method

.method private setEnvironmentParam(Lcom/unisound/ant/device/mqtt/bean/MqttConnection;)Ljava/lang/String;
    .registers 4
    .param p1, "connectionInfo"    # Lcom/unisound/ant/device/mqtt/bean/MqttConnection;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 544
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://192.168.11.1:1883"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unisound/ant/device/mqtt/bean/MqttConnection;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method private setRegisterParam()Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 435
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query mqtt connection info, params = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    invoke-direct {v0}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;-><init>()V

    .line 437
    .local v0, "registerParam":Lcom/unisound/ant/device/mqtt/bean/RegisterParam;
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setAppKey(Ljava/lang/String;)V

    .line 438
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setAppSecret(Ljava/lang/String;)V

    .line 439
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getTcDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setTcDeviceId(Ljava/lang/String;)V

    .line 440
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setToken(Ljava/lang/String;)V

    .line 441
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/ChannelParams;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;->setUdid(Ljava/lang/String;)V

    .line 442
    return-object v0
.end method

.method private startConnect()V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;

    invoke-direct {v1, p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method


# virtual methods
.method public closeChannel()V
    .registers 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 200
    return-void
.end method

.method public createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .registers 5
    .param p1, "context2"    # Landroid/content/Context;
    .param p2, "phicommMQTTStatausChange2"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 91
    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->phicommMQTTStatausChange:Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .line 92
    sget-object v0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    if-nez v0, :cond_2c

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MqttTransportChannel"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->taskHandler:Landroid/os/Handler;

    .line 97
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->queryMqttParamsAndConnect()V

    .line 107
    :goto_2b
    return-void

    .line 100
    :cond_2c
    const-string v0, "MqttTransportChannel"

    const-string v1, "server info is existed, connect to server directly"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    if-eqz v0, :cond_3f

    .line 102
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt is connecting"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 105
    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z

    .line 106
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V

    goto :goto_2b
.end method

.method public createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/bean/ChannelParams;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V
    .registers 6
    .param p1, "context2"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/unisound/ant/device/mqtt/bean/ChannelParams;
    .param p3, "onMQTTStatusChangeListener"    # Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;

    .prologue
    .line 127
    if-nez p2, :cond_a

    .line 128
    const-string v0, "MqttTransportChannel"

    const-string v1, "createChannel param is null"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_9
    return-void

    .line 131
    :cond_a
    sput-object p2, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->channelParams:Lcom/unisound/ant/device/mqtt/bean/ChannelParams;

    .line 132
    invoke-virtual {p0, p1, p3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->createChannel(Landroid/content/Context;Lcom/unisound/ant/device/mqtt/OnMQTTStatusChangeListener;)V

    goto :goto_9
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .registers 4

    .prologue
    .line 300
    :try_start_0
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_1e

    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 301
    const-string v1, "MqttTransportChannel"

    const-string v2, "client disconnect mqtt"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v1

    .line 307
    :goto_19
    return-object v1

    .line 304
    :catch_1a
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    .line 491
    :goto_7
    :pswitch_7
    return v4

    .line 466
    :pswitch_8
    const-string v0, "MqttTransportChannel"

    const-string v1, "start conenct mqtt Server"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V

    goto :goto_7

    .line 470
    :pswitch_13
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/unisound/vui/util/UserPerferenceUtil;->setDeviceOnlineState(Landroid/content/Context;Z)V

    .line 471
    invoke-direct {p0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendOnlineMessage(Z)V

    .line 472
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    if-eqz v0, :cond_24

    .line 473
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/mqtt/ChannelListener;->onChannelConnected()V

    .line 475
    :cond_24
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectSuccess()V

    .line 476
    const-string v0, "MqttTransportChannel"

    const-string v1, "mqtt conenct is Success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 479
    :pswitch_2f
    invoke-direct {p0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->reconnect()V

    goto :goto_7

    .line 486
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->receivedData(Ljava/lang/Object;)V

    goto :goto_7

    .line 489
    :pswitch_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    iput-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRegisterParam:Lcom/unisound/ant/device/mqtt/bean/RegisterParam;

    .line 490
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 464
    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
        :pswitch_2f
        :pswitch_7
        :pswitch_7
        :pswitch_33
        :pswitch_39
    .end packed-switch
.end method

.method public receivedData(Ljava/lang/Object;)V
    .registers 9
    .param p1, "receivedMsg"    # Ljava/lang/Object;

    .prologue
    .line 182
    if-eqz p1, :cond_3e

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "msg":Ljava/lang/String;
    const-string v4, "MqttTransportChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "receivedData message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v3, 0x0

    .line 187
    .local v3, "responseMsg":Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;
    :try_start_1f
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;

    move-object v3, v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_3f

    .line 191
    :goto_2e
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    if-eqz v4, :cond_3e

    if-eqz v3, :cond_3e

    .line 192
    iget-object v4, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->listener:Lcom/unisound/ant/device/mqtt/ChannelListener;

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/unisound/ant/device/mqtt/ChannelListener;->onReceivedMsg(ILjava/lang/String;)V

    .line 195
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "responseMsg":Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;
    :cond_3e
    return-void

    .line 188
    .restart local v2    # "msg":Ljava/lang/String;
    .restart local v3    # "responseMsg":Lcom/unisound/ant/device/mqtt/bean/ChangeMessage;
    :catch_3f
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method public sendData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 137
    return-void
.end method

.method public subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .registers 7
    .param p1, "topics"    # [Ljava/lang/String;
    .param p2, "qos"    # [I

    .prologue
    .line 349
    :try_start_0
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_2b

    .line 350
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt subscriber topics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v1

    .line 356
    :goto_26
    return-object v1

    .line 353
    :catch_27
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public unSubscriber([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .registers 6
    .param p1, "topics"    # [Ljava/lang/String;

    .prologue
    .line 361
    :try_start_0
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    if-eqz v1, :cond_2b

    .line 362
    const-string v1, "MqttTransportChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqtt unSubscriber topics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v1

    .line 368
    :goto_26
    return-object v1

    .line 365
    :catch_27
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_26
.end method
