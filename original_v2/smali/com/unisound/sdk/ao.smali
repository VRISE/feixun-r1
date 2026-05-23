.class public Lcom/unisound/sdk/ao;
.super Lcom/unisound/common/ab;

# interfaces
.implements Lcom/unisound/sdk/ak;
.implements Lcom/unisound/sdk/au;
.implements Lcom/unisound/sdk/cq;


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field private static final r:I = 0x28


# instance fields
.field protected c:Lcom/unisound/common/av;

.field private d:Lcom/unisound/common/au;

.field private e:Lcom/unisound/sdk/ay;

.field private f:Lcom/unisound/sdk/ay;

.field private g:Lcom/unisound/sdk/an;

.field private h:Lcom/unisound/sdk/z;

.field private i:Lcom/unisound/sdk/ad;

.field private j:Lcom/unisound/sdk/as;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/content/Context;

.field private n:Lcom/unisound/sdk/aa;

.field private o:Landroid/os/Looper;

.field private p:Lcom/unisound/sdk/ag;

.field private q:Lcom/unisound/sdk/af;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0xea60

    sput v0, Lcom/unisound/sdk/ao;->a:I

    const/16 v0, 0x2710

    sput v0, Lcom/unisound/sdk/ao;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/as;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    new-instance v0, Lcom/unisound/common/au;

    invoke-direct {v0}, Lcom/unisound/common/au;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/common/au;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->f:Lcom/unisound/sdk/ay;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ao;->l:Z

    iput-object v1, p0, Lcom/unisound/sdk/ao;->n:Lcom/unisound/sdk/aa;

    new-instance v0, Lcom/unisound/sdk/ap;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/ap;-><init>(Lcom/unisound/sdk/ao;)V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->p:Lcom/unisound/sdk/ag;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->c:Lcom/unisound/common/av;

    iput-object p1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/as;Landroid/os/Looper;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/unisound/common/ab;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/unisound/common/au;

    invoke-direct {v0}, Lcom/unisound/common/au;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/common/au;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->f:Lcom/unisound/sdk/ay;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ao;->l:Z

    iput-object v1, p0, Lcom/unisound/sdk/ao;->n:Lcom/unisound/sdk/aa;

    new-instance v0, Lcom/unisound/sdk/ap;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/ap;-><init>(Lcom/unisound/sdk/ao;)V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->p:Lcom/unisound/sdk/ag;

    iput-object v1, p0, Lcom/unisound/sdk/ao;->c:Lcom/unisound/common/av;

    iput-object p1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    iput-object p2, p0, Lcom/unisound/sdk/ao;->o:Landroid/os/Looper;

    new-instance v0, Lcom/unisound/sdk/af;

    iget-object v1, p0, Lcom/unisound/sdk/ao;->p:Lcom/unisound/sdk/ag;

    invoke-direct {v0, v1, p2}, Lcom/unisound/sdk/af;-><init>(Lcom/unisound/sdk/ag;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/ao;)Lcom/unisound/sdk/af;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/ao;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/ao;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/ao;)Lcom/unisound/sdk/ad;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Before startRecognition :cancelRecognition()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/unisound/sdk/ao;->d(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    iget-object v1, p0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/common/au;

    invoke-virtual {v1}, Lcom/unisound/common/au;->a()I

    move-result v1

    iput v1, v0, Lcom/unisound/sdk/as;->aW:I

    :try_start_18
    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-static {}, Lcom/unisound/c/a;->b()I

    move-result v1

    iput v1, v0, Lcom/unisound/sdk/as;->aZ:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_62

    :goto_20
    iget-object v0, p0, Lcom/unisound/sdk/ao;->f:Lcom/unisound/sdk/ay;

    iput-object v0, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ao;->c:Lcom/unisound/common/av;

    iput-boolean v3, p0, Lcom/unisound/sdk/ao;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/an;

    iget-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    iget-object v2, p0, Lcom/unisound/sdk/ao;->m:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/unisound/sdk/an;-><init>(Lcom/unisound/sdk/as;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/an;->a(Lcom/unisound/sdk/ak;)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/an;->setPriority(I)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    const-string v1, "usc_net_thread"

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/an;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->A()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->start()V

    :cond_58
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Recognizer:: recognitionThread start"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void

    :catch_62
    move-exception v0

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Recognizer:: getNetType error"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_20
.end method

.method private d(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->d()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->c()V

    :cond_11
    return-void
.end method

.method private f(I)V
    .registers 5

    if-nez p1, :cond_13

    new-instance v0, Lcom/unisound/common/av;

    iget-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    iget v1, v1, Lcom/unisound/sdk/as;->aY:I

    iget-object v2, p0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/common/au;

    invoke-virtual {v2}, Lcom/unisound/common/au;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/av;-><init>(II)V

    iput-object v0, p0, Lcom/unisound/sdk/ao;->c:Lcom/unisound/common/av;

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ao;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->b()Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ad;->b(I)V

    goto :goto_2e
.end method

.method private r()V
    .registers 5

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Recognizer stopRecording"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/unisound/sdk/ao;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->d()V

    :cond_16
    return-void
.end method

.method private s()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ao;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->a()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->c()V

    :cond_19
    return-void
.end method

.method private t()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->g()V

    :cond_9
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/ao;->sendMessage(I)V

    return-void
.end method

.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unisound/common/an;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 2

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->r()V

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->t()V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/ao;->f(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/sdk/ad;->a(IILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/unisound/sdk/ad;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/sdk/ao;->m:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/ad;)V

    invoke-static {p1}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/sdk/cp;

    invoke-direct {v0}, Lcom/unisound/sdk/cp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cp;->a(Lcom/unisound/sdk/cq;)V

    iget-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0}, Lcom/unisound/sdk/ad;->b()V

    :cond_9
    return-void
.end method

.method public a(Lcom/unisound/sdk/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    return-void
.end method

.method public a(Lcom/unisound/sdk/al;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ad;->a(Lcom/unisound/sdk/al;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/unisound/sdk/ay;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/ao;->f:Lcom/unisound/sdk/ay;

    iput-object p1, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    return-void
.end method

.method public a(Lcom/unisound/sdk/z;ZLjava/lang/String;Lcom/unisound/sdk/aa;)V
    .registers 7

    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->d()V

    invoke-direct {p0, p3}, Lcom/unisound/sdk/ao;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_1a

    iput-object p4, p0, Lcom/unisound/sdk/ao;->n:Lcom/unisound/sdk/aa;

    iput-object p1, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/z;->setPriority(I)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    invoke-virtual {v0}, Lcom/unisound/sdk/z;->start()V

    :cond_1a
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/unisound/sdk/cp;

    invoke-direct {v0}, Lcom/unisound/sdk/cp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cp;->a(Lcom/unisound/sdk/cq;)V

    iget-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/as;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;ZIJJII)V
    .registers 10

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/unisound/sdk/ao;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->b()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
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

    new-instance v0, Lcom/unisound/sdk/cp;

    invoke-direct {v0}, Lcom/unisound/sdk/cp;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cp;->a(Lcom/unisound/sdk/cq;)V

    iget-object v1, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v1}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cp;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/as;->K(Z)V

    return-void
.end method

.method public a(Z[BII)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/ao;->n:Lcom/unisound/sdk/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->n:Lcom/unisound/sdk/aa;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/aa;->a([B)V

    :cond_9
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ad;->a(I)V

    :cond_9
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/ao;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 6

    const/4 v3, 0x1

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0}, Lcom/unisound/sdk/ad;->d()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    const v0, -0xee49

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ao;->f(I)V

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "startRecognition Error:cancelRecognition()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/unisound/sdk/ao;->d(Z)V

    goto :goto_c
.end method

.method public b(Z[BII)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->A()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    invoke-virtual {v0}, Lcom/unisound/sdk/as;->B()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_10
    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/an;->a([B)V

    :cond_1b
    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_22

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ad;->a(Z[BII)V

    :cond_22
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->start()V

    :cond_9
    return-void
.end method

.method public c(I)V
    .registers 3

    sget v0, Lcom/unisound/sdk/ao;->a:I

    if-le p1, v0, :cond_c

    sget p1, Lcom/unisound/sdk/ao;->a:I

    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/af;->a(I)V

    return-void

    :cond_c
    sget v0, Lcom/unisound/sdk/ao;->b:I

    if-ge p1, v0, :cond_6

    sget p1, Lcom/unisound/sdk/ao;->b:I

    goto :goto_6
.end method

.method protected c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ay;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public c(Z)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ao;->e:Lcom/unisound/sdk/ay;

    iput-boolean v1, p0, Lcom/unisound/sdk/ao;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/ao;->q:Lcom/unisound/sdk/af;

    invoke-virtual {v0}, Lcom/unisound/sdk/af;->e()V

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->t()V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/ao;->d(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Recognizer: cancelRecognition()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/ao;->removeSendMessage()V

    return-void
.end method

.method public d()V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->r()V

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->s()V

    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->j:Lcom/unisound/sdk/as;

    iput p1, v0, Lcom/unisound/sdk/as;->bd:I

    return-void
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0}, Lcom/unisound/sdk/ad;->g()V

    :cond_9
    return-void
.end method

.method public e(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ad;->c(I)V

    :cond_9
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/ao;->l:Z

    return v0
.end method

.method public h()Lcom/unisound/common/au;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/common/au;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ao;->f(I)V

    return-void
.end method

.method public j()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ao;->h:Lcom/unisound/sdk/z;

    invoke-direct {p0}, Lcom/unisound/sdk/ao;->s()V

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0}, Lcom/unisound/sdk/ad;->f()V

    :cond_f
    return-void
.end method

.method public k()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ao;->d(Z)V

    const v0, -0xee4a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ao;->f(I)V

    return-void
.end method

.method public k(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/ao;->i:Lcom/unisound/sdk/ad;

    invoke-interface {v0}, Lcom/unisound/sdk/ad;->h()V

    :cond_9
    return-void
.end method

.method public l()V
    .registers 1

    return-void
.end method

.method public m()V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/ao;->c(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "max_speech_timeout cancel()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/16 v0, -0x7532

    invoke-direct {p0, v0}, Lcom/unisound/sdk/ao;->f(I)V

    return-void
.end method

.method public n()V
    .registers 1

    invoke-virtual {p0}, Lcom/unisound/sdk/ao;->e()V

    return-void
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()Lcom/unisound/common/av;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->c:Lcom/unisound/common/av;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/ao;->g:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->h()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method
