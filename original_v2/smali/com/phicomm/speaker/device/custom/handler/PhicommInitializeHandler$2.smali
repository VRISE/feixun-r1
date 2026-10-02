.class Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$2;
.super Ljava/lang/Object;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->initPhicommBusiness()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->forceNormalModeAtBoot()V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$300(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V

    .line 196
    return-void
.end method
