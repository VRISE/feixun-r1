.class public Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommDataStatisticHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU;",
        ">;"
    }
.end annotation


# static fields
.field private static final BAIKE:Ljava/lang/String; = "BAIKE"

.field private static final DATA_SOURCE_UNISOUND:Ljava/lang/String; = "unisound"

.field private static final KEY_TYPE_DIALOGUE:Ljava/lang/String; = "dialog"

.field private static final KEY_TYPE_WAKEUP:Ljava/lang/String; = "wakeup"

.field private static final KEY_TYPE_WAKEUP_WORD:Ljava/lang/String; = "wakeupWord"

.field private static final SELFDIALOG:Ljava/lang/String; = "selfdialog"

.field private static final STYLE_SELFDIALOG:Ljava/lang/String; = "prvtfaq"

.field private static final TAG:Ljava/lang/String; = "PhicommDataStatisticHandler"


# instance fields
.field private final mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

.field private mMixtureProcessor:Lnluparser/MixtureProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnluparser/MixtureProcessor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mixtureProcessor"    # Lnluparser/MixtureProcessor;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 37
    invoke-static {}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->getInstance()Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    .line 41
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;

    .line 42
    invoke-static {p1}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;)Lnluparser/MixtureProcessor;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMixtureProcessor:Lnluparser/MixtureProcessor;

    return-object v0
.end method

.method private getRandomMessageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendChangeWakeupWordStatisticToPhicomm(Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;)V
    .registers 6
    .param p1, "evt"    # Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    .prologue
    .line 114
    const-string v1, "PhicommDataStatisticHandler"

    const-string v2, "sendChangeWakeupWordStatisticToPhicomm: "

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "wakeupWord"

    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wakeupWord"

    const-string v3, "unisound"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 118
    return-void
.end method

.method private sendDialogueStatisticToPhicomm(Llogreport/FullLog;)V
    .registers 7
    .param p1, "evt"    # Llogreport/FullLog;

    .prologue
    .line 96
    const-string v2, "PhicommDataStatisticHandler"

    const-string v3, "sendDialogueStatisticToPhicomm: "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Llogreport/FullLog;->getTtsData()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "ttsData":Ljava/lang/String;
    const-string v2, "tts"

    const-string v3, "<py>[\\d|\\w]+</py>"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/phicomm/speaker/device/R$array;->tts_unsupport_answer:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 101
    const-string v2, "service"

    const-string v3, "cn.yunzhisheng.illegal"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_3e
    const-string v2, "text"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dialog"

    const-string v4, "unisound"

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 111
    return-void

    .line 102
    :cond_57
    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    if-eqz v2, :cond_7d

    const-string v2, "BAIKE"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 103
    const-string v2, "service"

    const-string v3, "BAIKE"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 104
    :cond_7d
    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v2

    if-eqz v2, :cond_9b

    const-string v2, "prvtfaq"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 105
    :cond_9b
    const-string v2, "service"

    invoke-virtual {p1}, Llogreport/FullLog;->getNlu()Lnluparser/scheme/NLU;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 107
    :cond_a9
    const-string v2, "service"

    const-string v3, "selfdialog"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e
.end method

.method private sendMainWakeupStatisticToPhicomm(Lnluparser/scheme/Mixture;)V
    .registers 7
    .param p1, "mixture"    # Lnluparser/scheme/Mixture;

    .prologue
    .line 87
    const-string v2, "PhicommDataStatisticHandler"

    const-string v3, "sendMainWakeupStatisticToPhicomm: "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnluparser/scheme/LocalASR;

    invoke-virtual {v2}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "wakeupWord":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "wakeupWord"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "wakeupType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wakeup"

    const-string v4, "unisound"

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 93
    return-void
.end method

.method private sendSimulateWakeupStatisticToPhicomm(Lcom/unisound/vui/transport/out/SimulateWakeupEvent;)V
    .registers 6
    .param p1, "evt"    # Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    .prologue
    .line 121
    const-string v1, "PhicommDataStatisticHandler"

    const-string v2, "sendSimulateWakeupStatisticToPhicomm: "

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "wakeupWord"

    invoke-virtual {p1}, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "wakeupType"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->getRandomMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wakeup"

    const-string v3, "unisound"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 126
    return-void
.end method

.method private sendStatisticInfoToPhicomm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 14
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x3

    .line 133
    new-instance v8, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;

    invoke-direct {v8, p1, p2, p3, p4}, Lcom/unisound/ant/device/bean/PhicommStatisticInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 134
    .local v8, "phicommStatisticInfo":Lcom/unisound/ant/device/bean/PhicommStatisticInfo;
    const-string v0, "PhicommDataStatisticHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStatisticInfoToPhicomm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->mMessageSenderDelegate:Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    const/high16 v4, 0x2000000

    const/4 v6, -0x1

    invoke-static {v8}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ParcelableUtil;->obtain(Ljava/lang/String;)Landroid/os/ParcelableUtil;

    move-result-object v7

    move v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/device/custom/message/MessageSenderDelegate;->send(ZIIIIILandroid/os/Parcelable;)V

    .line 136
    return-void
.end method


# virtual methods
.method public initPriority()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupResult(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 4
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {}, Lcom/unisound/vui/common/config/ANTConfigPreference;->isDev()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 71
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 82
    :goto_9
    return-void

    .line 74
    :cond_a
    instance-of v0, p1, Llogreport/FullLog;

    if-eqz v0, :cond_18

    move-object v0, p1

    .line 75
    check-cast v0, Llogreport/FullLog;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendDialogueStatisticToPhicomm(Llogreport/FullLog;)V

    .line 81
    :cond_14
    :goto_14
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_9

    .line 76
    :cond_18
    instance-of v0, p1, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    if-eqz v0, :cond_23

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendChangeWakeupWordStatisticToPhicomm(Lcom/unisound/vui/transport/out/ChangeWakeupWordEvent;)V

    goto :goto_14

    .line 78
    :cond_23
    instance-of v0, p1, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    if-eqz v0, :cond_14

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommDataStatisticHandler;->sendSimulateWakeupStatisticToPhicomm(Lcom/unisound/vui/transport/out/SimulateWakeupEvent;)V

    goto :goto_14
.end method
