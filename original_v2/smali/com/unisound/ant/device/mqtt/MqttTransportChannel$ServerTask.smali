.class public Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;
.super Landroid/os/AsyncTask;
.source "MqttTransportChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;


# direct methods
.method private constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel;
    .param p2, "x1"    # Lcom/unisound/ant/device/mqtt/MqttTransportChannel$1;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;-><init>(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 404
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->this$0:Lcom/unisound/ant/device/mqtt/MqttTransportChannel;

    # invokes: Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->registerMqtt()V
    invoke-static {v0}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel;->access$700(Lcom/unisound/ant/device/mqtt/MqttTransportChannel;)V

    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 404
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unisound/ant/device/mqtt/MqttTransportChannel$ServerTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 417
    return-void
.end method
