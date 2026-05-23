.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->sendData(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

.field final synthetic val$data:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V
    .registers 3
    .param p1, "this$0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    iput-object p2, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->val$data:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "iMqttToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    const-string v0, "MqttTransportChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage Failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    iget-object v1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$2;->val$data:Ljava/lang/Object;

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->cacheFailedMessage(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$100(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .registers 4
    .param p1, "iMqttToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .prologue
    .line 150
    const-string v0, "MqttTransportChannel"

    const-string v1, "sendMessage Success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method
