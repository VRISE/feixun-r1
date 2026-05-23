.class public Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
.super Ljava/lang/Object;
.source "PhicommDeviceStatusProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/ipc/IpcReceiver;
.implements Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;,
        Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;
    }
.end annotation


# static fields
.field public static final SP_DEVICE_STATUS:Ljava/lang/String; = "deviceStatus"

.field public static final STATUS_BLUETOOTH:I = 0x3

.field public static final STATUS_DORMANT:I = 0x5

.field public static final STATUS_MUSIC:I = 0x1

.field public static final STATUS_READY:I = 0x0

.field public static final STATUS_SETUP_NET:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PhicommDeviceStatusProcessor"

.field private static sContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceStatus:Ljava/lang/Integer;

.field private mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 36
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->defaultInstance(Landroid/content/Context;)Lcom/phicomm/speaker/device/ipc/IpcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const v1, 0x8000

    invoke-virtual {v0, p0, v1}, Lcom/phicomm/speaker/device/ipc/IpcManager;->registerReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;I)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
    .registers 1

    .prologue
    .line 47
    # getter for: Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;->sProcessor:Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$Holder;->access$000()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_7

    .line 52
    sput-object p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    .line 56
    :goto_6
    return-void

    .line 54
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    goto :goto_6
.end method

.method private setDeviceStatus(I)V
    .registers 4
    .param p1, "deviceStatus"    # I

    .prologue
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 117
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "deviceStatus"

    invoke-virtual {v0, v1, p1}, Lcom/unisound/vui/util/SharedPreferencesHelper;->saveIntValue(Ljava/lang/String;I)V

    .line 118
    return-void
.end method


# virtual methods
.method public addDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .prologue
    .line 67
    const-class v1, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    monitor-enter v1

    .line 68
    :try_start_3
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 71
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1d

    .line 72
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1c
    return-void

    .line 71
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getDeviceStatus()I
    .registers 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    if-nez v0, :cond_17

    .line 86
    sget-object v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getInstance(Landroid/content/Context;)Lcom/unisound/vui/util/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "deviceStatus"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/util/SharedPreferencesHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    .line 88
    :cond_17
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mDeviceStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onReceive(IIILjava/lang/Object;)V
    .registers 6
    .param p1, "domain"    # I
    .param p2, "subDomain"    # I
    .param p3, "sessionId"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 93
    const/16 v0, 0x33

    if-ne p2, v0, :cond_1e

    .line 94
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 95
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    .line 113
    :cond_17
    :goto_17
    return-void

    .line 97
    :cond_18
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_17

    .line 99
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_1e
    const/16 v0, 0x34

    if-ne p2, v0, :cond_3c

    .line 100
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 101
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_17

    .line 103
    :cond_36
    const/16 v0, 0x6c

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_17

    .line 105
    .restart local p4    # "data":Ljava/lang/Object;
    :cond_3c
    const/16 v0, 0x35

    if-ne p2, v0, :cond_17

    .line 107
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 108
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_17

    .line 110
    :cond_54
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sendStatusMessage(I)V

    goto :goto_17
.end method

.method public onStateChanged(I)V
    .registers 9
    .param p1, "newState"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v1

    .line 123
    .local v1, "prevStatus":I
    const-string v2, "PhicommDeviceStatusProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceived device status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prevStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->setDeviceStatus(I)V

    .line 125
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    const/16 v3, 0x4000

    const/4 v4, 0x4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/os/ParcelableUtil;->obtain(Z)Landroid/os/ParcelableUtil;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/phicomm/speaker/device/ipc/IpcManager;->sendMessage(IIILandroid/os/Parcelable;)V

    .line 126
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_51

    .line 127
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .line 128
    .local v0, "listener":Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;
    invoke-interface {v0, v1, p1}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;->onDeviceStatusChanged(II)V

    goto :goto_41

    .line 131
    .end local v0    # "listener":Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;
    :cond_51
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mIpcManager:Lcom/phicomm/speaker/device/ipc/IpcManager;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/ipc/IpcManager;->unRegisterReceiver(Lcom/phicomm/speaker/device/ipc/IpcReceiver;)V

    .line 60
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 61
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 64
    :cond_11
    return-void
.end method

.method public removeDeviceStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor$OnDeviceStatusChangedListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mListeners:Ljava/util/List;

    .line 82
    :cond_10
    return-void
.end method

.method public sendStatusMessage(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->sendMessage(I)V

    .line 143
    return-void
.end method

.method public startMonitorStatus()V
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    sget-object v1, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .line 42
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->registerStatusChangedListener(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;)V

    .line 43
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->mSceneStateMachine:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->start()V

    .line 44
    return-void
.end method
