.class public abstract Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/ANTEngine$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/AbstractANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/engine/AbstractANTEngine;


# direct methods
.method protected constructor <init>(Lcom/unisound/vui/engine/AbstractANTEngine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/vui/engine/AbstractANTEngine;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelASR()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doCancelASR()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public cancelEngine()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doCancelEngine()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public cancelTTS()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doCancelTTS()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public enterASR()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doEnterASR()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public enterWakeup(Z)V
    .registers 3
    .param p1, "playBeep"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->doEnterWakeup(Z)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public initEngine()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doInitEngine()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public initializeMode()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doInitializeMode()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public initializeSdk()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doInitializeSdk()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public insertVocab(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .param p2, "grammarTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "vocabcontent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTEngine;->insertVocab0(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public markModeInitialized()V
    .registers 4

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    # getter for: Lcom/unisound/vui/engine/AbstractANTEngine;->MODE_INITIALIZED:Lcom/unisound/vui/util/AttributeKey;
    invoke-static {}, Lcom/unisound/vui/engine/AbstractANTEngine;->access$200()Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/vui/util/Attribute;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/Error;

    const-string v1, "markModeInitialized"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method public playBuffer([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->doPlayBuffer([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public playTTS(Ljava/lang/String;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "[PCM]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    const-string v0, "\\[fileName\\](.*)\\[fileName\\]"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/StringUtils;->matchFind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unisound/vui/util/UserPerferenceUtil;->getPcmFileSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSPCMFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<PCM>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getTTSPCMFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</PCM>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->doPlayTTS(Ljava/lang/String;)V

    :goto_6e
    return-void

    :cond_6f
    const-string v0, "NativeANTEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pcm file not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    const-string v0, "\\[txt\\](.*)\\[txt\\]"

    invoke-static {p1, v0}, Lcom/unisound/vui/util/StringUtils;->matchFind(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v1, v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doPlayTTS(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_92} :catch_93

    goto :goto_6e

    :catch_93
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    :cond_98
    :try_start_98
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->doPlayTTS(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_93

    goto :goto_6e
.end method

.method public setAndroidContext(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    # getter for: Lcom/unisound/vui/engine/AbstractANTEngine;->ANDROID_CONTEXT:Lcom/unisound/vui/util/AttributeKey;
    invoke-static {}, Lcom/unisound/vui/engine/AbstractANTEngine;->access$100()Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/Attribute;->setIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWakeupWord(Ljava/util/List;Z)V
    .registers 5
    .param p2, "playBeep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    # getter for: Lcom/unisound/vui/engine/AbstractANTEngine;->WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;
    invoke-static {}, Lcom/unisound/vui/engine/AbstractANTEngine;->access$000()Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/vui/engine/AbstractANTEngine;->setWakeupWord0(Ljava/util/List;Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public stopASR()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doStopASR()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public stopWakeup()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/AbstractANTEngine;->doStopWakeup()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public updateCustomWakeupWord(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->updateWakeupWord1(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public updateWakeupWord(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "wakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    # getter for: Lcom/unisound/vui/engine/AbstractANTEngine;->WAKEUP_WORD:Lcom/unisound/vui/util/AttributeKey;
    invoke-static {}, Lcom/unisound/vui/engine/AbstractANTEngine;->access$000()Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/AbstractANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->updateWakeupWord0(Ljava/util/List;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public write(Ljava/lang/Object;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/unisound/vui/engine/AbstractANTEngine$AbstractUnsafe;->this$0:Lcom/unisound/vui/engine/AbstractANTEngine;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/engine/AbstractANTEngine;->doWrite(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
