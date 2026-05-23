.class public Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;
.super Ljava/lang/Object;
.source "UDIDProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "UDIDProcessor"


# instance fields
.field private mEngine:Lcom/unisound/vui/engine/ANTEngine;

.field private mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/engine/ANTEngine;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    .line 20
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(IIILjava/lang/Object;)V
    .registers 11
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 30
    sget v1, Lcom/phicomm/speaker/device/utils/PhicommMessageManager;->DOMAIN_UDID:I

    if-ne p2, v1, :cond_38

    .line 31
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mEngine:Lcom/unisound/vui/engine/ANTEngine;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UDID:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v1, v2}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "udid":Ljava/lang/String;
    const-string v1, "UDIDProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------udid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const v2, 0x8000

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-static {v0}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/phicomm/speaker/device/ipc/IpcManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 35
    .end local v0    # "udid":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method public register()V
    .registers 3

    .prologue
    .line 24
    const-string v0, "UDIDProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const/16 v1, 0x4000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 26
    return-void
.end method

.method public unregister()V
    .registers 3

    .prologue
    .line 38
    const-string v0, "UDIDProcessor"

    const-string v1, "regitster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/udid/UDIDProcessor;->mMsgCenter:Lcom/phicomm/speaker/device/ipc/IpcManager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 40
    return-void
.end method
