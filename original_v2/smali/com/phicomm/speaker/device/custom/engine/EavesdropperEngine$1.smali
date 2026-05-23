.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;
.super Ljava/lang/Object;
.source "EavesdropperEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isRunning:Z
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 160
    :cond_8
    :goto_8
    return-void

    .line 156
    :cond_9
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->isAnyPlaying()Z

    move-result v0

    if-nez v0, :cond_8

    .line 157
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$100(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 158
    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[GO] dormant session restart"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->session:Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$100(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperSession;->startListening()V

    goto :goto_8
.end method
