.class public Lcom/unisound/sdk/az;
.super Ljava/lang/Object;


# static fields
.field private static t:Ljava/lang/Object;


# instance fields
.field a:Lcom/unisound/sdk/cf;

.field private b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

.field private c:Lcom/unisound/sdk/bt;

.field private d:Lcom/unisound/sdk/bu;

.field private e:Lcom/unisound/sdk/bx;

.field private f:Lcom/unisound/client/SpeechSynthesizerListener;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:I

.field private j:Lcom/unisound/sdk/bw;

.field private k:Ljava/lang/String;

.field private l:Lcom/unisound/client/IAudioSource;

.field private m:Lcom/unisound/sdk/be;

.field private n:Ljava/lang/Integer;

.field private o:Landroid/os/HandlerThread;

.field private p:Lcom/unisound/common/ab;

.field private q:Lcom/unisound/common/ag;

.field private r:Lcom/unisound/sdk/bz;

.field private s:Lcom/unisound/sdk/by;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/sdk/az;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "16000"

    iput-object v0, p0, Lcom/unisound/sdk/az;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/az;->i:I

    invoke-static {}, Lcom/unisound/sdk/bw;->a()Lcom/unisound/sdk/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/az;->k:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    new-instance v0, Lcom/unisound/sdk/ba;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/ba;-><init>(Lcom/unisound/sdk/az;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->r:Lcom/unisound/sdk/bz;

    new-instance v0, Lcom/unisound/sdk/bb;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bb;-><init>(Lcom/unisound/sdk/az;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->s:Lcom/unisound/sdk/by;

    new-instance v0, Lcom/unisound/sdk/cf;

    new-instance v1, Lcom/unisound/sdk/bc;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/bc;-><init>(Lcom/unisound/sdk/az;)V

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cf;-><init>(Lcom/unisound/sdk/cg;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/cf;

    iput-object p1, p0, Lcom/unisound/sdk/az;->h:Landroid/content/Context;

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p3}, Lcom/unisound/sdk/bw;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/sdk/bd;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bd;-><init>(Lcom/unisound/sdk/az;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    new-instance v0, Lcom/unisound/common/ag;

    invoke-direct {v0, p1}, Lcom/unisound/common/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->q:Lcom/unisound/common/ag;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/az;I)I
    .registers 2

    iput p1, p0, Lcom/unisound/sdk/az;->i:I

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/unisound/sdk/be;)I
    .registers 9

    const/4 v5, 0x0

    const/16 v4, 0x2710

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-object p2, p0, Lcom/unisound/sdk/az;->m:Lcom/unisound/sdk/be;

    iget-object v2, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    if-nez v2, :cond_1b

    iget-object v1, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const/16 v2, 0x8fd

    const v3, -0xfa01

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    :goto_1a
    return v0

    :cond_1b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v1, "SpeechSynthesizerInterface beginTts: text is unusable"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v2, 0xca

    const v3, -0x11e57

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    goto :goto_1a

    :cond_35
    invoke-direct {p0}, Lcom/unisound/sdk/az;->h()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->c()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->f()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->i()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->d()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->g()I

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/bt;->b(I)V

    :cond_50
    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/bx;->c(I)V

    :cond_59
    iget-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_67

    invoke-direct {p0}, Lcom/unisound/sdk/az;->k()Z

    move-result v0

    if-eqz v0, :cond_a9

    :cond_67
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    const-string v2, "22050"

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bw;->s(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    new-instance v0, Lcom/unisound/sdk/bt;

    iget-object v2, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-direct {v0, p1, v2}, Lcom/unisound/sdk/bt;-><init>(Ljava/lang/String;Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    const-string v2, "TTSOfflineSynthesizerThread"

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bt;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    iget-object v2, p0, Lcom/unisound/sdk/az;->r:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bt;->a(Lcom/unisound/sdk/bz;)V

    :goto_87
    invoke-direct {p0}, Lcom/unisound/sdk/az;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_98

    invoke-direct {p0}, Lcom/unisound/sdk/az;->k()Z

    move-result v0

    if-eqz v0, :cond_dd

    :cond_98
    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0}, Lcom/unisound/sdk/bt;->start()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "SpeechSynthesizerInterface beginTts: mOfflineSynthesizeThread.start()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :goto_a6
    move v0, v1

    goto/16 :goto_1a

    :cond_a9
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    iget-object v2, p0, Lcom/unisound/sdk/az;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bw;->s(Ljava/lang/Object;)V

    :try_start_b0
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-static {}, Lcom/unisound/c/a;->b()I

    move-result v2

    iput v2, v0, Lcom/unisound/sdk/bw;->a:I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b8} :catch_d2

    :goto_b8
    iput-object v5, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    new-instance v0, Lcom/unisound/sdk/bu;

    iget-object v2, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-direct {v0, p1, v2}, Lcom/unisound/sdk/bu;-><init>(Ljava/lang/String;Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    const-string v2, "TTSOnlineSynthesizerThread"

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bu;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    iget-object v2, p0, Lcom/unisound/sdk/az;->r:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/bu;->a(Lcom/unisound/sdk/bz;)V

    goto :goto_87

    :catch_d2
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "SpeechSynthesizerInterface getNetType error"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_b8

    :cond_dd
    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    invoke-virtual {v0}, Lcom/unisound/sdk/bu;->start()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "SpeechSynthesizerInterface beginTts: mOnlineSynthesizerThread.start(text)"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto :goto_a6
.end method

.method static synthetic a(Lcom/unisound/sdk/az;)Lcom/unisound/common/ab;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/az;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/az;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    aget-object v0, p1, v5

    check-cast v0, Ljava/lang/String;

    aget-object v1, p1, v6

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0xc9

    const v2, -0x11e56

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e
.end method

.method private a()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    new-instance v0, Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-direct {v0, v1}, Lcom/unisound/sdk/bx;-><init>(Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    const-string v1, "TTSPlayThread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->s:Lcom/unisound/sdk/by;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Lcom/unisound/sdk/by;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->l:Lcom/unisound/client/IAudioSource;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Lcom/unisound/client/IAudioSource;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->m:Lcom/unisound/sdk/be;

    sget-object v1, Lcom/unisound/sdk/be;->b:Lcom/unisound/sdk/be;

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Ljava/lang/Boolean;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface beginTts: onlySynthesize executed"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :cond_3b
    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->start()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface beginTts: mTTSPlayThread.start()"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/az;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/az;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bx;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/az;->q:Lcom/unisound/common/ag;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const/16 v1, 0x481

    invoke-interface {v0, v1}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    :cond_1a
    iget-object v0, p0, Lcom/unisound/sdk/az;->q:Lcom/unisound/common/ag;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "no READ_PHONE_STATE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const/16 v1, 0x47f

    invoke-interface {v0, v1}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    :cond_34
    iget-object v0, p0, Lcom/unisound/sdk/az;->q:Lcom/unisound/common/ag;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "no WRITE_EXTERNAL_STORAGE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const/16 v1, 0x482

    invoke-interface {v0, v1}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    :cond_4e
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    const-string v1, "22050"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bw;->s(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/az;->h()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->f()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->i()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->g()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    new-instance v0, Lcom/unisound/sdk/bt;

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-direct {v0, p1, v1}, Lcom/unisound/sdk/bt;-><init>(Ljava/lang/String;Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    const-string v1, "TTSOfflineSynthesizerThread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bt;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    iget-object v1, p0, Lcom/unisound/sdk/az;->r:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bt;->a(Lcom/unisound/sdk/bz;)V

    invoke-direct {p0}, Lcom/unisound/sdk/az;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0}, Lcom/unisound/sdk/bt;->start()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechSynthesizerInterface changeTts: mOfflineSynthesizeThread.start()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return-void
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0}, Lcom/unisound/sdk/bt;->h()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static synthetic c(Lcom/unisound/sdk/az;)Lcom/unisound/sdk/bt;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    return-object v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0}, Lcom/unisound/sdk/bt;->b()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static synthetic d(Lcom/unisound/sdk/az;)Lcom/unisound/client/SpeechSynthesizerListener;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    return-object v0
.end method

.method private e()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v0}, Lcom/unisound/sdk/bt;->g()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private f()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    invoke-virtual {v0}, Lcom/unisound/sdk/bu;->g()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private g()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->d:Lcom/unisound/sdk/bu;

    invoke-virtual {v0}, Lcom/unisound/sdk/bu;->b()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private h()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->j()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private i()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->b()V

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private j()V
    .registers 8

    const/16 v6, 0x66

    const/16 v5, 0x65

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_29

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_29
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_4b
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-virtual {v0, v6}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_67

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-virtual {v0, v6}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_67
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_89

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_89
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_ab
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_cd
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-virtual {v0, v5}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e9

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-virtual {v0, v5}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_e9
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10b

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_10b
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12d

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_12d
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14f

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_14f
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_171

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface removeMessage : remvoeMessage = "

    aput-object v1, v0, v2

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lcom/unisound/common/ab;->removeMessages(I)V

    :cond_171
    return-void
.end method

.method private k()Z
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->D()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/unisound/sdk/az;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/common/ae;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private l()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xe1

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface switchSpeeker begin"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const v1, -0x11e5c

    invoke-static {v1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_5c

    :goto_2d
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface switchSpeeker end"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto :goto_1d

    :sswitch_37
    iget-object v1, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-static {v1, v0}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    goto :goto_2d

    :sswitch_3d
    iget-object v1, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    goto :goto_2d

    :sswitch_47
    iget-object v1, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    goto :goto_2d

    :sswitch_51
    iget-object v1, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    goto :goto_2d

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x11e5e -> :sswitch_3d
        -0x11e5d -> :sswitch_51
        -0x11e5c -> :sswitch_47
        0x72 -> :sswitch_37
    .end sparse-switch
.end method

.method private m()V
    .registers 7

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(I)Z

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setTtsField...."

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_10

    :cond_34
    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_37
    return-void
.end method

.method public static sendEmptyMsg(Lcom/unisound/common/ab;I)V
    .registers 6

    sget-object v1, Lcom/unisound/sdk/az;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechSynthesizerInterface ->sendEmptyMsg what = "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {p0, p1}, Lcom/unisound/common/ab;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public static sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V
    .registers 7

    sget-object v1, Lcom/unisound/sdk/az;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechSynthesizerInterface ->sendMsg what = "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, " obj = "

    aput-object v3, v0, v2

    const/4 v2, 0x3

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {p0, p1, p2}, Lcom/unisound/common/ab;->sendMessage(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected cancel()I
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface cancel begin"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-object v1, Lcom/unisound/sdk/az;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    invoke-direct {p0}, Lcom/unisound/sdk/az;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/unisound/sdk/az;->c()I

    move-result v2

    invoke-direct {p0}, Lcom/unisound/sdk/az;->f()I

    move-result v3

    invoke-direct {p0}, Lcom/unisound/sdk/az;->j()V

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_57

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_2b

    new-array v1, v6, [Ljava/lang/Object;

    const-string v4, "SpeechSynthesizerInterface->cancel:stop() start"

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/unisound/sdk/az;->stop()V

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_3b

    new-array v1, v6, [Ljava/lang/Object;

    const-string v4, "SpeechSynthesizerInterface->cancel:stop() end"

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3b
    if-eq v3, v2, :cond_40

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    :cond_40
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4d

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface cancel end -1"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_4d
    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface cancel end"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return v5

    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .registers 5

    sparse-switch p1, :sswitch_data_9c

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :sswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_10
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_1b
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_26
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_2d
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->J()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_38
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_43
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->y()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_4e
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->f()Lcom/unisound/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_59
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->A()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_64
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->D()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :sswitch_6b
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :sswitch_72
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_7d
    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_89
    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0xe1

    const v2, -0x11e5f

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/az;->sendMsg(Lcom/unisound/common/ab;ILjava/lang/String;)V

    const-string v0, ""

    goto/16 :goto_4

    nop

    :sswitch_data_9c
    .sparse-switch
        0x40c -> :sswitch_72
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_10
        0x7d3 -> :sswitch_1b
        0x7d4 -> :sswitch_43
        0x7d5 -> :sswitch_26
        0x7db -> :sswitch_4e
        0x7dc -> :sswitch_38
        0x7dd -> :sswitch_59
        0x7de -> :sswitch_6b
        0x7e4 -> :sswitch_64
        0x7f1 -> :sswitch_7d
        0x7f8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public getParams()Lcom/unisound/sdk/bw;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected getStatus()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/az;->i:I

    return v0
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "v3.10.77-phicomm,c6a7b7c5"

    return-object v0
.end method

.method protected init(Ljava/lang/String;)I
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/unisound/sdk/az;->b()V

    :try_start_8
    iget-object v0, p0, Lcom/unisound/sdk/az;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_4f

    :cond_d
    :goto_d
    if-eqz p1, :cond_6f

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->E()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/v;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_29

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/unisound/sdk/az;->setOption(ILjava/lang/Object;)V

    goto :goto_29

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const/16 v1, 0x8fd

    const v2, -0x109a1

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_d

    :cond_66
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface init: jsonString init param executed"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :cond_6f
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->l()Z

    move-result v0

    if-eqz v0, :cond_92

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ht_outer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->o:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unisound/sdk/az;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unisound/sdk/bd;

    iget-object v1, p0, Lcom/unisound/sdk/az;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bd;-><init>(Lcom/unisound/sdk/az;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    :cond_92
    iget-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_a2

    iget-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_14a

    :cond_a2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface init: TTS_SERVICE_MODE_LOCAL"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-static {}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b()Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getDicModelPath= "

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, " getSpeakerModelPath= "

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, " getAnnotationFilePath = "

    aput-object v1, v0, v8

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v2}, Lcom/unisound/sdk/bw;->i()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, " getUserDictFilePath = "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v2}, Lcom/unisound/sdk/bw;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/cf;

    invoke-virtual {v0}, Lcom/unisound/sdk/cf;->c()Z

    move-result v0

    if-nez v0, :cond_131

    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-nez v0, :cond_131

    new-array v0, v8, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->g()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->i()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->j()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/cf;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/cf;->a([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/cf;

    invoke-virtual {v0}, Lcom/unisound/sdk/cf;->a()V

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface init: asyncTask.start()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :cond_130
    :goto_130
    return v4

    :cond_131
    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface init: mTts.isInit()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto :goto_130

    :cond_14a
    iget-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_130

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface init: TTS_SERVICE_MODE_NET"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto :goto_130
.end method

.method public isPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->k()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected pause()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface pause begin"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->d()V

    :cond_14
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface pause end"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return-void
.end method

.method protected playBuffer([B)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->c(I)V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    new-instance v0, Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-direct {v0, v1}, Lcom/unisound/sdk/bx;-><init>(Lcom/unisound/sdk/bw;)V

    iput-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    const-string v1, "TTSPlayThread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->s:Lcom/unisound/sdk/by;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Lcom/unisound/sdk/by;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    iget-object v1, p0, Lcom/unisound/sdk/az;->l:Lcom/unisound/client/IAudioSource;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Lcom/unisound/client/IAudioSource;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->start()V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bx;->a([B)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->h()V

    return-void
.end method

.method protected playSynWav()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bx;->a(Ljava/lang/Boolean;)V

    :cond_e
    return-void
.end method

.method protected playText(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/be;

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/az;->a(Ljava/lang/String;Lcom/unisound/sdk/be;)I

    move-result v0

    return v0
.end method

.method protected release(ILjava/lang/String;)I
    .registers 8

    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "SpeechSynthesizerInterface release begin"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_54

    const-string v0, "SpeechSynthesizerInterface release : release type error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move v0, v1

    :cond_16
    :goto_16
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "SpeechSynthesizerInterface release end"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return v0

    :pswitch_20
    invoke-virtual {p0}, Lcom/unisound/sdk/az;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/unisound/sdk/az;->e()I

    move-result v0

    :goto_2b
    iget-object v2, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/unisound/sdk/az;->c:Lcom/unisound/sdk/bt;

    invoke-virtual {v2, v4}, Lcom/unisound/sdk/bt;->b(I)V

    :cond_34
    iget-object v2, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v2, v4}, Lcom/unisound/sdk/bx;->c(I)V

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/az;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object v0, p0, Lcom/unisound/sdk/az;->p:Lcom/unisound/common/ab;

    const/16 v2, 0x70

    invoke-static {v0, v2}, Lcom/unisound/sdk/az;->sendEmptyMsg(Lcom/unisound/common/ab;I)V

    :cond_51
    move v0, v1

    goto :goto_2b

    nop

    :pswitch_data_54
    .packed-switch 0x961
        :pswitch_20
    .end packed-switch
.end method

.method protected resume()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface resume begin"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/unisound/sdk/az;->e:Lcom/unisound/sdk/bx;

    invoke-virtual {v0}, Lcom/unisound/sdk/bx;->f()V

    :cond_14
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface resume end"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    return-void
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .registers 3

    iput-object p1, p0, Lcom/unisound/sdk/az;->l:Lcom/unisound/client/IAudioSource;

    const/4 v0, 0x0

    return v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 6

    sparse-switch p1, :sswitch_data_f2

    :goto_3
    return-void

    :sswitch_4
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->n(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_a
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->o(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_10
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->p(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_16
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->m(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_1c
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->q(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_22
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->s(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/az;->g:Ljava/lang/String;

    goto :goto_3

    :sswitch_2c
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->u(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_32
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->v(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_38
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/unisound/sdk/az;->n:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->x(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_43
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->E(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_49
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->k(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/unisound/common/y;->k:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/unisound/c/a;->b(Z)V

    goto :goto_3

    :sswitch_64
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->l(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_6a
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->j(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_70
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->g(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_76
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->h(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_7c
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->i(Ljava/lang/Object;)V

    goto :goto_3

    :sswitch_82
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_89
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->e(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_90
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_97
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_9e
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->c(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_a5
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->d(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_ac
    invoke-virtual {p0}, Lcom/unisound/sdk/az;->cancel()I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechSynthesizerInterface setOption switch backend_model: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/az;->l()V

    goto/16 :goto_3

    :sswitch_c7
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->z(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_ce
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->y(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_d5
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->A(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_dc
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->B(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_e3
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->C(Ljava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_ea
    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bw;->D(Ljava/lang/Object;)V

    goto/16 :goto_3

    nop

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_43
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_a
        0x7d3 -> :sswitch_10
        0x7d4 -> :sswitch_22
        0x7d5 -> :sswitch_16
        0x7db -> :sswitch_2c
        0x7dc -> :sswitch_1c
        0x7dd -> :sswitch_32
        0x7de -> :sswitch_49
        0x7df -> :sswitch_64
        0x7e0 -> :sswitch_6a
        0x7e4 -> :sswitch_38
        0x7e5 -> :sswitch_70
        0x7e6 -> :sswitch_76
        0x7e7 -> :sswitch_7c
        0x7e8 -> :sswitch_82
        0x7e9 -> :sswitch_89
        0x7ee -> :sswitch_90
        0x7ef -> :sswitch_97
        0x7f0 -> :sswitch_ac
        0x7f2 -> :sswitch_9e
        0x7f3 -> :sswitch_a5
        0x7f4 -> :sswitch_c7
        0x7f5 -> :sswitch_ce
        0x7f6 -> :sswitch_d5
        0x7f7 -> :sswitch_dc
        0x7f8 -> :sswitch_e3
        0x7f9 -> :sswitch_ea
    .end sparse-switch
.end method

.method public setServer(Ljava/lang/String;S)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/az;->j:Lcom/unisound/sdk/bw;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/bw;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/az;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    return-void
.end method

.method protected stop()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface stop begin"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/az;->i()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->d()I

    invoke-direct {p0}, Lcom/unisound/sdk/az;->g()I

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "SpeechSynthesizerInterface stop end"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthesizeText(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/unisound/sdk/be;->b:Lcom/unisound/sdk/be;

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/az;->a(Ljava/lang/String;Lcom/unisound/sdk/be;)I

    return-void
.end method
