.class public Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;
.super Lcom/unisound/vui/handler/session/light/SimpleLightListener;
.source "PhicommLightListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/light/SimpleLightListener;-><init>()V

    .line 13
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-direct {v0, p1}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    .line 14
    return-void
.end method


# virtual methods
.method public onInterrupt()V
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    const-string v1, "----------onInterrupt----------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 35
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 36
    return-void
.end method

.method public onRecognizeStart()V
    .registers 3

    .prologue
    .line 26
    sget-object v0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    const-string v1, "----------onRecognizeStart----------"

    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffALLWakeupLight()V

    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnLoadingLight()V

    .line 29
    return-void
.end method

.method public onTTSEnd()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOffLoadingLight()V

    .line 41
    return-void
.end method

.method public onWakeupSuccess(I)V
    .registers 6
    .param p1, "angle"    # I

    .prologue
    .line 18
    sget-object v1, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onWakeupSuccess---------- \u5904\u7406\u524d\u89d2\u5ea6 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->getIndex(I)I

    move-result v0

    .line 20
    .local v0, "currentLightIndex":I
    sget-object v1, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onWakeupSuccess---------- \u5904\u7406\u540e\u89d2\u5ea6 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " light index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/lights/PhicommLightListener;->phicommLightController:Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;

    invoke-virtual {v1, v0}, Lcom/phicomm/speaker/device/custom/ipc/PhicommLightController;->turnOnWakeupIndexLight(I)V

    .line 22
    return-void
.end method
