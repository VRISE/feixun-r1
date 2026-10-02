.class Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->maybeTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gen:I

.field final synthetic val$r:Ljava/lang/String;

.field final synthetic val$u:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iput p2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$gen:I

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$u:Ljava/lang/String;

    iput-object p5, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$r:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 123
    # getter for: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$gen:I

    if-eq v0, v1, :cond_3f

    .line 124
    const-string v0, "PostTeaser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEASE] superseded/cancelled (gen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$gen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 125
    # getter for: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sGen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$000()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_3e
    return-void

    .line 128
    :cond_3f
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$u:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$1;->val$r:Ljava/lang/String;

    # invokes: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$100(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method
