.class public final Lcom/unisound/vui/handler/filter/NLUDispatcher;
.super Lcom/unisound/vui/handler/ANTEventDispatcher;
.source "NLUDispatcher.java"


# static fields
.field private static final RECOG_STALL_TIMEOUT_MS:J = 0x1f40L


# instance fields
.field private b:Z

.field private final c:Lnluparser/MixtureProcessor;

.field private d:Lnluparser/NluProcessor;

.field private e:Landroid/os/Handler;

.field private f:Ljava/lang/Runnable;

.field private f423a:Z

.field private recogStallWatchdog:Ljava/lang/Runnable;

.field private final watchdogHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lnluparser/MixtureProcessor;)V
    .registers 5
    .param p1, "mixtureProcessor"    # Lnluparser/MixtureProcessor;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/unisound/vui/handler/ANTEventDispatcher;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->watchdogHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    .line 80
    new-instance v0, Lnluparser/NluProcessor$Builder;

    invoke-direct {v0}, Lnluparser/NluProcessor$Builder;-><init>()V

    const-string v1, "cn.yunzhisheng.error"

    new-instance v2, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;)V

    .line 82
    invoke-virtual {v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Lnluparser/NluProcessor$Builder;->registerTypeMapper(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/NluProcessor$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lnluparser/NluProcessor$Builder;->build()Lnluparser/NluProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    .line 83
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 87
    const-string v0, "NLUDispatcher"

    const-string v1, "stop asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    .line 91
    :cond_15
    return-void
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "z"    # Z

    .prologue
    .line 94
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

    .line 95
    return-void
.end method

.method private a(F)Z
    .registers 3
    .param p1, "f2"    # F

    .prologue
    .line 98
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
    .line 102
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

    .line 106
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 107
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 108
    const-string v3, "bluetooth_error"

    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 109
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/phicomm/speaker/device/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    .line 119
    .end local v0    # "c2":Lnluparser/scheme/NLU;
    :goto_1f
    return v2

    .line 112
    :cond_20
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    if-nez v3, :cond_2c

    .line 113
    const/4 v2, 0x0

    goto :goto_1f

    .line 115
    :cond_2c
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 116
    const-string v3, "-90002"

    invoke-direct {p0, v3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    .line 117
    .local v1, "c3":Lnluparser/scheme/NLU;
    const-string v3, "no network"

    invoke-virtual {v1, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 118
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

    .line 124
    invoke-virtual {p3}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NLU;

    .line 125
    .local v0, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    invoke-direct {p0, p3, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/Mixture;Lnluparser/scheme/NLU;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 126
    const-string v2, "NLUDispatcher"

    const-string v3, "handleNetFilterService return filter service ..."

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_19
    return v1

    .line 129
    :cond_1a
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 130
    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    .line 131
    invoke-virtual {v0, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v1, v2

    .line 133
    goto :goto_19
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lnluparser/scheme/NLU;)Z
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v0, 0x1

    .line 137
    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 138
    const/4 v0, 0x0

    .line 144
    :goto_8
    return v0

    .line 140
    :cond_9
    iput-boolean v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 141
    invoke-virtual {p3, v0}, Lnluparser/scheme/NLU;->setLocalNLU(Z)V

    .line 142
    invoke-virtual {p3, p2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1, p3}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_8
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z
    .registers 4
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "localASR"    # Lnluparser/scheme/LocalASR;

    .prologue
    .line 148
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)Z
    .registers 4
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 153
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
    .line 157
    invoke-static {p1}, Lcom/unisound/vui/handler/filter/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z
    .registers 5
    .param p1, "localASR"    # Lnluparser/scheme/LocalASR;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 161
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

    .line 165
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
    .line 169
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

.method static synthetic access$002(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/filter/NLUDispatcher;Ljava/lang/String;)Lnluparser/scheme/NLU;
    .registers 3
    .param p0, "x0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 3
    .param p0, "x0"    # Lcom/unisound/vui/handler/filter/NLUDispatcher;
    .param p1, "x1"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "x2"    # Lnluparser/scheme/NLU;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    return-void
.end method

.method private b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 173
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

    .line 174
    invoke-virtual {p2}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 175
    const-string v0, "-63551"

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    .line 179
    :goto_2b
    return-void

    .line 177
    :cond_2c
    invoke-direct {p0, p1, p2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_2b
.end method

.method private b(F)Z
    .registers 3
    .param p1, "f2"    # F

    .prologue
    .line 182
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
    .line 186
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
    .line 190
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
    .line 194
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
    .line 198
    .local p1, "mixture":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object v0

    .line 199
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
    .line 205
    new-instance v0, Lnluparser/scheme/NLU;

    invoke-direct {v0}, Lnluparser/scheme/NLU;-><init>()V

    .line 206
    .local v0, "nlu":Lnluparser/scheme/NLU;
    const-string v1, "cn.yunzhisheng.error"

    invoke-virtual {v0, v1}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Lnluparser/scheme/NLU;->setCode(Ljava/lang/String;)V

    .line 208
    return-object v0
.end method

.method private c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 215
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    const/16 v1, 0x44e

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireASREvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    .line 217
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelEngine()V

    .line 218
    invoke-interface {p1, p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 219
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    .line 220
    iput-boolean v2, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 221
    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 224
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
    .line 228
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/network/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private cancelRecogStallWatchdog()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    .line 52
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->watchdogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    .line 55
    :cond_e
    return-void
.end method

.method private d(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .param p1, "aNTHandlerContext"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    if-nez v0, :cond_1b

    .line 233
    const-string v0, "NLUDispatcher"

    const-string v1, "start asr or nlu result timeout task"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/unisound/vui/handler/filter/NLUDispatcher$3;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher$3;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    .line 245
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 247
    :cond_1b
    return-void
.end method

.method private extractRecognitionText(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 315
    if-nez p1, :cond_4

    .line 356
    :cond_3
    :goto_3
    return-object v7

    .line 318
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "trimmed":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 324
    :try_start_e
    const-string v8, "}{"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 325
    const-string v8, "}{"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 327
    :cond_22
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 328
    .local v4, "root":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 329
    .local v0, "arr":Lorg/json/JSONArray;
    const-string v8, "local_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_64

    .line 330
    const-string v8, "local_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 336
    :cond_36
    :goto_36
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_82

    .line 337
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 338
    .local v2, "first":Lorg/json/JSONObject;
    const-string v8, "recognition_result"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_59

    .line 340
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 342
    :cond_59
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_82

    .line 343
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 331
    .end local v2    # "first":Lorg/json/JSONObject;
    .end local v5    # "t":Ljava/lang/String;
    :cond_64
    const-string v8, "net_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_73

    .line 332
    const-string v8, "net_asr"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_36

    .line 333
    :cond_73
    const-string v8, "net_nlu"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 334
    const-string v8, "net_nlu"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_36

    .line 346
    :cond_82
    const-string v8, "asr_recongize"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "plain":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_98

    .line 348
    const-string v8, "asr_recognize"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 350
    :cond_98
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 351
    const-string v8, "text"

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_a6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a9} :catch_ac

    move-result-object v7

    goto/16 :goto_3

    .line 354
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "plain":Ljava/lang/String;
    .end local v4    # "root":Lorg/json/JSONObject;
    :catch_ac
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "NLUDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[EAVES] extractRecognitionText failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private isShutUpCommand(Ljava/lang/String;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v0, "\u7ed9\u6211\u95ed\u5634"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u95ed\u5634"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u522b\u542c\u4e86"

    .line 517
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u522b\u76d1\u542c\u4e86"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "\u5b89\u9759\u4e00\u5c0f\u65f6"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    .line 515
    :goto_29
    return v0

    .line 519
    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 528
    new-instance v3, Lnluparser/MixtureProcessor$Builder;

    invoke-direct {v3}, Lnluparser/MixtureProcessor$Builder;-><init>()V

    invoke-virtual {v3}, Lnluparser/MixtureProcessor$Builder;->build()Lnluparser/MixtureProcessor;

    move-result-object v2

    .line 529
    .local v2, "mixtureProcessor":Lnluparser/MixtureProcessor;
    const-string v1, "{\'net_nlu\':[{\'semantic\':{\'intent\':{\'tag\':\'\u76f8\u58f0\',\'category\':\'\u76f8\u58f0\u8bc4\u4e66\',\'keyword\':\'\u76f8\u58f0\'}},\'code\':\'SEARCH_CATEGORY\',\'data\':{\'result\':{\'total\':\'1\',\'playlist\':[{\'url_m4a_high\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C3/wKgJSVmT_JSz0FGhAI6Is9Fjw-g605.m4a\',\'episode\':691,\'urlm4a\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/C6/wKgJSVmT_Jeim-uMADZpM86L_MY216.m4a\',\'play_count\':122077,\'title\':\'2014\u65b0\u5e74\u76f8\u58f0\u559c\u4e50\u4f1a  \u90ed\u5fb7\u7eb2 \u4e8e\u8c26\u300a\u5b66\u8bc4\u4e66\u300b\',\'url\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BE/wKgJSVmT_IWTn7j3AEZ_fjTItf0356.mp3\',\'tags\':\',\'cover\':\'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=100&rows=100\',\'duration\':1154,\'update_time\':\'2017-08-16 16:04:57\',\'url_high\':\'http://aod.cos.tx.xmcdn.com/group31/M02/2B/BF/wKgJSVmT_IvTQy78AIz-buUQbS8364.mp3\',\'id\':47545988,\'cover_large\':\'http://imgopen.xmcdn.com/group31/M09/20/BD/wKgJX1mBiHCR9cbqAAApsFjA_e4605.jpg!op_type=3&columns=640&rows=640\'}]\'originIntent\':{\'nluSlotInfos\':[]},\'history\':\'cn.yunzhisheng.audio\',\'source\':\'nlu\',\'uniCarRet\':{\'result\':{},\'returnCode\':609,\'message\':\'aios-home.hivoice.cn\'},\'rc\':0,\'general\':{\'actionAble\':\'true\',\'quitDialog\':\'true\',\'text\':\'\u4e3a\u60a8\u64ad\u653e\u76f8\u58f0:\',\'type\':\'T\'},\'returnCode\':0,\'audioUrl\':\'http://asrv3.hivoice.cn/trafficRouter/r/OVAVOb\',\'service\':\'cn.yunzhisheng.audio\',\'nluProcessTime\':\'98\',\'text\':\'\u64ad\u653e\u76f8\u58f0\',\'responseId\':\'2a9be6f6b605411b83149795a3591b59\'}]}"

    .line 530
    .local v1, "hook_res":Ljava/lang/String;
    const/16 v3, 0x27

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-virtual {v2, v1}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .line 533
    .local v0, "from2":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method private scheduleRecogStallWatchdog(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 59
    new-instance v0, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher$1;-><init>(Lcom/unisound/vui/handler/filter/NLUDispatcher;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    .line 72
    iget-object v0, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->watchdogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->recogStallWatchdog:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
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

    .line 252
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 253
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

    .line 254
    invoke-static {p2}, Lcom/unisound/vui/util/JsonTool;->parseToJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 255
    .local v3, "parseToJSONObject":Lorg/json/JSONObject;
    const-string v4, "errorCode"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "jsonValue":Ljava/lang/String;
    const-string v4, "errorMsg"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/JsonTool;->getJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "jsonValue2":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 258
    iput-boolean v8, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b:Z

    .line 265
    :goto_35
    return v7

    .line 261
    :cond_36
    iput-boolean v8, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 262
    invoke-direct {p0, v1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 263
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-virtual {v0, v2}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    goto :goto_35
.end method

.method public onASREventCancel(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 272
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 307
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 298
    const-string v0, "NLUDispatcher"

    const-string v1, "onASREventRecognitionEnd -> cancel recog-stall watchdog"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 300
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecognitionEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 279
    const-string v0, "NLUDispatcher"

    const-string v1, "onASREventRecordingStart"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a()V

    .line 281
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Z)V

    .line 283
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStart(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 289
    const-string v0, "NLUDispatcher"

    const-string v1, "onASREventRecordingStop -> schedule recog-stall watchdog"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->scheduleRecogStallWatchdog(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 292
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/ANTEventDispatcher;->onASREventRecordingStop(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method public onASRResultLocal(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 9
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 363
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

    .line 365
    iget-boolean v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    if-eqz v3, :cond_26

    .line 366
    const-string v2, "NLUDispatcher"

    const-string v3, "result has handled, local nlu handle return"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v2, 0x1

    .line 379
    :cond_25
    :goto_25
    return v2

    .line 370
    :cond_26
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 371
    iget-object v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v3, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnluparser/scheme/LocalASR;

    .line 372
    .local v1, "localASR":Lnluparser/scheme/LocalASR;
    iget-object v3, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d:Lnluparser/NluProcessor;

    invoke-virtual {v1}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnluparser/NluProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 373
    .local v0, "from":Lnluparser/scheme/NLU;
    invoke-direct {p0, v1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lnluparser/scheme/LocalASR;Lnluparser/scheme/NLU;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 374
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v2

    goto :goto_25

    .line 376
    :cond_4e
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 379
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

    .line 386
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

    .line 388
    iget-boolean v6, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    if-eqz v6, :cond_27

    .line 389
    const-string v4, "NLUDispatcher"

    const-string v6, "result has handled, net nlu handle return"

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 448
    :cond_26
    :goto_26
    return v4

    .line 393
    :cond_27
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->d(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 394
    iget-object v6, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v6, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v2

    .line 395
    .local v2, "from":Lnluparser/scheme/Mixture;, "Lnluparser/scheme/Mixture<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    if-nez v2, :cond_92

    .line 397
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

    .line 402
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

    .line 403
    iput-boolean v5, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->f423a:Z

    .line 404
    const-string v4, "unsupportedDomain"

    invoke-direct {p0, v4}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v0

    .line 405
    .local v0, "c2":Lnluparser/scheme/NLU;
    invoke-virtual {v0, v3}, Lnluparser/scheme/NLU;->setText(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/NLU;)V

    move v4, v5

    .line 407
    goto :goto_26

    .line 398
    .end local v0    # "c2":Lnluparser/scheme/NLU;
    .end local v3    # "str":Ljava/lang/String;
    :catch_73
    move-exception v1

    .line 399
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

    .line 400
    move-object v3, p2

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_4b

    .line 408
    .end local v1    # "e2":Lorg/json/JSONException;
    .end local v3    # "str":Ljava/lang/String;
    :cond_92
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->b(Lnluparser/scheme/Mixture;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 409
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

    .line 455
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

    .line 457
    invoke-direct {p0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->cancelRecogStallWatchdog()V

    .line 458
    iget-object v5, p0, Lcom/unisound/vui/handler/filter/NLUDispatcher;->c:Lnluparser/MixtureProcessor;

    invoke-virtual {v5, p2}, Lnluparser/MixtureProcessor;->from(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/LocalASR;

    .line 459
    .local v0, "localASR":Lnluparser/scheme/LocalASR;
    invoke-virtual {v0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 461
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

    .line 463
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 464
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

    .line 507
    :goto_75
    return v3

    .line 466
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

    .line 467
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

    .line 468
    invoke-direct {p0, p1, v0}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->a(Lcom/unisound/vui/engine/ANTHandlerContext;Lnluparser/scheme/LocalASR;)Z

    move-result v3

    goto :goto_75

    .line 469
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

    .line 470
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

    .line 473
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

    .line 476
    invoke-direct {p0, v2}, Lcom/unisound/vui/handler/filter/NLUDispatcher;->isShutUpCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_137

    .line 477
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

    .line 480
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->enableShutUpMode()V

    .line 483
    const-string v4, "\u597d\u7684,\u6211\u95ed\u5634\u4e00\u5c0f\u65f6"

    invoke-interface {p1, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    goto/16 :goto_75

    .line 492
    :cond_137
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

    .line 493
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->findByWakeupWord(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    move-result-object v1

    .line 495
    .local v1, "personaConfig":Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;
    if-eqz v1, :cond_1b6

    .line 496
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

    .line 498
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    new-instance v5, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;

    .line 499
    invoke-virtual {v1}, Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;->getPersonaId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lcom/phicomm/speaker/device/custom/event/PersonaActivationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-interface {v3, v5}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 501
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

    :goto_1b3
    move v3, v4

    .line 507
    goto/16 :goto_75

    .line 503
    :cond_1b6
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

    .line 504
    const-string v3, "NLUDispatcher"

    const-string v5, "[DEBUG] Available wakeup words: \u4f60\u597d\u5c0f\u8fea, \u5c0f\u8baf\u5c0f\u8baf, \u4ea4\u63a5\u624b\u7eed, \u6363\u86cb\u9b3c, \u82f1\u8bed\u966a\u7ec3\u5e08, \u6210\u8bed\u63a5\u9f99"

    invoke-static {v3, v5}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b3
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
    .line 524
    invoke-interface {p2, p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 525
    return-void
.end method
