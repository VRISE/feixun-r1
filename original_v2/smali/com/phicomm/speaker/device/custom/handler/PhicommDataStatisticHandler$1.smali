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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 58
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;)Lnluparser/MixtureProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;->val$result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .local v0, "mixture":Lnluparser/scheme/Mixture;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 60
    const-string v1, "PhicommDataStatisticHandler"

    const-string v2, "PPP not sendMainWakeupStatisticToPhicomm"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "mixture":Lnluparser/scheme/Mixture;
    :cond_21
    return-void
.end method
