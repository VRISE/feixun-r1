.class Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;
.super Lokhttp3/WebSocketListener;
.source "XfyunTtsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->synthesizeToFile(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

.field final synthetic val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

.field final synthetic val$outputPath:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$outputPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .registers 11
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WebSocket \u5173\u95ed: code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 319
    const-string v4, "XfyunTtsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebSocket \u5173\u95ed: code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$400(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$500(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-lez v4, :cond_f3

    .line 324
    :try_start_56
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$outputPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v2, "outputFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 326
    .local v3, "parent":Ljava/io/File;
    if-eqz v3, :cond_6c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 327
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 329
    :cond_6c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 330
    .local v1, "fos":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$500(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 331
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 333
    const-string v4, "XfyunTtsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS \u97f3\u9891\u5df2\u4fdd\u5b58: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$outputPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \u5927\u5c0f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->audioBuffer:Ljava/io/ByteArrayOutputStream;
    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$500(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/io/ByteArrayOutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$outputPath:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_bc} :catch_bd

    .line 342
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "outputFile":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    :cond_bc
    :goto_bc
    return-void

    .line 335
    :catch_bd
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "XfyunTtsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u97f3\u9891\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u5931\u8d25: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    goto :goto_bc

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f3
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->completed:Z
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$400(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 340
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5408\u6210\u672a\u5b8c\u6210,\u9519\u8bef: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # getter for: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->errorMsg:Ljava/lang/String;
    invoke-static {v6}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$600(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    goto :goto_bc
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .registers 7
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "t"    # Ljava/lang/Throwable;
    .param p3, "response"    # Lokhttp3/Response;

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebSocket \u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSocket \u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$callback:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8fde\u63a5\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;->onError(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .registers 5
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u6587\u672c\u6d88\u606f, \u957f\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->handleTextMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    invoke-static {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$300(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .registers 6
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "bytes"    # Lokio/ByteString;

    .prologue
    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6536\u5230\u4e8c\u8fdb\u5236\u6d88\u606f, \u957f\u5ea6: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 313
    const-string v0, "XfyunTtsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u4e8c\u8fdb\u5236\u6570\u636e,\u957f\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .registers 5
    .param p1, "webSocket"    # Lokhttp3/WebSocket;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 296
    const-string v0, "WebSocket \u8fde\u63a5\u5df2\u6253\u5f00"

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->writeLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$000(Ljava/lang/String;)V

    .line 297
    const-string v0, "XfyunTtsClient"

    const-string v1, "WebSocket \u8fde\u63a5\u5df2\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->this$0:Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$2;->val$text:Ljava/lang/String;

    # invokes: Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->sendRequest(Lokhttp3/WebSocket;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;->access$200(Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient;Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 301
    return-void
.end method
