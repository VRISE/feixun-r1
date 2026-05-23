.class public Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;
.super Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;
.source "PhicommMusicHandler.java"

# interfaces
.implements Lcom/unisound/ant/device/listener/MusicStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V
    .registers 3
    .param p1, "commonPlayer"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;-><init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object v0
.end method

.method private getCurrentMusicWakeupBenchmark()F
    .registers 5

    .prologue
    .line 70
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getCurrentVolume()I

    move-result v0

    .line 71
    .local v0, "currentVolume":I
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged music playing  volume:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v1, 0x8

    if-ge v0, v1, :cond_29

    .line 73
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    .line 81
    :goto_28
    return v1

    .line 75
    :cond_29
    const/16 v1, 0xa

    if-ge v0, v1, :cond_30

    .line 76
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlaying:F

    goto :goto_28

    .line 78
    :cond_30
    const/16 v1, 0xc

    if-ge v0, v1, :cond_37

    .line 79
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingTwo:F

    goto :goto_28

    .line 81
    :cond_37
    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmarkForMusicPlayingThree:F

    goto :goto_28
.end method

.method private getEffectBenchmark(I)F
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 63
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    .line 64
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->getCurrentMusicWakeupBenchmark()F

    move-result v0

    .line 66
    :goto_7
    return v0

    :cond_8
    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->wakeupBenchmark:F

    goto :goto_7
.end method


# virtual methods
.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 88
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 90
    :cond_e
    return-void
.end method

.method public doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 95
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getInstance()Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/PhicommDeviceStatusProcessor;->getDeviceStatus()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    .line 96
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 98
    :cond_e
    return-void
.end method

.method public firNluMusicWakeupOperate(Ljava/lang/String;)V
    .registers 4
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/phicomm/speaker/device/R$string;->music_volume_increase:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeRaise()V

    .line 110
    :goto_17
    return-void

    .line 105
    :cond_18
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    sget v1, Lcom/phicomm/speaker/device/R$string;->music_volume_decrease:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 106
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->getInstance(Landroid/content/Context;)Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/ant/device/controlor/DefaultVolumeOperator;->setVolumeLower()V

    goto :goto_17

    .line 108
    :cond_30
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->firNluMusicWakeupOperate(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 32
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mContext:Landroid/content/Context;

    .line 33
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onMusicStatusChanged(I)V
    .registers 8
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 44
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->getEffectBenchmark(I)F

    move-result v0

    .line 45
    .local v0, "currentBenchMark":F
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMusicStatusChanged status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentBenchMark"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sput v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    .line 48
    if-ne p1, v4, :cond_50

    const/4 v1, 0x1

    :goto_2d
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setMusicPlaying(Z)V

    .line 49
    const/4 v1, 0x2

    if-ne p1, v1, :cond_52

    .line 50
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    const-string v2, "start task \'recovery wakeup work\'"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    if-nez v1, :cond_45

    .line 52
    new-instance v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    invoke-direct {v1, p0, v5}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$1;)V

    iput-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    .line 54
    :cond_45
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :cond_4f
    :goto_4f
    return-void

    .line 48
    :cond_50
    const/4 v1, 0x0

    goto :goto_2d

    .line 55
    :cond_52
    if-ne p1, v4, :cond_4f

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    if-eqz v1, :cond_4f

    .line 56
    sget-object v1, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->TAG:Ljava/lang/String;

    const-string v2, "stop task \'recovery wakeup work\'"

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    iput-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->mRecoveryWakeupWordRunnable:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler$RecoveryWakeupWordRunnable;

    goto :goto_4f
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 39
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0, p0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V

    .line 40
    return-void
.end method
