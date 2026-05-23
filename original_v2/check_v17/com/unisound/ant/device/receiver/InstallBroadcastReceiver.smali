.class public Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;
    }
.end annotation


# static fields
.field private static final InstallFailAction:Ljava/lang/String; = "com.unisound.pandora.installfailed"

.field private static final TAG:Ljava/lang/String; = "InstallBroadcastReceiver"


# instance fields
.field private stateListener:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.unisound.pandora.installfailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 27
    iget-object v1, p0, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;->stateListener:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;

    invoke-interface {v1}, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;->onInstallFailed()V

    .line 29
    :cond_11
    return-void
.end method

.method public registerInstallStateReceiver(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.unisound.pandora.installfailed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "filter":Landroid/content/IntentFilter;
    :try_start_7
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 37
    :goto_a
    return-void

    .line 34
    :catch_b
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InstallBroadcastReceiver"

    const-string v3, "-->>this receiver is alreeady register "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public setStateListener(Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver;->stateListener:Lcom/unisound/ant/device/receiver/InstallBroadcastReceiver$InstallStateListener;

    .line 23
    return-void
.end method

.method public unregisterInstallStateReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 44
    :goto_3
    return-void

    .line 41
    :catch_4
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InstallBroadcastReceiver"

    const-string v2, "-->>this receiver is not register or all ready unregister"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
