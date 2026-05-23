.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$3;
.super Ljava/lang/Object;
.source "EavesdropperEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->onInteractionDetected()V
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
    .line 206
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$3;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine$3;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->isWakeupProcessing:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->access$402(Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;Z)Z

    .line 210
    return-void
.end method
