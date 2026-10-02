.class Lcom/unisound/vui/handler/filter/NLUDispatcher$1;
.super Ljava/lang/Object;
.source "NLUDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/filter/NLUDispatcher;->scheduleRecogStallWatchdog(Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .param p1, "this$0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    iput-object p2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 62
    const-string v1, "NLUDispatcher"

    const-string v2, "[WATCHDOG] recognition stalled > 8000ms (dead cloud ASR?), force cancelEngine to recover"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :try_start_7
    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_13

    .line 69
    :goto_c
    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->this$0:Lcom/unisound/vui/handler/filter/NLUDispatcher;

    const/4 v2, 0x0

    # setter for: Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->access$002(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 70
    return-void

    .line 66
    :catch_13
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "NLUDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WATCHDOG] cancelEngine failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method
