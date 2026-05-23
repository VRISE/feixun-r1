.class Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;
.super Ljava/lang/Object;
.source "PhicommDataStatisticHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 67
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 72
    :cond_6
    :goto_6
    return-void

    .line 68
    :cond_7
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;)Lnluparser/MixtureProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .line 69
    .local v0, "mixture":Lnluparser/scheme/Mixture;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 70
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendMainWakeupStatisticToPhicomm(Lnluparser/scheme/Mixture;)V
    invoke-static {v1, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;Lnluparser/scheme/Mixture;)V

    goto :goto_6
.end method
