.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->startConnect()V
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
    .line 255
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 259
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connect(Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z
    invoke-static {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$300(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 260
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    sget-object v1, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->mqttParam:Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;

    invoke-virtual {v1}, Lcom/unisound/ant/device/mqtt/bean/MqttClientParam;->getSubscribe()[Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [I

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->subscriber([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .line 261
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # getter for: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->connectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$400(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :goto_25
    return-void

    .line 264
    :cond_26
    const-string v0, "MqttTransportChannel"

    const-string v1, "start connect mqttServer is fail"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$3;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    const-string v1, "mc_9999"

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->onConnectFailure(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$500(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/String;)V

    goto :goto_25
.end method
