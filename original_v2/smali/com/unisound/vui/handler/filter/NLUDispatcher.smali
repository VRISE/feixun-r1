.class public final Lcom/unisound/vui/handler/filter/NLUDispatcher;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "NLUDispatcher.java"


# instance fields
.field private b:Z

.field private final c:Lnluparser/MixtureProcessor;

.field private d:Lnluparser/NluProcessor;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private f423a:Z


# direct methods
.method public constructor <init>(Lnluparser/MixtureProcessor;)V
    .registers 5
    .param p1, "mixtureProcessor"    # Lnluparser/MixtureProcessor;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    .line 45
    new-instance v0, Lnluparser/NluProcessor$Builder;

    invoke-direct {v0}, Lnluparser/NluProcessor$Builder;-><init>()V

    const-string v1, "cn.yunzhisheng.error"

    new-instance v2, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;)V

    .line 47
    invoke-virtual {v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lnluparser/NluProcessor$Builder;->registerTypeMapper(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/NluProcessor$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lnluparser/NluProcessor$Builder;->build()Lnluparser/NluProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    .line 48
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 52
    const-string v0, "NLUDispatcher"

    const-string v1, "stop asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    .line 56
    :cond_15
    return-void
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "z"    # Z

    .prologue
    .line 59
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    const-class v1, Lcom/unisound/vui/handler/filter/NLUDispatcher;

    const-string v2, "RECOGNITION_HANDLED"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method private a(F)Z
    .registers 3
    .param p1, "f2"    # F

    .prologue
    .line 63
    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->FUNCTION_WAKEUP_BENCHMARK:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getCmopetitionWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 7
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 72
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 73
    const-string v3, "bluetooth_error"

    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 74
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/phicomm/speaker/device/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    .line 84
    .end local v0    # "c2":Lnluparser/scheme/NLU;
    :goto_1f
    return v2

    .line 77
    :cond_20
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    if-nez v3, :cond_2c

    .line 78
    const/4 v2, 0x0

    goto :goto_1f

    .line 80
    :cond_2c
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 81
    const-string v3, "-90002"

    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    .line 82
    .local v1, "c3":Lnluparser/scheme/NLU;
    const-string v3, "no network"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_1f
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/Mixture;)Z
    .registers 8
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            "Ljava/lang/String;",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "mixture":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p3}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NLU;

    .line 90
    .local v0, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    invoke-direct {p0, p3, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/Mixture;Lnluparser/scheme/NLU;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 91
    const-string v2, "NLUDispatcher"

    const-string v3, "handleNetFilterService return filter service ..."

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_19
    return v1

    .line 94
    :cond_1a
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 95
    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    .line 96
    invoke-virtual {v0, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v1, v2

    .line 98
    goto :goto_19
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/NLU;)Z
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 103
    const/4 v0, 0x0

    .line 109
    :goto_8
    return v0

    .line 105
    :cond_9
    iput-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 106
    invoke-virtual {p3, v0}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    .line 107
    invoke-virtual {p3, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_8
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .registers 4
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "localASR"    # Lnluparser/scheme/LocalASR;

    .prologue
    .line 113
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z
    .registers 4
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 118
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Lcom/unisound/vui/handler/filter/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z
    .registers 5
    .param p1, "localASR"    # Lnluparser/scheme/LocalASR;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 126
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v0

    sget v1, Lcom/unisound/vui/common/config/ANTConfigPreference;->recognizerScore:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private a(Lnluparser/scheme/Mixture;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "mixture":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    const/4 v1, 0x0

    .line 130
    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1f

    const-string v2, "full"

    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NetASR;

    invoke-virtual {v0}, Lnluparser/scheme/NetASR;->getResultType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e
.end method

.method private a(Lnluparser/scheme/Mixture;Lnluparser/scheme/NLU;)Z
    .registers 4
    .param p2, "nlu"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;",
            "Lnluparser/scheme/NLU;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "mixture":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/Mixture;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/String;)Lnluparser/scheme/NLU;
    .registers 3
    .param p0, "x0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 3
    .param p0, "x0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .param p1, "x1"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "x2"    # Lnluparser/scheme/NLU;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    return-void
.end method

.method private b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 138
    const-string v0, "NLUDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preHandleNetNlu nlu :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 140
    const-string v0, "-63551"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    .line 144
    :goto_2b
    return-void

    .line 142
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_2b
.end method

.method private b(F)Z
    .registers 3
    .param p1, "f2"    # F

    .prologue
    .line 147
    sget v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->effectWakeupBenchmark:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 155
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->engine()Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTEngine;->unsafe()Lcom/unisound/vui/engine/ANTEngine$Unsafe;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine$Unsafe;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Lnluparser/scheme/Mixture;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/Mixture",
            "<",
            "Lnluparser/scheme/Intent;",
            "Lnluparser/scheme/Result;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "mixture":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v0

    .line 164
    .local v0, "nluList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method private c(Ljava/lang/String;)Lnluparser/scheme/NLU;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    .line 171
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "cn.yunzhisheng.error"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 173
    return-object v0
.end method

.method private c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 180
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireASREvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    .line 182
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 184
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifyInteraction()V

    .line 185
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 186
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    .line 187
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 188
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getMainWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 195
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_1b

    .line 200
    const-string v0, "NLUDispatcher"

    const-string v1, "start asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    .line 212
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_1b
    return-void
.end method

.method private isEnableEavesdropCommand(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "\u6253\u5f00\u63d2\u5634"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u5f00\u59cb\u76d1\u542c"

    .line 431
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u7ee7\u7eed\u5077\u542c"

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u6062\u590d\u63d2\u5634"

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u6253\u5f00\u76d1\u542c"

    .line 434
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 430
    :goto_29
    return v0

    .line 434
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private isShutUpCommand(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 419
    const-string v0, "\u7ed9\u6211\u95ed\u5634"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u95ed\u5634"

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u522b\u542c\u4e86"

    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u522b\u76d1\u542c\u4e86"

    .line 422
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u5b89\u9759\u4e00\u5c0f\u65f6"

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 419
    :goto_29
    return v0

    .line 423
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 443
    new-instance v3, Lnluparser/MixtureProcessor$Builder;

    invoke-direct {v3}, Lnluparser/MixtureProcessor$Builder;-><init>()V

    invoke-virtual {v3}, Lnluparser/MixtureProcessor$Builder;->build()Lnluparser/MixtureProcessor;

    move-result-object v2

    .line 444
    .local v2, "mixtureProcessor":Lnluparser/MixtureProcessor;
    const-string v1, "{\'net_nlu\':[{\'semantic\':{\'intent\':{\'tag\':\'\u76f8\u58f0\',\'category\':\'\u76f8\u58f0\u8bc4\u4e66\',\'keyword\':\'\u76f8\u58f0\'}},\'code\':\'SEARCH_CATEGORY\',\'data\':{\'result\':{\'total\':\'1\',\'playlist\':[{\'url_m4a_high\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C3/wKgJSVmT_JSz0FGhAI6Is9Fjw-g605.m4a\',\'episode\':691,\'urlm4a\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C6/wKgJSVmT_Jeim-uMADZpM86L_MY216.m4a\',\'play_count\':122077,\'title\':\'2014\u65b0\u5e74\u76f8\u58f0\u559c\u4e50\u4f1a  \u90ed\u5fb7\u7eb2 \u4e8e\u8c26\u300a\u5b66\u8bc4\u4e66\u300b\',\'url\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BE/wKgJSVmT_IWTn7j3AEZ_fjTItf0356.mp3\',\'tags\':\',\'cover\':\'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=100&rows=100\',\'duration\':1154,\'update_time\':\'2017-08-16 16:04:57\',\'url_high\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BF/wKgJSVmT_IvTQy78AIz-buUQbS8364.mp3\',\'id\':47545988,\'cover_large\':\'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=640&rows=640\'}]\'originIntent\':{\'nluSlotInfos\':[]},\'history\':\'cn.yunzhisheng.audio\',\'source\':\'nlu\',\'uniCarRet\':{\'result\':{},\'returnCode\':609,\'message\':\'aios-home.hivoice.cn\'},\'rc\':0,\'general\':{\'actionAble\':\'true\',\'quitDialog\':\'true\',\'text\':\'\u4e3a\u60a8\u64ad\u653e\u76f8\u58f0:\',\'type\':\'T\'},\'returnCode\':0,\'audioUrl\':\'http://asrv3.hivoice.cn/trafficRouter/r/OVAVOb\',\'service\':\'cn.yunzhisheng.audio\',\'nluProcessTime\':\'98\',\'text\':\'\u64ad\u653e\u76f8\u58f0\',\'responseId\':\'2a9be6f6b605411b83149795a3591b59\'}]}"

    .line 445
    .local v1, "hook_res":Ljava/lang/String;
    const/16 v3, 0x27

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {v2, v1}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .line 448
    .local v0, "from2":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 449
    return-void
.end method


# virtual methods
.method public onASRError(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 12
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 220
    const-string v4, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-onASRError-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 222
    .local v3, "parseToJSONObject":Lorg/json/JSONObject;
    const-string v4, "errorCode"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "jsonValue":Ljava/lang/String;
    const-string v4, "errorMsg"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, "jsonValue2":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 225
    iput-boolean v8, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    .line 232
    :goto_35
    return v7

    .line 228
    :cond_36
    iput-boolean v8, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 229
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 230
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-virtual {v0, v2}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_35
.end method

.method public onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 245
    const-string v0, "NLUDispatcher"

    const-string v1, "onASREventRecordingStart"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    .line 248
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 9
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 254
    const-string v3, "NLUDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onASRResultLocal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    if-eqz v3, :cond_26

    .line 256
    const-string v2, "NLUDispatcher"

    const-string v3, "result has handled, local nlu handle return"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x1

    .line 268
    :cond_25
    :goto_25
    return v2

    .line 259
    :cond_26
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 260
    iget-object v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v3, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/LocalASR;

    .line 261
    .local v1, "localASR":Lnluparser/scheme/LocalASR;
    iget-object v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    invoke-virtual {v1}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnluparser/NluProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 262
    .local v0, "from":Lnluparser/scheme/NLU;
    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 263
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v2

    goto :goto_25

    .line 265
    :cond_4e
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 268
    invoke-direct {p0, p1, p2, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/NLU;)Z

    move-result v2

    goto :goto_25
.end method

.method public onASRResultNet(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 12
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 275
    const-string v6, "NLUDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onASRResultNet:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-boolean v6, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    if-eqz v6, :cond_27

    .line 277
    const-string v4, "NLUDispatcher"

    const-string v6, "result has handled, net nlu handle return"

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 335
    :cond_26
    :goto_26
    return v4

    .line 280
    :cond_27
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 281
    iget-object v6, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v6, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v2

    .line 282
    .local v2, "from":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    if-nez v2, :cond_92

    .line 284
    :try_start_32
    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "net_nlu"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    const-string v6, "text"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_4b} :catch_73

    .line 289
    .local v3, "str":Ljava/lang/String;
    :goto_4b
    const-string v4, "NLUDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported domain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iput-boolean v5, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 291
    const-string v4, "unsupportedDomain"

    invoke-direct {p0, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 292
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-virtual {v0, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v4, v5

    .line 294
    goto :goto_26

    .line 285
    .end local v0    # "c2":Lnluparser/scheme/NLU;
    .end local v3    # "str":Ljava/lang/String;
    :catch_73
    move-exception v1

    .line 286
    .local v1, "e2":Lorg/json/JSONException;
    const-string v4, "NLUDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unsupported domain \u89e3\u6790\u7528\u6237\u8bf4\u7684\u8bdd\u51fa\u9519 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v3, p2

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_4b

    .line 295
    .end local v1    # "e2":Lorg/json/JSONException;
    .end local v3    # "str":Ljava/lang/String;
    :cond_92
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lnluparser/scheme/Mixture;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 296
    invoke-direct {p0, p1, p2, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/Mixture;)Z

    move-result v4

    goto :goto_26
.end method

.method public onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 11
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 342
    const-string v5, "NLUDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onWakeupResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v5, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/LocalASR;

    .line 344
    .local v0, "localASR":Lnluparser/scheme/LocalASR;
    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "trim":Ljava/lang/String;
    const-string v5, "NLUDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DEBUG] Recognized wakeup word: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperEngine;->notifyWakeupDetected()V

    .line 351
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 352
    const-string v4, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is CompetitionWord, return"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_75
    return v3

    .line 354
    :cond_76
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(F)Z

    move-result v5

    if-eqz v5, :cond_b5

    .line 355
    const-string v3, "NLUDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFunctionWakeupWord : wakeupResult:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";success core:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z

    move-result v3

    goto :goto_75

    .line 357
    :cond_b5
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(F)Z

    move-result v5

    if-nez v5, :cond_e6

    .line 358
    :cond_c9
    const-string v4, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEBUG] Not a main wakeup word, score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 361
    :cond_e6
    const-string v5, "NLUDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMainWakeupWord : wakeupResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";success core:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getScore()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->isShutUpCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 365
    const-string v4, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shut-up command detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->enableShutUpMode()V

    .line 371
    const-string v4, "\u597d\u7684,\u6211\u95ed\u5634\u4e00\u5c0f\u65f6"

    invoke-interface {p1, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    goto/16 :goto_75

    .line 380
    :cond_137
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->isEnableEavesdropCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_162

    .line 381
    const-string v4, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enable eavesdrop command detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->disableShutUpMode()V

    .line 387
    const-string v4, "\u63d2\u5634\u529f\u80fd\u5df2\u6253\u5f00,\u6211\u4f1a\u7ee7\u7eed\u5077\u542c\u7684~"

    invoke-interface {p1, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    goto/16 :goto_75

    .line 396
    :cond_162
    const-string v3, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEBUG] Looking up persona for wakeup word: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByWakeupWord(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v1

    .line 399
    .local v1, "personaConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v1, :cond_1e1

    .line 400
    const-string v3, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEBUG] Found persona: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    new-instance v5, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;

    .line 403
    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-interface {v3, v5}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 405
    const-string v3, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Published PersonaActivationEvent for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1de
    move v3, v4

    .line 411
    goto/16 :goto_75

    .line 407
    :cond_1e1
    const-string v3, "NLUDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DEBUG] No persona found for wakeup word: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v3, "NLUDispatcher"

    const-string v5, "[DEBUG] Available wakeup words: \u5c0f\u8baf\u5c0f\u8baf, \u4ea4\u63a5\u624b\u7eed, \u6363\u86cb\u9b3c, \u82f1\u8bed\u966a\u7ec3\u5e08, \u6210\u8bed\u63a5\u9f99"

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1de
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 440
    return-void
.end method
