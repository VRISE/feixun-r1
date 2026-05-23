.class public abstract Lcom/unisound/vui/handler/ANTEventDispatcher;
.super Lcom/unisound/vui/engine/ANTInboundHandlerAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/vui/engine/ANTInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onASRError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_9
    return-void
.end method

.method protected onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onASREvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_ba

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASREvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_9
    return-void

    :sswitch_a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_f
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_14
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_19
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_1e
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_23
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_28
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_2d
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_32
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_37
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_3c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_41
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_46
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_4b
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_50
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_55
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_5a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_5f
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_64
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_69
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_6e
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_73
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_78
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_7d
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :sswitch_82
    invoke-interface {p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->config()Lcom/unisound/vui/engine/ANTEngineConfig;

    move-result-object v0

    sget-object v1, Lcom/unisound/vui/engine/ANTEngineOption;->GENERAL_UPDATE_VOLUME:Lcom/unisound/vui/engine/ANTEngineOption;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngineConfig;->getOption(Lcom/unisound/vui/engine/ANTEngineOption;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_9c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_a2
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_a8
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_ae
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_b4
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_4

    :sswitch_data_ba
    .sparse-switch
        0x44d -> :sswitch_a
        0x44e -> :sswitch_f
        0x44f -> :sswitch_14
        0x450 -> :sswitch_1e
        0x451 -> :sswitch_23
        0x453 -> :sswitch_28
        0x454 -> :sswitch_2d
        0x455 -> :sswitch_32
        0x456 -> :sswitch_37
        0x457 -> :sswitch_3c
        0x458 -> :sswitch_41
        0x459 -> :sswitch_46
        0x45a -> :sswitch_4b
        0x45b -> :sswitch_50
        0x45c -> :sswitch_55
        0x45d -> :sswitch_5a
        0x45e -> :sswitch_5f
        0x45f -> :sswitch_64
        0x460 -> :sswitch_69
        0x461 -> :sswitch_7d
        0x462 -> :sswitch_82
        0x463 -> :sswitch_9c
        0x469 -> :sswitch_a2
        0x46a -> :sswitch_a8
        0x46b -> :sswitch_6e
        0x47e -> :sswitch_73
        0x47f -> :sswitch_78
        0x708 -> :sswitch_19
        0xc21 -> :sswitch_ae
        0xc23 -> :sswitch_b4
    .end sparse-switch
.end method

.method protected onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventCompileDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalNoLeadingsilence(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalSnrBad(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalTooLoud(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventFxAbnormalTooQuiet(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarCompiled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventGrammarLoaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventLoadGrammarDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventLocalEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventModelLoadFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventModelLoadSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventNetEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventOneshotVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingPrepared(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventSpeechDetected(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventSpeechEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventUserdataUploaded(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVadTimeout(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVocabInserted(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASREventVolumeChange(Lcom/unisound/vui/engine/ANTHandlerContext;I)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "volume"    # I

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRNluEventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onASRResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_1e

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireASRResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_9
    return-void

    :sswitch_a
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :sswitch_f
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :sswitch_14
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :sswitch_19
    invoke-virtual {p0, p3, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    goto :goto_4

    :sswitch_data_1e
    .sparse-switch
        0x4b1 -> :sswitch_f
        0x4b2 -> :sswitch_a
        0x4ba -> :sswitch_14
        0xc81 -> :sswitch_19
    .end sparse-switch
.end method

.method protected onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onASRResultRecognition(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onNLUError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public onNLUEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public onNLUResult(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireNLUResult(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public onTTSError(ILjava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    invoke-interface {p3, p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSError(ILjava/lang/String;)Lcom/unisound/vui/engine/ANTHandlerContext;

    return-void
.end method

.method public onTTSEvent(ILcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    packed-switch p1, :pswitch_data_46

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTHandlerContext;

    :cond_9
    return-void

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_19
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_1e
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_23
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_28
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_2d
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_32
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_37
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_3c
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_41
    invoke-virtual {p0, p2}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_4

    :pswitch_data_46
    .packed-switch 0x835
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
        :pswitch_28
        :pswitch_2d
        :pswitch_32
        :pswitch_3
        :pswitch_37
        :pswitch_3c
        :pswitch_3
        :pswitch_41
    .end packed-switch
.end method

.method protected onTTSEventBufferBegin(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventBufferReady(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventInit(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPause(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventPlayingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventRelease(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventResume(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSwitchBackendModelSuccess(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSynthesizerEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onTTSEventSynthesizerStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "localASR"    # Lnluparser/scheme/LocalASR;

    .prologue
    const/4 v0, 0x0

    return v0
.end method
