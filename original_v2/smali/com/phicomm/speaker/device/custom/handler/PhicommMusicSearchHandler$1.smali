.class Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;
.super Ljava/lang/Object;
.source "PhicommMusicSearchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic val$keyword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->val$keyword:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler$1;->val$keyword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->searchAndPlay(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommMusicSearchHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V

    .line 160
    return-void
.end method
