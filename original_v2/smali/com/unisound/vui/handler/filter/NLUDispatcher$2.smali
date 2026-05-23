.class Lcom/unisound/vui/handler/filter/NLUDispatcher$2;
.super Ljava/lang/Object;
.source "NLUDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

.field final synthetic val$aNTHandlerContext:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .param p1, "this$0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    iput-object p2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->val$aNTHandlerContext:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 206
    const-string v1, "NLUDispatcher"

    const-string v2, "process asr or nlu result timeout, dispatch network error nlu "

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    const-string v2, "-90002"

    # invokes: Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;
    invoke-static {v1, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->access$000(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 208
    .local v0, "c":Lnluparser/scheme/NLU;
    const-string v1, "no network"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    iget-object v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->val$aNTHandlerContext:Lcom/unisound/vui/engine/ANTHandlerContext;

    # invokes: Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    invoke-static {v1, v2, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->access$100(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    .line 210
    return-void
.end method
