.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 285
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect mqtt, isNetworkConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # getter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_24
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # getter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 287
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # getter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z
    invoke-static {v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$600(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 305
    :cond_38
    :goto_38
    return-void

    .line 290
    :cond_39
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # setter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z
    invoke-static {v3, v7}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$602(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Z)Z

    .line 291
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    invoke-static {v3, v4}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$200(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z

    move-result v1

    .line 292
    .local v1, "isSuccess":Z
    const-string v3, "MqttTransportChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnect isSuccess:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v1, :cond_7b

    .line 294
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v4, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v4}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getSubscribe()[Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [I

    const/4 v6, 0x2

    aput v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v2

    .line 295
    .local v2, "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # getter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_38

    .line 298
    .end local v2    # "mqttToken":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :cond_7b
    iget-object v3, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # setter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mConnecting:Z
    invoke-static {v3, v8}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$602(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Z)Z

    .line 300
    const-wide/16 v4, 0x1388

    :try_start_82
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_24

    .line 301
    :catch_86
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_24
.end method
