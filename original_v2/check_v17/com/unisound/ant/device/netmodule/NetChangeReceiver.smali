.class public Lcom/unisound/ant/device/netmodule/NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;,
        Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetChangeReceiver"


# instance fields
.field private aliveConnectListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;

.field private isOneTime:Z

.field private stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->isOneTime:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 47
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    .line 72
    :cond_9
    :goto_9
    return-void

    .line 50
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v1, "NetChangeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetChangeReceiver OnReceiver action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isOneTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->isOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "com.device.wifi.connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 53
    invoke-static {v4}, Lcom/unisound/vui/transport/config/RuntimeConfig;->setConnectedWifi(Z)V

    .line 54
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->isOneTime:Z

    if-eqz v1, :cond_9

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->isOneTime:Z

    .line 56
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;->onNetConnected()V

    goto :goto_9

    .line 58
    :cond_4e
    const-string v1, "com.device.wifi.disconnected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 59
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    if-eqz v1, :cond_9

    .line 60
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;->onNetDisconnected()V

    goto :goto_9

    .line 62
    :cond_60
    const-string v1, "com.device.wifi.connecting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 63
    iput-boolean v4, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->isOneTime:Z

    .line 64
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    if-eqz v1, :cond_9

    .line 65
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;->onNetConnecting()V

    goto :goto_9

    .line 67
    :cond_74
    const-string v1, "com.device.wifi.alive.connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 68
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->aliveConnectListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;

    if-eqz v1, :cond_9

    .line 69
    iget-object v1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->aliveConnectListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;

    invoke-interface {v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;->onNetAliveConnected()V

    goto :goto_9
.end method

.method public registerNetReceiverAndCheck(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    .line 95
    invoke-static {p1}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unisound/vui/transport/config/RuntimeConfig;->setConnectedWifi(Z)V

    .line 97
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    if-eqz v0, :cond_16

    .line 98
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;->onNetConnected()V

    .line 105
    :cond_16
    :goto_16
    return-void

    .line 101
    :cond_17
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    if-eqz v0, :cond_16

    .line 102
    iget-object v0, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    invoke-interface {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;->onNetDisconnected()V

    goto :goto_16
.end method

.method public registerNetStateReceiver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.device.wifi.connected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v2, "com.device.wifi.disconnected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v2, "com.device.wifi.connecting"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v2, "com.device.wifi.alive.connected"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    :try_start_19
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 88
    :goto_1c
    return-void

    .line 85
    :catch_1d
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NetChangeReceiver"

    const-string v3, "-->>this receiver is alreeady register "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public setAliveConnectListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->aliveConnectListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;

    .line 44
    return-void
.end method

.method public setStateListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->stateListener:Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetStateListener;

    .line 40
    return-void
.end method

.method public unregisterNetStateReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 113
    :goto_3
    return-void

    .line 110
    :catch_4
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetChangeReceiver"

    const-string v2, "-->>this receiver is not register or all ready unregister"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
