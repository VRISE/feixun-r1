.class public Lcom/unisound/client/SpeechUnderstander;
.super Lcom/unisound/sdk/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/bg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/bg;->cancel()V

    return-void
.end method

.method public convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFixEngineVersion()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/bg;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/bg;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->init(Ljava/lang/String;)V

    return-void
.end method

.method public insertVocab(Ljava/util/List;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->insertVocab(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertVocab(Ljava/util/Map;Ljava/lang/String;)I
    .registers 4
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
            ")I"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->insertVocab(Ljava/util/Map;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/unisound/sdk/bg;->insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/unisound/sdk/bg;->insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadGrammar(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->loadGrammar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public release(ILjava/lang/String;)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->release(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V

    return-void
.end method

.method public setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bg;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setWakeupWord(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->setWakeupWord(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setWakeupWord(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->setWakeupWord(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public start()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/bg;->start()V

    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->start(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/bg;->stop()V

    return-void
.end method

.method public unloadGrammar(Ljava/lang/String;)I
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->unloadGrammar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public uploadUserData(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bg;->uploadUserData(Ljava/util/Map;)V

    return-void
.end method
