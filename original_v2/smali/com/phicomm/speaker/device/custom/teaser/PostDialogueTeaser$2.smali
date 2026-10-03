.class Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$dialogue:Ljava/lang/String;

.field final synthetic val$sysPrompt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$appContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$dialogue:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$sysPrompt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$appContext:Landroid/content/Context;

    # invokes: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->getLLM(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$200(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v0

    const-string v1, "\u4e0a\u9762\u662f\u7528\u6237\u521a\u5bf9\u667a\u80fd\u97f3\u7bb1\u8bf4\u7684\u4e00\u53e5\u8bdd\u3002\u8bf7\u7528\u4f60\u7684\u5634\u8d31\u98ce\u683c,\u9488\u5bf9\u4ed6\u8bf4\u7684\u8fd9\u53e5\u8bdd\u6765\u4e00\u53e5\u7b80\u77ed\u8c03\u4f83\u3002\u8981\u6c42: \u53ea\u56de\u590d\u8c03\u4f83\u90a3\u4e00\u53e5\u8bdd,\u4e0d\u8d85\u8fc7 25 \u4e2a\u5b57,\u4e0d\u8981\u4efb\u4f55\u89e3\u91ca\u6216\u524d\u7f00,\u4e5f\u4e0d\u8981\u91cd\u590d\u4ed6\u8bf4\u7684\u8bdd\u3001\u4e0d\u8981\u56de\u7b54\u4ed6\u7684\u95ee\u9898\u3002"

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$dialogue:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->val$sysPrompt:Ljava/lang/String;

    const-string v4, "r1-teaser"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistoryEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$2;->call()Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v0

    return-object v0
.end method
