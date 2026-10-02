.class Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;
.super Ljava/lang/Object;
.source "PhicommChatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic val$userInput:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 214
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 219
    :try_start_6
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-nez v12, :cond_113

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u6210\u8bed\u63a5\u9f99"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2c

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u5f00\u59cb\u6210\u8bed"

    .line 220
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2c

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u6210\u8bed\u6e38\u620f"

    .line 221
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_113

    .line 223
    :cond_2c
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 224
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I

    .line 225
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    const-string v12, "PhicommChat"

    const-string v13, "\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u542f\u52a8"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v10, "\u672c\u6b21\u5f00\u59cb\u6210\u8bed\u63a5\u9f99\u6e38\u620f,\u4f60\u5148\u51fa\u4e00\u4e2a\u6210\u8bed\u3002\u8981\u6c42:\n1. \u7b2c\u4e00\u4e2a\u6210\u8bed\u96be\u5ea6\u522b\u592a\u9ad8,\u7528\u5e38\u89c1\u7684\u6210\u8bed\n2. \u53ea\u56de\u590d\u6210\u8bed\u672c\u8eab,\u4e0d\u8981\u89e3\u91ca,\u4e0d\u8981\u5176\u4ed6\u5185\u5bb9\n3. \u5fc5\u987b\u662f\u56db\u5b57\u6210\u8bed\n4. \u53ea\u56de\u590d\u4e00\u4e2a\u6210\u8bed,\u4e0d\u8981\u56de\u590d\u591a\u4e2a"

    .line 237
    .local v10, "prompt":Ljava/lang/String;
    const-string v12, "PhicommChat"

    const-string v13, "=== \u8c03\u7528\u5927\u6a21\u578b(\u6210\u8bed\u63a5\u9f99\u542f\u52a8) ==="

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prompt: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "response":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    if-eqz v11, :cond_af

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_af

    .line 246
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$500(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u622a\u53d6\u540e\u7b2c\u4e00\u4e2a\u6210\u8bed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_af
    if-eqz v11, :cond_b7

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_b9

    .line 251
    :cond_b7
    const-string v11, "\u4e00\u9a6c\u5f53\u5148"

    .line 254
    :cond_b9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u597d\u7684,\u6211\u4eec\u5f00\u59cb\u6210\u8bed\u63a5\u9f99!\u6211\u5148\u5f00\u59cb:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 390
    .end local v10    # "prompt":Ljava/lang/String;
    :cond_cc
    :goto_cc
    if-eqz v11, :cond_4ad

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4ad

    .line 392
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 393
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 395
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "=== \u8c03\u7528\u539f\u5382 TTS === "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->writeLog(Ljava/lang/String;)V
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$900(Ljava/lang/String;)V

    .line 396
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-nez v12, :cond_107

    .line 399
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 401
    :cond_107
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12, v11}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10c} :catch_292
    .catchall {:try_start_6 .. :try_end_10c} :catchall_47e

    .line 418
    :cond_10c
    :goto_10c
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 420
    .end local v11    # "response":Ljava/lang/String;
    :goto_112
    return-void

    .line 256
    :cond_113
    :try_start_113
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-eqz v12, :cond_2cb

    .line 258
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u9000\u51fa"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_143

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u7ed3\u675f"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_143

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u505c\u6b62"

    .line 259
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_143

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u4e0d\u73a9\u4e86"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_190

    .line 260
    :cond_143
    const-string v12, "PhicommChat"

    const-string v13, "\u7528\u6237\u8bf7\u6c42\u9000\u51fa\u6210\u8bed\u63a5\u9f99"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 262
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I

    .line 263
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u597d\u7684,\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u7ed3\u675f!\u4f60\u4e00\u5171\u5b8c\u6210\u4e86 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \u8f6e\u5bf9\u8bdd,\u975e\u5e38\u68d2!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 266
    .restart local v11    # "response":Ljava/lang/String;
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 267
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 268
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12, v11}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_189} :catch_292
    .catchall {:try_start_113 .. :try_end_189} :catchall_47e

    .line 418
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto :goto_112

    .line 274
    .end local v11    # "response":Ljava/lang/String;
    :cond_190
    :try_start_190
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # operator++ for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$208(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    .line 275
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    iget-object v13, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u6210\u8bed\u63a5\u9f99\u7b2c "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v14}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \u8f6e,\u7528\u6237\u8bf4: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u4e2d\u3002\n\u7528\u6237\u8bf4\u4e86:\u300c"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\u300d\n\u8bf7\u4f60\u6839\u636e\u6210\u8bed\u63a5\u9f99\u89c4\u5219(\u6700\u540e\u4e00\u4e2a\u5b57\u4f5c\u4e3a\u4e0b\u4e00\u4e2a\u6210\u8bed\u7684\u7b2c\u4e00\u4e2a\u5b57)\u63a5\u4e00\u4e2a\u6210\u8bed\u3002\n\u8981\u6c42:\n1. \u53ea\u56de\u590d\u6210\u8bed\u672c\u8eab,\u4e0d\u8981\u89e3\u91ca,\u4e0d\u8981\u5176\u4ed6\u5185\u5bb9\n2. \u5fc5\u987b\u662f\u56db\u5b57\u6210\u8bed\n3. \u4e0d\u80fd\u91cd\u590d\u4f7f\u7528\u5df2\u7ecf\u8bf4\u8fc7\u7684\u6210\u8bed\n4. \u53ea\u56de\u590d\u4e00\u4e2a\u6210\u8bed,\u4e0d\u8981\u56de\u590d\u591a\u4e2a"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 289
    .restart local v10    # "prompt":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=== \u8c03\u7528\u5927\u6a21\u578b(\u6210\u8bed\u63a5\u9f99\u7b2c "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static {v14}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " \u8f6e) ==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7528\u6237\u8f93\u5165: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Prompt: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v10, v13}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 295
    .restart local v11    # "response":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-eqz v11, :cond_280

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_280

    .line 299
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$500(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 300
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u622a\u53d6\u540e\u6210\u8bed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_280
    if-eqz v11, :cond_288

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_cc

    .line 304
    :cond_288
    const-string v11, "\u6211\u60f3\u60f3...\u8fd9\u4e2a\u6709\u70b9\u96be,\u4f60\u8d62\u4e86!"

    .line 305
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_290} :catch_292
    .catchall {:try_start_190 .. :try_end_290} :catchall_47e

    goto/16 :goto_cc

    .line 410
    .end local v10    # "prompt":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    :catch_292
    move-exception v5

    .line 411
    .local v5, "e":Ljava/lang/Exception;
    :try_start_293
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "chat failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const-string v13, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 414
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-eqz v12, :cond_2c3

    .line 415
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_2c3
    .catchall {:try_start_293 .. :try_end_2c3} :catchall_47e

    .line 418
    :cond_2c3
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto/16 :goto_112

    .line 310
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2cb
    :try_start_2cb
    const-string v12, "PhicommChat"

    const-string v13, "=== \u8c03\u7528\u5927\u6a21\u578b(\u666e\u901a\u5bf9\u8bdd) ==="

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7528\u6237\u8f93\u5165: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$700(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-nez v12, :cond_30b

    .line 316
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 317
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    new-instance v13, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    invoke-direct {v13}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;-><init>()V

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 318
    const-string v12, "PhicommChat"

    const-string v13, "\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f\u542f\u52a8(\u4ec5\u5927\u6a21\u578b\u573a\u666f)"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_30b
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u6e05\u7a7a\u8bb0\u5fc6"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_31f

    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    const-string v13, "\u6e05\u7a7a\u5bf9\u8bdd"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_37c

    .line 323
    :cond_31f
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaId()Ljava/lang/String;

    move-result-object v9

    .line 324
    .local v9, "pid":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u7528\u6237\u8bf7\u6c42\u6e05\u7a7a persona["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] \u5bf9\u8bdd\u8bb0\u5fc6"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {v9}, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->clear(Ljava/lang/String;)V

    .line 328
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 329
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 330
    const-string v12, "PhicommChat"

    const-string v13, "\u5df2\u9000\u51fa\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v11, "\u6210\u529f\u6e05\u7406"

    .line 336
    .restart local v11    # "response":Ljava/lang/String;
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 337
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 340
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v12, v11}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12, v11}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 343
    const-string v12, "PhicommChat"

    const-string v13, "=== \u8bb0\u5fc6\u6e05\u7a7a\u5b8c\u6210,\u9000\u51fa\u591a\u8f6e\u6a21\u5f0f ==="

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_374} :catch_292
    .catchall {:try_start_2cb .. :try_end_374} :catchall_47e

    .line 418
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto/16 :goto_112

    .line 348
    .end local v9    # "pid":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    :cond_37c
    :try_start_37c
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v12

    if-nez v12, :cond_3c9

    .line 349
    const-string v12, "PhicommChat"

    const-string v13, "openAIClient is null! \u5c1d\u8bd5\u91cd\u65b0\u521d\u59cb\u5316..."

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_38b} :catch_292
    .catchall {:try_start_37c .. :try_end_38b} :catchall_47e

    .line 351
    :try_start_38b
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    .line 352
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v3

    .line 353
    .local v3, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    new-instance v13, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-direct {v13, v3}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$402(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 354
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u91cd\u65b0\u521d\u59cb\u5316\u6210\u529f, model="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c9
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_3c9} :catch_486
    .catchall {:try_start_38b .. :try_end_3c9} :catchall_47e

    .line 360
    .end local v3    # "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    .end local v4    # "context":Landroid/content/Context;
    :cond_3c9
    :goto_3c9
    :try_start_3c9
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v12

    if-eqz v12, :cond_4a4

    .line 362
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaId()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "activePersonaId":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaConfig()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v0

    .line 364
    .local v0, "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v0, :cond_4a1

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "activeSysPrompt":Ljava/lang/String;
    :goto_3df
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->getHistory(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    move-result-object v8

    .line 366
    .local v8, "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->getFormattedHistory()Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, "historyText":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Active persona="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " hist_turns="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 369
    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 368
    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v12

    iget-object v13, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v12, v13, v7, v2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 374
    .restart local v11    # "response":Ljava/lang/String;
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    if-eqz v11, :cond_464

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_464

    .line 378
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    invoke-virtual {v8, v12, v11}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->addTurn(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u4fdd\u5b58\u5230 persona["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] \u5386\u53f2,\u8f6e\u6570: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 380
    invoke-virtual {v8}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 379
    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .end local v0    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v1    # "activePersonaId":Ljava/lang/String;
    .end local v2    # "activeSysPrompt":Ljava/lang/String;
    .end local v7    # "historyText":Ljava/lang/String;
    .end local v8    # "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    :cond_464
    :goto_464
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47c
    .catch Ljava/lang/Exception; {:try_start_3c9 .. :try_end_47c} :catch_292
    .catchall {:try_start_3c9 .. :try_end_47c} :catchall_47e

    goto/16 :goto_cc

    .line 418
    .end local v11    # "response":Ljava/lang/String;
    :catchall_47e
    move-exception v12

    iget-object v13, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v14, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static {v13, v14}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 419
    throw v12

    .line 355
    :catch_486
    move-exception v6

    .line 356
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_487
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\u91cd\u65b0\u521d\u59cb\u5316\u5931\u8d25: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3c9

    .line 364
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v0    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .restart local v1    # "activePersonaId":Ljava/lang/String;
    :cond_4a1
    const/4 v2, 0x0

    goto/16 :goto_3df

    .line 383
    .end local v0    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v1    # "activePersonaId":Ljava/lang/String;
    :cond_4a4
    const-string v12, "PhicommChat"

    const-string v13, "openAIClient \u4ecd\u4e3a null, \u65e0\u6cd5\u8c03\u7528\u5927\u6a21\u578b"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v11, 0x0

    .restart local v11    # "response":Ljava/lang/String;
    goto :goto_464

    .line 404
    :cond_4ad
    const-string v12, "PhicommChat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=== API \u8fd4\u56de null, openAIClient="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static {v14}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ==="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const-string v13, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 406
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v12

    if-eqz v12, :cond_10c

    .line 407
    iget-object v12, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    const/4 v13, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static {v12, v13}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_4e6
    .catch Ljava/lang/Exception; {:try_start_487 .. :try_end_4e6} :catch_292
    .catchall {:try_start_487 .. :try_end_4e6} :catchall_47e

    goto/16 :goto_10c
.end method
