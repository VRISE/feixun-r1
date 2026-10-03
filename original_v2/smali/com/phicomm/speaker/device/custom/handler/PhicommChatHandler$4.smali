.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;
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

.field final synthetic val$teaseAfterAnswer:Z

.field final synthetic val$teaseUser:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;ZLjava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    iput-boolean p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->val$teaseAfterAnswer:Z

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->val$teaseUser:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$700(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 553
    const-string v0, "PhicommChat"

    const-string v1, "\u591a\u8f6e\u5bf9\u8bdd\u8d85\u65f6 15000ms,\u9000\u51fa\u591a\u8f6e\u6a21\u5f0f"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static {v0, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 555
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 556
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 558
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    .line 564
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->val$teaseAfterAnswer:Z

    if-eqz v0, :cond_40

    .line 566
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;->val$teaseUser:Ljava/lang/String;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;J)V

    .line 569
    :cond_40
    return-void
.end method
