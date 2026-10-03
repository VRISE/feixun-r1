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
    .line 231
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 238
    const/4 v12, 0x0

    .line 239
    .local v12, "llmAudio":[B
    const/4 v13, 0x0

    .line 242
    .local v13, "llmAudioFormat":Ljava/lang/String;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-nez v19, :cond_1b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u6210\u8bed\u63a5\u9f99"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u5f00\u59cb\u6210\u8bed"

    .line 243
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u6210\u8bed\u6e38\u620f"

    .line 244
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1b9

    .line 246
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    const-string v19, "PhicommChat"

    const-string v20, "\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u542f\u52a8"

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v16, "\u672c\u6b21\u5f00\u59cb\u6210\u8bed\u63a5\u9f99\u6e38\u620f,\u4f60\u5148\u51fa\u4e00\u4e2a\u6210\u8bed\u3002\u8981\u6c42:\n1. \u7b2c\u4e00\u4e2a\u6210\u8bed\u96be\u5ea6\u522b\u592a\u9ad8,\u7528\u5e38\u89c1\u7684\u6210\u8bed\n2. \u53ea\u56de\u590d\u6210\u8bed\u672c\u8eab,\u4e0d\u8981\u89e3\u91ca,\u4e0d\u8981\u5176\u4ed6\u5185\u5bb9\n3. \u5fc5\u987b\u662f\u56db\u5b57\u6210\u8bed\n4. \u53ea\u56de\u590d\u4e00\u4e2a\u6210\u8bed,\u4e0d\u8981\u56de\u590d\u591a\u4e2a"

    .line 260
    .local v16, "prompt":Ljava/lang/String;
    const-string v19, "PhicommChat"

    const-string v20, "=== \u8c03\u7528\u5927\u6a21\u578b(\u6210\u8bed\u63a5\u9f99\u542f\u52a8) ==="

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Prompt: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 265
    .local v18, "response":Ljava/lang/String;
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz v18, :cond_f4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_f4

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$500(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 270
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u622a\u53d6\u540e\u7b2c\u4e00\u4e2a\u6210\u8bed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_f4
    if-eqz v18, :cond_fc

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_fe

    .line 274
    :cond_fc
    const-string v18, "\u4e00\u9a6c\u5f53\u5148"

    .line 277
    :cond_fe
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u597d\u7684,\u6211\u4eec\u5f00\u59cb\u6210\u8bed\u63a5\u9f99!\u6211\u5148\u5f00\u59cb:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 426
    .end local v16    # "prompt":Ljava/lang/String;
    :cond_115
    :goto_115
    if-eqz v18, :cond_70c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_70c

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-nez v19, :cond_153

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$902(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 441
    :cond_153
    if-eqz v12, :cond_6e3

    array-length v0, v12

    move/from16 v19, v0

    if-lez v19, :cond_6e3

    .line 442
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "=== \u64ad\u653e\u8c46\u5305\u8bed\u97f3 === "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->writeLog(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1000(Ljava/lang/String;)V

    .line 443
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u8c46\u5305\u8bed\u97f3\u64ad\u653e\u56de\u7b54: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    array-length v0, v12

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u5b57\u8282"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    .line 445
    .local v6, "appCtx":Landroid/content/Context;
    new-instance v19, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;)V

    move-object/from16 v0, v19

    invoke-static {v6, v12, v13, v0}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;->play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1ad} :catch_3bc
    .catchall {:try_start_d .. :try_end_1ad} :catchall_677

    .line 484
    .end local v6    # "appCtx":Landroid/content/Context;
    :cond_1ad
    :goto_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 486
    .end local v18    # "response":Ljava/lang/String;
    :goto_1b8
    return-void

    .line 279
    :cond_1b9
    :try_start_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-eqz v19, :cond_40e

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u9000\u51fa"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u7ed3\u675f"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u505c\u6b62"

    .line 282
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u4e0d\u73a9\u4e86"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_276

    .line 283
    :cond_1fd
    const-string v19, "PhicommChat"

    const-string v20, "\u7528\u6237\u8bf7\u6c42\u9000\u51fa\u6210\u8bed\u63a5\u9f99"

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I

    .line 286
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u597d\u7684,\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u7ed3\u675f!\u4f60\u4e00\u5171\u5b8c\u6210\u4e86 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v20, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v20 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " \u8f6e\u5bf9\u8bdd,\u975e\u5e38\u68d2!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 289
    .restart local v18    # "response":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_1b9 .. :try_end_269} :catch_3bc
    .catchall {:try_start_1b9 .. :try_end_269} :catchall_677

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto/16 :goto_1b8

    .line 297
    .end local v18    # "response":Ljava/lang/String;
    :cond_276
    :try_start_276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # operator++ for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$208(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v20, v0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u6210\u8bed\u63a5\u9f99\u7b2c "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v21, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v21 .. v21}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u8f6e,\u7528\u6237\u8bf4: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "\u6210\u8bed\u63a5\u9f99\u6e38\u620f\u4e2d\u3002\n\u7528\u6237\u8bf4\u4e86:\u300c"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u300d\n\u8bf7\u4f60\u6839\u636e\u6210\u8bed\u63a5\u9f99\u89c4\u5219(\u6700\u540e\u4e00\u4e2a\u5b57\u4f5c\u4e3a\u4e0b\u4e00\u4e2a\u6210\u8bed\u7684\u7b2c\u4e00\u4e2a\u5b57)\u63a5\u4e00\u4e2a\u6210\u8bed\u3002\n\u8981\u6c42:\n1. \u53ea\u56de\u590d\u6210\u8bed\u672c\u8eab,\u4e0d\u8981\u89e3\u91ca,\u4e0d\u8981\u5176\u4ed6\u5185\u5bb9\n2. \u5fc5\u987b\u662f\u56db\u5b57\u6210\u8bed\n3. \u4e0d\u80fd\u91cd\u590d\u4f7f\u7528\u5df2\u7ecf\u8bf4\u8fc7\u7684\u6210\u8bed\n4. \u53ea\u56de\u590d\u4e00\u4e2a\u6210\u8bed,\u4e0d\u8981\u56de\u590d\u591a\u4e2a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 312
    .restart local v16    # "prompt":Ljava/lang/String;
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "=== \u8c03\u7528\u5927\u6a21\u578b(\u6210\u8bed\u63a5\u9f99\u7b2c "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v21, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I
    invoke-static/range {v21 .. v21}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u8f6e) ==="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u7528\u6237\u8f93\u5165: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Prompt: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 318
    .restart local v18    # "response":Ljava/lang/String;
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    if-eqz v18, :cond_3a5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3a5

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$500(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 323
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u622a\u53d6\u540e\u6210\u8bed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_3a5
    if-eqz v18, :cond_3ad

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_115

    .line 327
    :cond_3ad
    const-string v18, "\u6211\u60f3\u60f3...\u8fd9\u4e2a\u6709\u70b9\u96be,\u4f60\u8d62\u4e86!"

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_276 .. :try_end_3ba} :catch_3bc
    .catchall {:try_start_276 .. :try_end_3ba} :catchall_677

    goto/16 :goto_115

    .line 475
    .end local v16    # "prompt":Ljava/lang/String;
    .end local v18    # "response":Ljava/lang/String;
    :catch_3bc
    move-exception v9

    .line 476
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3bd
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "chat failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    const-string v20, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    invoke-interface/range {v19 .. v20}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-eqz v19, :cond_401

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_401
    .catchall {:try_start_3bd .. :try_end_401} :catchall_677

    .line 484
    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto/16 :goto_1b8

    .line 333
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_40e
    :try_start_40e
    const-string v19, "PhicommChat"

    const-string v20, "=== \u8c03\u7528\u5927\u6a21\u578b(\u666e\u901a\u5bf9\u8bdd) ==="

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u7528\u6237\u8f93\u5165: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$700(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-nez v19, :cond_45f

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    invoke-direct/range {v20 .. v20}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;-><init>()V

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 341
    const-string v19, "PhicommChat"

    const-string v20, "\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f\u542f\u52a8(\u4ec5\u5927\u6a21\u578b\u573a\u666f)"

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_45f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u6e05\u7a7a\u8bb0\u5fc6"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_47b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\u6e05\u7a7a\u5bf9\u8bdd"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_501

    .line 346
    :cond_47b
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaId()Ljava/lang/String;

    move-result-object v15

    .line 347
    .local v15, "pid":Ljava/lang/String;
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u7528\u6237\u8bf7\u6c42\u6e05\u7a7a persona["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] \u5bf9\u8bdd\u8bb0\u5fc6"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {v15}, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->clear(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 353
    const-string v19, "PhicommChat"

    const-string v20, "\u5df2\u9000\u51fa\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f"

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v18, "\u6210\u529f\u6e05\u7406"

    .line 359
    .restart local v18    # "response":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopWakeup()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->stopASR()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 366
    const-string v19, "PhicommChat"

    const-string v20, "=== \u8bb0\u5fc6\u6e05\u7a7a\u5b8c\u6210,\u9000\u51fa\u591a\u8f6e\u6a21\u5f0f ==="

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f4
    .catch Ljava/lang/Exception; {:try_start_40e .. :try_end_4f4} :catch_3bc
    .catchall {:try_start_40e .. :try_end_4f4} :catchall_677

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    goto/16 :goto_1b8

    .line 371
    .end local v15    # "pid":Ljava/lang/String;
    .end local v18    # "response":Ljava/lang/String;
    :cond_501
    :try_start_501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v19

    if-nez v19, :cond_55c

    .line 372
    const-string v19, "PhicommChat"

    const-string v20, "openAIClient is null! \u5c1d\u8bd5\u91cd\u65b0\u521d\u59cb\u5316..."

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_514
    .catch Ljava/lang/Exception; {:try_start_501 .. :try_end_514} :catch_3bc
    .catchall {:try_start_501 .. :try_end_514} :catchall_677

    .line 374
    :try_start_514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v8

    .line 375
    .local v8, "context":Landroid/content/Context;
    invoke-static {v8}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v7

    .line 376
    .local v7, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$402(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 377
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u91cd\u65b0\u521d\u59cb\u5316\u6210\u529f, model="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", url="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getBaseUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55c
    .catch Ljava/lang/Exception; {:try_start_514 .. :try_end_55c} :catch_684
    .catchall {:try_start_514 .. :try_end_55c} :catchall_677

    .line 387
    .end local v7    # "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    .end local v8    # "context":Landroid/content/Context;
    :cond_55c
    :goto_55c
    const/16 v19, 0x1

    :try_start_55e
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 388
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->cancelPending()V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v19

    if-eqz v19, :cond_6d8

    .line 392
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaId()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "activePersonaId":Ljava/lang/String;
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->getCurrentPersonaConfig()Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v3

    .line 394
    .local v3, "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v3, :cond_6a1

    invoke-virtual {v3}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getSystemPrompt()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "activeSysPrompt":Ljava/lang/String;
    :goto_582
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/ai/PersonaConversationManager;->getHistory(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    move-result-object v14

    .line 396
    .local v14, "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    invoke-virtual {v14}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->getFormattedHistory()Ljava/lang/String;

    move-result-object v11

    .line 398
    .local v11, "historyText":Ljava/lang/String;
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Active persona="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " hist_turns="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 399
    invoke-virtual {v14}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 398
    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v11, v5, v2}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;->chatWithHistoryEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;

    move-result-object v17

    .line 404
    .local v17, "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    if-nez v17, :cond_6a4

    const/16 v18, 0x0

    .line 405
    .restart local v18    # "response":Ljava/lang/String;
    :goto_5d2
    if-nez v17, :cond_6ac

    const/4 v12, 0x0

    .line 406
    :goto_5d5
    if-nez v17, :cond_6b2

    const/4 v13, 0x0

    .line 408
    :goto_5d8
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v20, "PhicommChat"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u968f\u56de\u590d\u5e26\u56de\u7684\u8bed\u97f3: "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 410
    if-nez v12, :cond_6b8

    const-string v19, "\u65e0(\u7528\u539f\u5382 TTS)"

    :goto_609
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 409
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz v18, :cond_659

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_659

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$userInput:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->addTurn(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u4fdd\u5b58\u5230 persona["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] \u5386\u53f2,\u8f6e\u6570: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 416
    invoke-virtual {v14}, Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 415
    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v3    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v4    # "activePersonaId":Ljava/lang/String;
    .end local v5    # "activeSysPrompt":Ljava/lang/String;
    .end local v11    # "historyText":Ljava/lang/String;
    .end local v14    # "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .end local v17    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    :cond_659
    :goto_659
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u5927\u6a21\u578b\u8fd4\u56de: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_675
    .catch Ljava/lang/Exception; {:try_start_55e .. :try_end_675} :catch_3bc
    .catchall {:try_start_55e .. :try_end_675} :catchall_677

    goto/16 :goto_115

    .line 484
    .end local v18    # "response":Ljava/lang/String;
    :catchall_677
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z
    invoke-static/range {v20 .. v21}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z

    .line 485
    throw v19

    .line 378
    :catch_684
    move-exception v10

    .line 379
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_685
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u91cd\u65b0\u521d\u59cb\u5316\u5931\u8d25: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55c

    .line 394
    .end local v10    # "ex":Ljava/lang/Exception;
    .restart local v3    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .restart local v4    # "activePersonaId":Ljava/lang/String;
    :cond_6a1
    const/4 v5, 0x0

    goto/16 :goto_582

    .line 404
    .restart local v5    # "activeSysPrompt":Ljava/lang/String;
    .restart local v11    # "historyText":Ljava/lang/String;
    .restart local v14    # "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .restart local v17    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    :cond_6a4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_5d2

    .line 405
    .restart local v18    # "response":Ljava/lang/String;
    :cond_6ac
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audio:[B

    goto/16 :goto_5d5

    .line 406
    :cond_6b2
    move-object/from16 v0, v17

    iget-object v13, v0, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;->audioFormat:Ljava/lang/String;

    goto/16 :goto_5d8

    .line 410
    :cond_6b8
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v12

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, " \u5b57\u8282"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_609

    .line 419
    .end local v3    # "activeCfg":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    .end local v4    # "activePersonaId":Ljava/lang/String;
    .end local v5    # "activeSysPrompt":Ljava/lang/String;
    .end local v11    # "historyText":Ljava/lang/String;
    .end local v14    # "personaHistory":Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .end local v17    # "r":Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
    .end local v18    # "response":Ljava/lang/String;
    :cond_6d8
    const-string v19, "PhicommChat"

    const-string v20, "openAIClient \u4ecd\u4e3a null, \u65e0\u6cd5\u8c03\u7528\u5927\u6a21\u578b"

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v18, 0x0

    .restart local v18    # "response":Ljava/lang/String;
    goto/16 :goto_659

    .line 462
    :cond_6e3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "=== \u8c03\u7528\u539f\u5382 TTS === "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->writeLog(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$1000(Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    goto/16 :goto_1ad

    .line 467
    :cond_70c
    const-string v19, "PhicommChat"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "=== API \u8fd4\u56de null, openAIClient="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v21, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    invoke-static/range {v21 .. v21}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ==="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    move-object/from16 v19, v0

    const-string v20, "\u6a21\u578b\u8c03\u7528\u5931\u8d25"

    invoke-interface/range {v19 .. v20}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v19}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z

    move-result v19

    if-eqz v19, :cond_1ad

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z
    invoke-static/range {v19 .. v20}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    :try_end_75b
    .catch Ljava/lang/Exception; {:try_start_685 .. :try_end_75b} :catch_3bc
    .catchall {:try_start_685 .. :try_end_75b} :catchall_677

    goto/16 :goto_1ad
.end method
