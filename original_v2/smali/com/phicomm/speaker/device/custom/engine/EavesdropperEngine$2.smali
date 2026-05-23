.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;
.super Ljava/lang/Object;
.source "EavesdropperEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->onWakeupDetected()V
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
    .line 181
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->wakeupProcessingCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$300(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1b

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$2;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$402(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;Z)Z

    .line 186
    # getter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wakeup processing completed, resuming"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_1b
    return-void
.end method
