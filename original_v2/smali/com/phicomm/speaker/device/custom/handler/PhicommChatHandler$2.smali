.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;
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
    .line 433
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 437
    const-string v0, "PhicommChat"

    const-string v1, "\u6210\u8bed\u63a5\u9f99\u8d85\u65f6,\u81ea\u52a8\u9000\u51fa"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v0, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 439
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v0, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I

    .line 440
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1000(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    const-string v1, "\u8d85\u65f6\u672a\u68c0\u6d4b\u5230\u8bed\u97f3,\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u7ed3\u675f"

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1000(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 444
    :cond_34
    return-void
.end method
