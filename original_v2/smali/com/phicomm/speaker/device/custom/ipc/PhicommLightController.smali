.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;
.super Ljava/lang/Object;
.source "PhicommLightController.java"


# static fields
.field private static final LIGHT_ACTION_CLOSE:I = 0x1

.field private static final LIGHT_ACTION_OPEN:I = 0x0

.field private static final LIGHT_ID_DORMANT:I = 0x64

.field private static final LIGHT_ID_LOADING:I = 0xcb

.field private static final LIGHT_ID_NET_DISCONNECT:I = 0xfe

.field private static final LIGHT_WHAT:I = 0x1000

.field private static lastLightIndex:I


# instance fields
.field private mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, -0x1

    sput v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 17
    return-void
.end method


# virtual methods
.method public turnOffALLWakeupLight()V
    .registers 6

    .prologue
    .line 29
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    const/16 v1, 0x18

    if-gt v0, v1, :cond_11

    .line 30
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v2, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    :cond_11
    return-void
.end method

.method public turnOffDormantLight()V
    .registers 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 48
    return-void
.end method

.method public turnOffLoadingLight()V
    .registers 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xcb

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 40
    return-void
.end method

.method public turnOffNetDisconenctedLight()V
    .registers 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xfe

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 56
    return-void
.end method

.method public turnOnDormantLight()V
    .registers 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 44
    return-void
.end method

.method public turnOnLoadingLight()V
    .registers 6

    .prologue
    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xcb

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 36
    return-void
.end method

.method public turnOnNetDisconnectedLight()V
    .registers 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/16 v2, 0xfe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 52
    return-void
.end method

.method public turnOnWakeupIndexLight(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 20
    sput p1, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 22
    return-void
.end method

.method public turnOnWakeupLastLight()V
    .registers 6

    .prologue
    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x1000

    sget v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->lastLightIndex:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 26
    return-void
.end method
