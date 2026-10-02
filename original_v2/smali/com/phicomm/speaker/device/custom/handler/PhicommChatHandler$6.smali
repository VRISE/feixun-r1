.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;
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

.field final synthetic val$appCtx:Landroid/content/Context;

.field final synthetic val$teaseReply:Ljava/lang/String;

.field final synthetic val$teaseUser:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$appCtx:Landroid/content/Context;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$teaseUser:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$teaseReply:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 557
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$appCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$teaseUser:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;->val$teaseReply:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 558
    return-void
.end method
