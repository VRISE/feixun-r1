.class Lcom/unisound/ant/device/mqtt/MqttTransportChannel$4;
.super Ljava/lang/Object;
.source "MqttTransportChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
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
    .line 518
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$4;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->openConectMqttTask()V
    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$800(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    .line 521
    return-void
.end method
