.class public Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;
.super Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;
.source "PhicommStatusHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;-><init>()V

    return-void
.end method

.method private onStartBluetooth()V
    .registers 3

    .prologue
    .line 73
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 74
    return-void
.end method

.method private onStartDormant()V
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 66
    return-void
.end method

.method private onStartMusic()V
    .registers 3

    .prologue
    .line 57
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 58
    return-void
.end method

.method private onStartNetConfig()V
    .registers 3

    .prologue
    .line 81
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 82
    return-void
.end method

.method private onStopBluetooth()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 70
    return-void
.end method

.method private onStopDormant()V
    .registers 3

    .prologue
    .line 61
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 62
    return-void
.end method

.method private onStopMusic()V
    .registers 3

    .prologue
    .line 53
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 54
    return-void
.end method

.method private onStopNetConfig()V
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 15
    instance-of v0, p2, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    if-eqz v0, :cond_32

    move-object v0, p2

    .line 16
    check-cast v0, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 17
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartMusic()V

    .line 18
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2a

    .line 19
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 49
    :cond_2a
    :goto_2a
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/engine/ANTOutboundHandlerAdapter;->write(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/Object;)V

    .line 50
    return-void

    .line 22
    :cond_2e
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopMusic()V

    goto :goto_2a

    .line 24
    :cond_32
    instance-of v0, p2, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    if-eqz v0, :cond_4d

    move-object v0, p2

    .line 25
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/DormantOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 26
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartDormant()V

    goto :goto_2a

    .line 28
    :cond_49
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopDormant()V

    goto :goto_2a

    .line 30
    :cond_4d
    instance-of v0, p2, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    if-eqz v0, :cond_68

    move-object v0, p2

    .line 31
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/BluetoothOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 32
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartBluetooth()V

    goto :goto_2a

    .line 34
    :cond_64
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopBluetooth()V

    goto :goto_2a

    .line 36
    :cond_68
    instance-of v0, p2, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    if-eqz v0, :cond_83

    move-object v0, p2

    .line 37
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/NetworkConfigOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 38
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStartNetConfig()V

    goto :goto_2a

    .line 40
    :cond_7f
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommStatusHandler;->onStopNetConfig()V

    goto :goto_2a

    .line 42
    :cond_83
    instance-of v0, p2, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    if-eqz v0, :cond_2a

    move-object v0, p2

    .line 43
    check-cast v0, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/outputevents/DormantMessageEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 44
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_2a

    .line 46
    :cond_a0
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_2a
.end method
