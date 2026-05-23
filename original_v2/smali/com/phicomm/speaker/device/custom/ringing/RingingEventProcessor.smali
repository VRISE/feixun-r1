.class public Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;
.super Ljava/lang/Object;
.source "RingingEventProcessor.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$OnRingingListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

.field protected mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

.field private mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

.field private mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 4
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 20
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    .line 23
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 25
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    .line 26
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 27
    return-void
.end method

.method private processRingingEvent(Z)V
    .registers 6
    .param p1, "ringing"    # Z

    .prologue
    .line 40
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mStatusProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    .line 41
    .local v0, "status":I
    sget-object v2, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2a

    const-string v1, "\u51c6\u5907\u54cd\u94c3"

    :goto_11
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", \u5f53\u524d\u72b6\u6001"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    packed-switch v0, :pswitch_data_60

    .line 84
    :goto_29
    :pswitch_29
    return-void

    .line 41
    :cond_2a
    const-string v1, "\u54cd\u94c3\u7ed3\u675f"

    goto :goto_11

    .line 44
    :pswitch_2d
    if-eqz p1, :cond_33

    .line 45
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusReady()V

    goto :goto_29

    .line 48
    :cond_33
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusReady()V

    goto :goto_29

    .line 52
    :pswitch_37
    if-eqz p1, :cond_3d

    .line 53
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusMusic()V

    goto :goto_29

    .line 56
    :cond_3d
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusMusic()V

    goto :goto_29

    .line 60
    :pswitch_41
    if-eqz p1, :cond_47

    .line 61
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusSetupNet()V

    goto :goto_29

    .line 64
    :cond_47
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusSetupNet()V

    goto :goto_29

    .line 68
    :pswitch_4b
    if-eqz p1, :cond_51

    .line 69
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusBluetooth()V

    goto :goto_29

    .line 72
    :cond_51
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusBluetooth()V

    goto :goto_29

    .line 79
    :pswitch_55
    if-eqz p1, :cond_5b

    .line 80
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStartOnStatusSleeping()V

    goto :goto_29

    .line 83
    :cond_5b
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->ringStoppedOnStatusSleeping()V

    goto :goto_29

    .line 42
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_37
        :pswitch_41
        :pswitch_4b
        :pswitch_29
        :pswitch_55
    .end packed-switch
.end method

.method private ringStartOnStatusBluetooth()V
    .registers 6

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 117
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 118
    return-void
.end method

.method private ringStartOnStatusMusic()V
    .registers 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 102
    return-void
.end method

.method private ringStartOnStatusReady()V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->turnOffWakeupLightsIfNeeds()V

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const-string v1, "doActiveInterrupt"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 92
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelTTS()V

    .line 93
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->cancelASR()V

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 95
    return-void
.end method

.method private ringStartOnStatusSetupNet()V
    .registers 6

    .prologue
    .line 108
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/high16 v1, 0x40000

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 110
    return-void
.end method

.method private ringStartOnStatusSleeping()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffDormantLight()V

    .line 130
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommXController:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;

    sget-object v1, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V

    .line 131
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->enterWakeup(Z)V

    .line 132
    return-void
.end method

.method private ringStoppedOnStatusBluetooth()V
    .registers 6

    .prologue
    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mMessageCenter:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(IIILandroid/os/Parcelable;)V

    .line 126
    return-void
.end method

.method private ringStoppedOnStatusMusic()V
    .registers 1

    .prologue
    .line 105
    return-void
.end method

.method private ringStoppedOnStatusReady()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method private ringStoppedOnStatusSetupNet()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method private ringStoppedOnStatusSleeping()V
    .registers 1

    .prologue
    .line 135
    return-void
.end method

.method private turnOffWakeupLightsIfNeeds()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->mPhicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 122
    return-void
.end method


# virtual methods
.method public onRingingStart()V
    .registers 2

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->processRingingEvent(Z)V

    .line 32
    return-void
.end method

.method public onRingingStop()V
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/ringing/RingingEventProcessor;->processRingingEvent(Z)V

    .line 37
    return-void
.end method
