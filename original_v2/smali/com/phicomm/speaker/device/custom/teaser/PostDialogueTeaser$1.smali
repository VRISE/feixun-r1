.class Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$r:Ljava/lang/String;

.field final synthetic val$u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$u:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$u:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$r:Ljava/lang/String;

    # invokes: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$000(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
