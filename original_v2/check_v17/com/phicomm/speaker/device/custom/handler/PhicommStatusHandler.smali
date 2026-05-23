.class public Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;
.super Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;
.source "PhicommStatusHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private onStartBluetooth()V
    .registers 3

    .prologue
    .line 85
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 86
    return-void
.end method

.method private onStartDormant()V
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 78
    return-void
.end method

.method private onStartMusic()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 70
    return-void
.end method

.method private onStartNetConfig()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 94
    return-void
.end method

.method private onStopBluetooth()V
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 82
    return-void
.end method

.method private onStopDormant()V
    .registers 3

    .prologue
    .line 73
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 74
    return-void
.end method

.method private onStopMusic()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 66
    return-void
.end method

.method private onStopNetConfig()V
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 90
    return-void
.end method


# virtual methods
.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v3, 0x66

    .line 20
    instance-of v1, p2, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    if-eqz v1, :cond_32

    move-object v0, p2

    .line 21
    check-cast v0, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    .line 22
    .local v0, "outputEvents":Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 23
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartMusic()V

    .line 25
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2a

    .line 27
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 61
    .end local v0    # "outputEvents":Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;
    :cond_2a
    :goto_2a
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    .line 62
    return-void

    .line 30
    .restart local v0    # "outputEvents":Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;
    :cond_2e
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopMusic()V

    goto :goto_2a

    .line 32
    .end local v0    # "outputEvents":Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;
    :cond_32
    instance-of v1, p2, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    if-eqz v1, :cond_4d

    move-object v0, p2

    .line 33
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    .line 34
    .local v0, "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 35
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartDormant()V

    goto :goto_2a

    .line 37
    :cond_49
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopDormant()V

    goto :goto_2a

    .line 39
    .end local v0    # "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;
    :cond_4d
    instance-of v1, p2, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    if-eqz v1, :cond_68

    move-object v0, p2

    .line 40
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    .line 41
    .local v0, "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 42
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartBluetooth()V

    goto :goto_2a

    .line 44
    :cond_64
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopBluetooth()V

    goto :goto_2a

    .line 46
    .end local v0    # "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;
    :cond_68
    instance-of v1, p2, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    if-eqz v1, :cond_83

    move-object v0, p2

    .line 47
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    .line 48
    .local v0, "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 49
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartNetConfig()V

    goto :goto_2a

    .line 51
    :cond_7f
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopNetConfig()V

    goto :goto_2a

    .line 53
    .end local v0    # "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;
    :cond_83
    instance-of v1, p2, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    if-eqz v1, :cond_2a

    move-object v0, p2

    .line 54
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    .line 55
    .local v0, "outputEvents":Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;
    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 56
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_2a

    .line 58
    :cond_a0
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_2a
.end method
