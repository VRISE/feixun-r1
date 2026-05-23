.class final Lcom/unisound/vui/engine/NativeANTEngine$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/NativeANTEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/vui/engine/NativeANTEngine;

.field private final b:Lcom/unisound/vui/engine/ANTPipeline;


# direct methods
.method constructor <init>(Lcom/unisound/vui/engine/NativeANTEngine;Lcom/unisound/vui/engine/ANTPipeline;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->b:Lcom/unisound/vui/engine/ANTPipeline;

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "errorMSG"    # Ljava/lang/String;

    .prologue
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    if-eqz v0, :cond_27

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->b:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_26
.end method

.method public onEvent(II)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "timeMs"    # I

    .prologue
    const/16 v7, 0x469

    const/16 v6, 0x44e

    const/4 v5, 0x3

    const v4, 0x4a989680    # 5000000.0f

    const/4 v3, 0x0

    if-ne p1, v7, :cond_cc

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>engine init done vesion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v2}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/vui/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x1389

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x138a

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x138b

    const v2, -0x40b33333    # -0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x138c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x138d

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x1390

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x1394

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x1395

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x1399

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x3fb

    const-string v2, "athenaAppService"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    :cond_cc
    const/16 v0, 0xc21

    if-ne p1, v0, :cond_198

    const-string v0, "NativeANTEngine"

    const-string v1, "wakeUpEventSetWakeUpWordDone"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->i(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->i(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->j(Lcom/unisound/vui/engine/NativeANTEngine;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setNeedRecoveryWakeUp(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setInSetWakeUpWord(Z)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v0, v0, Lcom/unisound/vui/engine/NativeANTEngine;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->startWakeupAfterSetWakeupWord(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NativeANTEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wakeup word done, need start wakeup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current thread is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->isASR()Z

    move-result v1

    if-nez v1, :cond_13d

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->isRecognition()Z

    move-result v1

    if-nez v1, :cond_13d

    if-nez v0, :cond_13e

    :cond_13d
    :goto_13d
    return-void

    :cond_13e
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->getAecEnable()Z

    move-result v0

    if-nez v0, :cond_14e

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->isTTSPlaying()Z

    move-result v0

    if-nez v0, :cond_15c

    :cond_14e
    :try_start_14e
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->isTTSPlaying()Z

    move-result v0

    if-eqz v0, :cond_187

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterWakeup(Z)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_15c} :catch_193

    :cond_15c
    :goto_15c
    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    if-eqz v0, :cond_181

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asr is recognise test:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v6, :cond_181

    :try_start_17c
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterASR()V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_181} :catch_273

    :cond_181
    :goto_181
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->b:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {v0, p1}, Lcom/unisound/vui/engine/ANTPipeline;->fireASREvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_13d

    :cond_187
    :try_start_187
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->isPlayBeep()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterWakeup(Z)V
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_192} :catch_193

    goto :goto_15c

    :catch_193
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15c

    :cond_198
    const/16 v0, 0x488

    if-ne p1, v0, :cond_1bb

    const-string v0, "NativeANTEngine"

    const-string v1, "upload online wake up word success"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->k(Lcom/unisound/vui/engine/NativeANTEngine;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v1}, Lcom/unisound/vui/engine/NativeANTEngine;->k(Lcom/unisound/vui/engine/NativeANTEngine;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15c

    :cond_1bb
    const/16 v0, 0x45d

    if-eq p1, v0, :cond_15c

    const/16 v0, 0xc1f

    if-ne p1, v0, :cond_1cc

    const-string v0, "NativeANTEngine"

    const-string v1, "WAKEUP_EVENT_RECOGNITION_SUCCESS "

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13d

    :cond_1cc
    if-ne p1, v7, :cond_1d6

    const-string v0, "AutoStart"

    const-string v1, "engine init done"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    :cond_1d6
    const/16 v0, 0x44d

    if-ne p1, v0, :cond_1f8

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsrEngine recording start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_1f8
    if-ne p1, v6, :cond_225

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsrEngine recording stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-static {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->d(Lcom/unisound/vui/engine/NativeANTEngine;)Lcom/unisound/vui/a;

    move-result-object v0

    const/16 v1, 0x422

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/unisound/vui/a;->a(ILjava/lang/Object;)V

    goto/16 :goto_15c

    :cond_225
    const/16 v0, 0x453

    if-ne p1, v0, :cond_24c

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsrEngine recording end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0, v3}, Lcom/unisound/vui/engine/NativeANTEngine;->setEngineState(I)V

    goto/16 :goto_15c

    :cond_24c
    const/16 v0, 0x44f

    if-ne p1, v0, :cond_15c

    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsrEngine vad timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/unisound/vui/util/SystemUitls;->getCurrentTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->doStopASR()V

    goto/16 :goto_15c

    :catch_273
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_181
.end method

.method public onResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "jsonResult"    # Ljava/lang/String;

    .prologue
    const-string v0, "NativeANTEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";onResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ASR"

    invoke-static {v0, p2}, Lcom/unisound/vui/engine/NativeANTEngine;->writeVoiceLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->isAsrRecognitionTest:Z

    if-eqz v0, :cond_35

    const/16 v0, 0xc81

    if-ne p1, v0, :cond_2f

    :try_start_2a
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->a:Lcom/unisound/vui/engine/NativeANTEngine;

    invoke-virtual {v0}, Lcom/unisound/vui/engine/NativeANTEngine;->doEnterASR()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_30

    :cond_2f
    :goto_2f
    return-void

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    :cond_35
    iget-object v0, p0, Lcom/unisound/vui/engine/NativeANTEngine$b;->b:Lcom/unisound/vui/engine/ANTPipeline;

    invoke-interface {v0, p1, p2}, Lcom/unisound/vui/engine/ANTPipeline;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTPipeline;

    goto :goto_2f
.end method
