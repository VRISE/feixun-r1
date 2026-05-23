.class public Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;
.super Ljava/lang/Object;
.source "PhicommXController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhicommXController"


# instance fields
.field private mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    .line 22
    return-void
.end method


# virtual methods
.method public closeAmbientLight()V
    .registers 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 115
    return-void
.end method

.method public closeBlueToothStatus()V
    .registers 6

    .prologue
    .line 30
    const-string v0, "PhicommXController"

    const-string v1, "close buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method public closeConnectNetStatus()V
    .registers 6

    .prologue
    .line 45
    const-string v0, "PhicommXController"

    const-string v1, "close connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 47
    return-void
.end method

.method public closeMusic()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 79
    return-void
.end method

.method public closeMusicFadeout()V
    .registers 6

    .prologue
    .line 82
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 83
    return-void
.end method

.method public closeSoundEffect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 122
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x64

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 123
    return-void
.end method

.method public openAmbientLight()V
    .registers 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/4 v1, 0x4

    const/16 v2, 0x40

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 111
    return-void
.end method

.method public openBlueToothStatus()V
    .registers 6

    .prologue
    .line 25
    const-string v0, "PhicommXController"

    const-string v1, "enter buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 27
    return-void
.end method

.method public openConnectNetStatus()V
    .registers 6

    .prologue
    .line 40
    const-string v0, "PhicommXController"

    const-string v1, "open connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 42
    return-void
.end method

.method public openPhijoinConnectNetStatus(Ljava/lang/Object;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 50
    const-string v0, "PhicommXController"

    const-string v1, "open phijoin connect net status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x40000

    const/4 v2, 0x3

    const/4 v3, -0x1

    check-cast p1, Landroid/os/ParcelableUtil;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 52
    return-void
.end method

.method public openSoundEffect()V
    .registers 6

    .prologue
    .line 118
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 119
    return-void
.end method

.method public resetBlueToothStatus()V
    .registers 6

    .prologue
    .line 35
    const-string v0, "PhicommXController"

    const-string v1, "reset buletooth status"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x40

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 37
    return-void
.end method

.method public resetDevice()V
    .registers 6

    .prologue
    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x4000

    const/16 v2, 0x8

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 87
    return-void
.end method

.method public syncBindFailEvent(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x200000

    const/16 v2, 0x65

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 107
    return-void
.end method

.method public syncBindSuccessEvent()V
    .registers 6

    .prologue
    .line 102
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/high16 v1, 0x200000

    const/16 v2, 0x64

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 103
    return-void
.end method

.method public syncDeviceStatus(Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;)V
    .registers 10
    .param p1, "status"    # Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    .line 55
    const/4 v7, 0x0

    .line 56
    .local v7, "data":Landroid/os/Parcelable;
    invoke-virtual {p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 73
    :goto_b
    const-string v0, "PhicommXController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const v2, 0x8000

    const/16 v4, 0x4000

    const/4 v6, -0x1

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 75
    return-void

    .line 58
    :pswitch_36
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 59
    goto :goto_b

    .line 61
    :pswitch_3c
    invoke-static {v1}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 62
    goto :goto_b

    .line 64
    :pswitch_41
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 65
    goto :goto_b

    .line 67
    :pswitch_47
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    .line 68
    goto :goto_b

    .line 70
    :pswitch_4d
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(I)Landroid/os/ParcelableUtil;

    move-result-object v7

    goto :goto_b

    .line 56
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3c
        :pswitch_41
        :pswitch_47
        :pswitch_4d
    .end packed-switch
.end method

.method public triggeredDoubleClickEvent()V
    .registers 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 95
    return-void
.end method

.method public triggeredOneClickEvent()V
    .registers 6

    .prologue
    .line 98
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 99
    return-void
.end method

.method public triggeredTropleClickEvent()V
    .registers 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;->mPhicommIpcSender:Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;

    const/16 v1, 0x100

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ipc/PhicommIpcSender;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 91
    return-void
.end method
