.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$5;
.super Ljava/lang/Object;
.source "PhicommChatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->handleTtsPlayingEnd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$5;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$5;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1000(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterASR()V

    .line 483
    return-void
.end method
