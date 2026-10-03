.class public Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "PhicommChatHandler.java"


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
.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/eav_event.log"

.field private static final MAX_IDLE_TIMEOUT:I = 0x3a98

.field private static final MUSIC_KEYWORDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PhicommChat"

.field private static final WEATHER_KEYWORDS:[Ljava/lang/String;


# instance fields
.field private conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

.field private ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field private currentResponse:Ljava/lang/String;

.field private idiomGameTurn:I

.field private isIdiomGameMode:Z

.field private isMultiTurnMode:Z

.field private volatile isProcessingRequest:Z

.field private lastUserIdiom:Ljava/lang/String;

.field private volatile lastUserInput:Ljava/lang/String;

.field private openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

.field private volatile pendingTease:Z

.field private timeoutHandler:Landroid/os/Handler;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u64ad\u653e"

    aput-object v1, v0, v3

    const-string v1, "\u653e\u4e00\u9996"

    aput-object v1, v0, v4

    const-string v1, "\u6765\u4e00\u9996"

    aput-object v1, v0, v5

    const-string v1, "\u6765\u4e00\u4e2a"

    aput-object v1, v0, v6

    const-string v1, "\u6211\u60f3\u542c"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u5531\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u542c\u97f3\u4e50"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u542c\u6b4c"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u653e\u6b4c"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u653e\u97f3\u4e50"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6765\u70b9\u97f3\u4e50"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u653e\u4e2a\u6b4c"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u7ed9\u6211\u5531"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5531\u9996"

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->MUSIC_KEYWORDS:[Ljava/lang/String;

    .line 71
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5929\u6c14"

    aput-object v1, v0, v3

    const-string v1, "\u6e29\u5ea6"

    aput-object v1, v0, v4

    const-string v1, "\u4e0b\u96e8"

    aput-object v1, v0, v5

    const-string v1, "\u6674\u5929"

    aput-object v1, v0, v6

    const-string v1, "\u9634\u5929"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u591a\u4e91"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u51e0\u5ea6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6444\u6c0f\u5ea6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u522e\u98ce"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e0b\u96ea"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u96fe\u973e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u7a7a\u6c14\u8d28\u91cf"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5929\u6c14\u9884\u62a5"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u4eca\u5929\u5929\u6c14"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u660e\u5929\u5929\u6c14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->WEATHER_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 88
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z

    .line 94
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    .line 95
    iput v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    .line 105
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    .line 109
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z

    .line 112
    const-string v0, "session_chat"

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->sessionName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->handleTtsPlayingEnd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    return v0
.end method

.method static synthetic access$202(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;I)I
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    return p1
.end method

.method static synthetic access$208(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)I
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    return v0
.end method

.method static synthetic access$302(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;)Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    return-object p1
.end method

.method static synthetic access$500(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    return p1
.end method

.method static synthetic access$802(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;)Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    return-object p1
.end method

.method static synthetic access$902(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z

    return p1
.end method

.method private containsAny(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "keywords"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 695
    array-length v3, p2

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_e

    aget-object v0, p2, v2

    .line 696
    .local v0, "keyword":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 697
    const/4 v1, 0x1

    .line 700
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_e
    return v1

    .line 695
    .restart local v0    # "keyword":Ljava/lang/String;
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private exit()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 613
    :try_start_2
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_35

    .line 619
    :goto_7
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 622
    const/4 v1, 0x0

    .line 623
    .local v1, "waitCount":I
    :goto_f
    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z

    if-eqz v2, :cond_27

    const/16 v2, 0x14

    if-ge v1, v2, :cond_27

    .line 625
    const-wide/16 v2, 0x64

    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1f

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 627
    :catch_1f
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 634
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_27
    iput-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    .line 635
    iput v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    .line 636
    iput-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;

    .line 639
    iput-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    .line 640
    iput-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 642
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->reset()V

    .line 643
    return-void

    .line 616
    .end local v1    # "waitCount":I
    :catch_35
    move-exception v2

    goto :goto_7
.end method

.method private extractFirstIdiom(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v7, 0x0

    .line 711
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_c
    move-object v5, p1

    .end local p1    # "text":Ljava/lang/String;
    .local v5, "text":Ljava/lang/String;
    move-object v6, p1

    .line 747
    :goto_e
    return-object v6

    .line 716
    .end local v5    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v9, :cond_1c

    move-object v5, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    move-object v6, p1

    .line 720
    goto :goto_e

    .line 725
    .end local v5    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_1c
    const/16 v6, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "\uff0c"

    aput-object v6, v4, v7

    const/4 v6, 0x1

    const-string v8, ","

    aput-object v8, v4, v6

    const/4 v6, 0x2

    const-string v8, "\u3001"

    aput-object v8, v4, v6

    const/4 v6, 0x3

    const-string v8, "\u3002"

    aput-object v8, v4, v6

    const-string v6, "."

    aput-object v6, v4, v9

    const/4 v6, 0x5

    const-string v8, "\uff01"

    aput-object v8, v4, v6

    const/4 v6, 0x6

    const-string v8, "!"

    aput-object v8, v4, v6

    const/4 v6, 0x7

    const-string v8, "\uff1f"

    aput-object v8, v4, v6

    const-string v6, "?"

    aput-object v6, v4, v10

    .line 726
    .local v4, "separators":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 728
    .local v1, "firstSeparatorIndex":I
    array-length v8, v4

    move v6, v7

    :goto_50
    if-ge v6, v8, :cond_61

    aget-object v3, v4, v6

    .line 729
    .local v3, "sep":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 730
    .local v2, "index":I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_5e

    if-ge v2, v1, :cond_5e

    .line 731
    move v1, v2

    .line 728
    :cond_5e
    add-int/lit8 v6, v6, 0x1

    goto :goto_50

    .line 736
    .end local v2    # "index":I
    .end local v3    # "sep":Ljava/lang/String;
    :cond_61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_7b

    .line 737
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "firstPart":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v10, :cond_7b

    .line 742
    invoke-direct {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFourCharIdiom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_e

    .line 747
    .end local v0    # "firstPart":Ljava/lang/String;
    .end local v5    # "text":Ljava/lang/String;
    .restart local p1    # "text":Ljava/lang/String;
    :cond_7b
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->extractFourCharIdiom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    .end local p1    # "text":Ljava/lang/String;
    .restart local v5    # "text":Ljava/lang/String;
    goto :goto_e
.end method

.method private extractFourCharIdiom(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    .line 755
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 777
    .end local p1    # "text":Ljava/lang/String;
    :cond_9
    :goto_9
    return-object p1

    .line 760
    .restart local p1    # "text":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v1, "chineseOnly":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 762
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 764
    .local v0, "c":C
    const/16 v4, 0x4e00

    if-lt v0, v4, :cond_26

    const v4, 0x9fa5

    if-gt v0, v4, :cond_26

    .line 765
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 769
    .end local v0    # "c":C
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "cleaned":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v5, :cond_3b

    .line 773
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object p1, v2

    goto :goto_9

    .line 777
    :cond_3b
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_9
.end method

.method private handleTtsPlayingEnd()Z
    .registers 13

    .prologue
    const-wide/16 v10, 0x3a98

    const-wide/16 v8, 0x1f4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 504
    const-string v5, "PhicommChat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTtsPlayingEnd, isIdiomGameMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isMultiTurnMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 515
    iget-boolean v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z

    if-eqz v5, :cond_72

    iget-boolean v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    if-nez v5, :cond_72

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;

    if-eqz v5, :cond_72

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserInput:Ljava/lang/String;

    if-eqz v5, :cond_72

    move v1, v3

    .line 517
    .local v1, "teaseAfterAnswer":Z
    :goto_40
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserInput:Ljava/lang/String;

    .line 521
    .local v2, "teaseUser":Ljava/lang/String;
    iput-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z

    .line 523
    iget-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    if-eqz v4, :cond_74

    .line 525
    const-string v4, "PhicommChat"

    const-string v5, "\u6210\u8bed\u63a5\u9f99\u6a21\u5f0f:\u8fdb\u5165 ASR \u7ee7\u7eed\u8046\u542c"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->reset()V

    .line 529
    new-instance v4, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;

    invoke-direct {v4, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$2;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)V

    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    .line 542
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 545
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$3;

    invoke-direct {v5, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$3;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 607
    :cond_71
    :goto_71
    return v3

    .end local v1    # "teaseAfterAnswer":Z
    .end local v2    # "teaseUser":Ljava/lang/String;
    :cond_72
    move v1, v4

    .line 515
    goto :goto_40

    .line 553
    .restart local v1    # "teaseAfterAnswer":Z
    .restart local v2    # "teaseUser":Ljava/lang/String;
    :cond_74
    iget-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    if-eqz v4, :cond_a2

    .line 555
    const-string v4, "PhicommChat"

    const-string v5, "\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f:\u8fdb\u5165 ASR \u7ee7\u7eed\u8046\u542c"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->reset()V

    .line 559
    new-instance v4, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$4;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;ZLjava/lang/String;)V

    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    .line 581
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$5;

    invoke-direct {v5, p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$5;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;)V

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_71

    .line 594
    :cond_a2
    const-string v4, "PhicommChat"

    const-string v5, "\u666e\u901a\u6a21\u5f0f:\u9000\u51fa\u5230\u5524\u9192\u72b6\u6001"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->exit()V

    .line 598
    if-eqz v1, :cond_71

    .line 599
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    if-eqz v4, :cond_cc

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 600
    .local v0, "appCtx":Landroid/content/Context;
    :goto_b8
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;

    invoke-direct {v5, p0, v0, v2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$6;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x9c4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_71

    .line 599
    .end local v0    # "appCtx":Landroid/content/Context;
    :cond_cc
    const/4 v0, 0x0

    goto :goto_b8
.end method

.method private static writeLog(Ljava/lang/String;)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const-string v3, "/sdcard/eav_event.log"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 56
    .local v1, "fw":Ljava/io/FileWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "timestamp":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "PhicommChat"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 58
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 62
    .end local v1    # "fw":Ljava/io/FileWriter;
    .end local v2    # "timestamp":Ljava/lang/String;
    :goto_3c
    return-void

    .line 59
    :catch_3d
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5199\u5165\u65e5\u5fd7\u5931\u8d25: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method


# virtual methods
.method public bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method public acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .registers 9
    .param p1, "evt"    # Lnluparser/scheme/NLU;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 138
    if-nez p1, :cond_c

    .line 139
    const-string v3, "PhicommChat"

    const-string v4, "acceptInboundEvent0: evt is null, return false"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_b
    return v2

    .line 143
    :cond_c
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "service":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "text":Ljava/lang/String;
    const-string v4, "PhicommChat"

    const-string v5, "========================================"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v4, "PhicommChat"

    const-string v5, "acceptInboundEvent0 \u88ab\u8c03\u7528!"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "PhicommChat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "PhicommChat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "PhicommChat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIdiomGameMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "PhicommChat"

    const-string v5, "========================================"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v4, "cn.yunzhisheng.chat"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 155
    const-string v3, "PhicommChat"

    const-string v4, "service \u4e0d\u662f chat, \u653e\u884c"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 160
    :cond_83
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->cancelPending()V

    .line 164
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->isEchoGuardActive()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 165
    const-string v2, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TEASE] \u8c03\u4f83\u64ad\u653e\u7a97\u53e3\u5185\u6536\u5230 chat \u4e8b\u4ef6(\u7591\u4f3c\u81ea\u542c\u56de\u58f0), \u541e\u6389: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 166
    goto/16 :goto_b

    .line 170
    :cond_ab
    if-eqz v1, :cond_168

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_168

    .line 172
    iget-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    if-eqz v4, :cond_d2

    .line 173
    const-string v2, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6210\u8bed\u63a5\u9f99\u6a21\u5f0f,\u62e6\u622a\u6240\u6709\u8f93\u5165: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 174
    goto/16 :goto_b

    .line 178
    :cond_d2
    const-string v4, "\u6210\u8bed\u63a5\u9f99"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ea

    const-string v4, "\u5f00\u59cb\u6210\u8bed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ea

    const-string v4, "\u6210\u8bed\u6e38\u620f"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_105

    .line 179
    :cond_ea
    const-string v2, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u68c0\u6d4b\u5230\u6210\u8bed\u63a5\u9f99\u542f\u52a8\u6307\u4ee4,\u62e6\u622a: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 180
    goto/16 :goto_b

    .line 185
    :cond_105
    sget-object v4, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->MUSIC_KEYWORDS:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_127

    .line 186
    const-string v3, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5305\u542b\u97f3\u4e50\u5173\u952e\u8bcd,\u653e\u884c: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 191
    :cond_127
    sget-object v4, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->WEATHER_KEYWORDS:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->containsAny(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 192
    const-string v3, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5305\u542b\u5929\u6c14\u5173\u952e\u8bcd,\u653e\u884c: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 198
    :cond_149
    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    if-eqz v2, :cond_168

    .line 199
    const-string v2, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u591a\u8f6e\u5bf9\u8bdd\u6a21\u5f0f,\u62e6\u622a\u6240\u6709\u8f93\u5165: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 200
    goto/16 :goto_b

    .line 205
    :cond_168
    const-string v2, "PhicommChat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u62e6\u622a chat \u610f\u56fe,\u8d70\u5927\u6a21\u578b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 206
    goto/16 :goto_b
.end method

.method public doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .registers 10
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "interruptType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 648
    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->eventReceived:Z

    if-eqz v2, :cond_63

    .line 649
    const-string v2, "PhicommChat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInterrupt, isIdiomGameMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isMultiTurnMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->get()Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->cancelPending()V

    .line 653
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 656
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 659
    const/4 v1, 0x0

    .line 660
    .local v1, "waitCount":I
    :goto_3e
    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isProcessingRequest:Z

    if-eqz v2, :cond_56

    const/16 v2, 0x14

    if-ge v1, v2, :cond_56

    .line 662
    const-wide/16 v2, 0x64

    :try_start_48
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4e

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 664
    :catch_4e
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 671
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_56
    iput-boolean v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    .line 672
    iput v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->idiomGameTurn:I

    .line 673
    iput-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserIdiom:Ljava/lang/String;

    .line 676
    iput-boolean v5, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    .line 677
    iput-object v6, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->conversationHistory:Lcom/phicomm/speaker/device/custom/ai/ConversationHistory;

    .line 679
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->reset()V

    .line 681
    .end local v1    # "waitCount":I
    :cond_63
    return-void
.end method

.method public bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method public eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .registers 7
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 215
    invoke-static {}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->isEchoGuardActive()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 216
    const-string v1, "PhicommChat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TEASE] \u541e\u6389\u8c03\u4f83\u56de\u58f0, \u4e0d\u8c03\u5927\u6a21\u578b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->reset()V

    .line 488
    :goto_28
    return-void

    .line 221
    :cond_29
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "userInput":Ljava/lang/String;
    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->lastUserInput:Ljava/lang/String;

    .line 223
    const-string v1, "PhicommChat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chat intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isIdiomGameMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    if-nez v1, :cond_5b

    iget-boolean v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    if-eqz v1, :cond_66

    :cond_5b
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_66

    .line 227
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    :cond_66
    new-instance v1, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler$1;-><init>(Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;Ljava/lang/String;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    invoke-static {v1}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto :goto_28
.end method

.method public initPriority()V
    .registers 2

    .prologue
    .line 118
    const/16 v0, 0x13b

    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->setPriority(I)V

    .line 119
    return-void
.end method

.method public onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 7
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 127
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->load(Landroid/content/Context;)Lcom/phicomm/speaker/device/custom/config/AIConfig;

    move-result-object v0

    .line 129
    .local v0, "config":Lcom/phicomm/speaker/device/custom/config/AIConfig;
    new-instance v2, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    invoke-direct {v2, v0}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;-><init>(Lcom/phicomm/speaker/device/custom/config/AIConfig;)V

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->openAIClient:Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;

    .line 131
    const-string v2, "PhicommChat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhicommChatHandler initialized with model: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/config/AIConfig;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v2

    return v2
.end method

.method public onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .registers 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 492
    const-string v0, "PhicommChat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS playing end (\u539f\u5382), isIdiomGameMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isIdiomGameMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMultiTurnMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->isMultiTurnMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->handleTtsPlayingEnd()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->currentResponse:Ljava/lang/String;

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommChatHandler;->pendingTease:Z

    .line 688
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 689
    return-void
.end method
