.class public Lcom/unisound/sdk/bg;
.super Lcom/unisound/sdk/o;


# static fields
.field private static final O:I = 0x1

.field private static final P:I = 0x5

.field private static final Q:I = 0x6

.field private static final R:I = 0x7

.field private static final S:I = 0xb

.field private static final T:I = 0xc

.field private static final U:I = 0xd

.field private static final V:I = 0xe

.field private static final W:I = 0xf

.field private static final X:I = 0x10

.field private static final Y:I = 0x11

.field private static final Z:I = 0x12

.field private static aA:Ljava/lang/String; = null

.field private static final aG:I = 0x0

.field private static final aH:I = 0x1

.field private static final aI:I = 0x2

.field private static final aJ:I = 0x3

.field private static final aa:I = 0x14

.field private static final ab:I = 0x15

.field private static final ac:I = 0x16

.field private static final ad:I = 0x17

.field private static final ae:I = 0x18

.field private static final af:I = 0x19

.field private static final ag:I = 0x1e

.field private static final ah:I = 0x28

.field private static final ai:I = 0x32


# instance fields
.field private A:Lcom/unisound/sdk/cl;

.field private B:Lcom/unisound/sdk/y;

.field private C:Z

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:Lcom/unisound/sdk/aw;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private aB:Ljava/lang/String;

.field private aC:Lcom/unisound/sdk/ac;

.field private aD:Lcom/unisound/common/ag;

.field private aE:Z

.field private aF:Lcom/unisound/sdk/ad;

.field private aK:Lcom/unisound/b/a/a;

.field private aL:Landroid/os/Handler;

.field private aM:Ljava/lang/Runnable;

.field private aj:Lcom/unisound/common/ao;

.field private ak:Landroid/content/Context;

.field private al:Landroid/os/HandlerThread;

.field private am:Landroid/os/Handler;

.field private an:Landroid/os/Handler;

.field private ao:I

.field private ap:I

.field private aq:Z

.field private ar:Ljava/lang/String;

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:Ljava/lang/Object;

.field private ax:Lcom/unisound/sdk/h;

.field private ay:Lcom/unisound/sdk/g;

.field private az:Lcom/unisound/common/ba;

.field protected o:Lcom/unisound/sdk/ao;

.field protected p:Lcom/unisound/sdk/cw;

.field protected final q:I

.field protected final r:I

.field protected final s:I

.field protected final t:I

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field private z:Lcom/unisound/client/SpeechUnderstanderListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "4bd9354d1cf247c93db388257567d0e2"

    sput-object v0, Lcom/unisound/sdk/bg;->aA:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iput-boolean v2, p0, Lcom/unisound/sdk/bg;->C:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bg;->D:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/bg;->G:I

    new-instance v0, Lcom/unisound/sdk/aw;

    invoke-direct {v0}, Lcom/unisound/sdk/aw;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    new-instance v0, Lcom/unisound/sdk/cw;

    invoke-direct {v0}, Lcom/unisound/sdk/cw;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    const-string v0, "main"

    iput-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    const-string v0, "wakeup"

    iput-object v0, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    const/16 v0, 0x33

    iput v0, p0, Lcom/unisound/sdk/bg;->q:I

    const/16 v0, 0x34

    iput v0, p0, Lcom/unisound/sdk/bg;->r:I

    const/16 v0, 0x35

    iput v0, p0, Lcom/unisound/sdk/bg;->s:I

    const/16 v0, 0x36

    iput v0, p0, Lcom/unisound/sdk/bg;->t:I

    iput v3, p0, Lcom/unisound/sdk/bg;->K:I

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->L:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->M:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->N:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/sdk/bg;->ap:I

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->aq:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->as:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->at:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->au:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->av:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aw:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/bh;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bh;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aC:Lcom/unisound/sdk/ac;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->aE:Z

    new-instance v0, Lcom/unisound/sdk/bk;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bk;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aF:Lcom/unisound/sdk/ad;

    new-instance v0, Lcom/unisound/sdk/bn;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bn;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-static {}, Lcom/unisound/common/ba;->a()Lcom/unisound/common/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->az:Lcom/unisound/common/ba;

    iput-object p1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/bg;->y:Ljava/lang/String;

    new-instance v0, Lcom/unisound/common/ag;

    invoke-direct {v0, p1}, Lcom/unisound/common/ag;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->aC:Lcom/unisound/sdk/ac;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ab;->a(Lcom/unisound/sdk/ac;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aX()Lcom/unisound/sdk/cl;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p3}, Lcom/unisound/sdk/cl;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/w;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/w;->O(I)V

    new-instance v0, Lcom/unisound/sdk/ao;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/ao;-><init>(Lcom/unisound/sdk/as;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iput-boolean v3, p0, Lcom/unisound/sdk/bg;->L:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    new-instance v0, Lcom/unisound/common/ao;

    new-instance v1, Lcom/unisound/sdk/bi;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/bi;-><init>(Lcom/unisound/sdk/bg;)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/ao;-><init>(Lcom/unisound/common/ap;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    invoke-virtual {v0}, Lcom/unisound/common/ao;->c()V

    new-instance v0, Lcom/unisound/sdk/h;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/h;-><init>(Lcom/unisound/sdk/bg;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->h()Lcom/unisound/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    return-void
.end method

.method private C()V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "no RECORD_AUDIO permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x487

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_1f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "no READ_CONTACTS permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x486

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_3e
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "no ACCESS_FINE_LOCATION permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x481

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_5d
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7c

    const-string v0, "no READ_PHONE_STATE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x47f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_7c
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aD:Lcom/unisound/common/ag;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/unisound/common/ag;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "no WRITE_EXTERNAL_STORAGE permission"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x482

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_9b
    return-void
.end method

.method private D()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->y()Z

    move-result v0

    return v0
.end method

.method private E()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->z()I

    move-result v0

    return v0
.end method

.method private F()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    return v0
.end method

.method private G()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    return v0
.end method

.method private H()Lcom/unisound/common/av;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->p()Lcom/unisound/common/av;

    move-result-object v0

    return-object v0
.end method

.method private I()Lcom/unisound/common/au;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->h()Lcom/unisound/common/au;

    move-result-object v0

    return-object v0
.end method

.method private J()V
    .registers 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x4ba

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->F()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->G()Z

    move-result v0

    if-eqz v0, :cond_36

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_27
    :goto_27
    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->au:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->stop()V

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->av:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_36
    return-void

    :cond_37
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-static {v1, v3, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_27

    :cond_56
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-ne v0, v5, :cond_27

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_27
.end method

.method private K()V
    .registers 16

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v11, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    const/4 v4, -0x1

    const-string v6, ""

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    move-object v11, v5

    move-object v12, v5

    move-object v13, v5

    move-object v14, v5

    invoke-static/range {v4 .. v14}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v3, "full"

    const-string v4, ""

    const/high16 v1, -0x3e600000    # -20.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v6, v5

    move-object v8, v5

    move-object v9, v5

    move-object v10, v5

    move-object v11, v5

    move-object v12, v5

    invoke-static/range {v2 .. v12}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6b
    return-void
.end method

.method private L()I
    .registers 4

    const v2, -0xfa01

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_30
    const/4 v0, -0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private M()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->u()I

    move-result v1

    const-string v0, ""

    packed-switch v1, :pswitch_data_76

    :goto_9
    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "authorized_status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3b
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->v()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_40
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_9
        :pswitch_3b
        :pswitch_40
        :pswitch_45
    .end packed-switch
.end method

.method private N()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private O()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ad()I

    move-result v0

    return v0
.end method

.method private P()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ae()I

    move-result v0

    return v0
.end method

.method private Q()V
    .registers 5

    const-wide/32 v0, 0x2932e00

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refresh activate timer start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method private R()V
    .registers 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0}, Lcom/unisound/sdk/h;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x2

    :try_start_b
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unregiste network broadcastReceiver!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->b(Z)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v0

    const-string v1, "USC"

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "unRegisteBroadcast exception"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method private S()I
    .registers 4

    const v2, -0xfa02

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->a()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_34
    const/4 v0, -0x1

    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/util/List;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const v1, -0xf7ae

    new-instance v3, Lcom/unisound/sdk/co;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Lcom/unisound/sdk/co;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_16

    const v0, -0xfa01

    :cond_15
    :goto_15
    return v0

    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget v0, p0, Lcom/unisound/sdk/bg;->ap:I

    if-le v4, v0, :cond_22

    const v0, -0xf7aa

    goto :goto_15

    :cond_22
    if-eqz p1, :cond_8e

    if-lez v4, :cond_8e

    const/4 v0, 0x0

    move v2, v0

    :goto_28
    if-ge v2, v4, :cond_4e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const v0, -0xf7af

    goto :goto_15

    :cond_3a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/sdk/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const v0, -0xf7a9

    goto :goto_15

    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    :cond_4e
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1}, Lcom/unisound/sdk/co;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/unisound/sdk/co;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8c

    :try_start_64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_72} :catch_82
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_72} :catch_88

    move-result v1

    move v0, v1

    :goto_74
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v1}, Lcom/unisound/sdk/co;->a(Ljava/util/Set;)V

    goto :goto_15

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v0, v1

    goto :goto_74

    :catch_88
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8c
    move v0, v1

    goto :goto_74

    :cond_8e
    move v0, v1

    goto :goto_15
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/content/IntentFilter;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0}, Lcom/unisound/sdk/h;->a()Z

    move-result v0

    if-nez v0, :cond_24

    :try_start_a
    const-string v0, "USC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "registe network broadcastReceiver!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->b(Z)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string v1, "USC"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "registeBroadcast exception"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method private a(Lcom/unisound/sdk/al;)V
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/unisound/sdk/b;

    invoke-direct {v1}, Lcom/unisound/sdk/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/b;->a(Lcom/unisound/sdk/al;)V

    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->a(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->a(Z)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ao()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/b;->b(Z)V

    invoke-static {v1}, Lcom/unisound/common/v;->a(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v2, 0x4b1

    invoke-static {v3, v0, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->r(I)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/bg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/cl;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    new-instance v0, Lcom/unisound/sdk/bl;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/unisound/sdk/bl;-><init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->start()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->n(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "activate params is "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->aV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    new-instance v1, Lcom/unisound/sdk/bm;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/bm;-><init>(Lcom/unisound/sdk/bg;)V

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(Lcom/unisound/b/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->aE:Z

    return p1
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    return-object p1
.end method

.method private b(Lcom/unisound/sdk/al;)V
    .registers 7

    const/16 v4, 0x4b1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->y()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->y()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {v0, v1, v2}, Lcom/unisound/common/v;->a(Ljava/lang/String;ZLcom/unisound/sdk/w;)Lcom/unisound/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v3, v1}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_42
    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->y()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {v0, v1, v2}, Lcom/unisound/common/v;->a(Ljava/lang/String;ZLcom/unisound/sdk/w;)Lcom/unisound/sdk/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_8d

    if-eqz v0, :cond_8d

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v3, v3, v1}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_83
    :goto_83
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unisound/sdk/w;->k(J)V

    :cond_8c
    return-void

    :cond_8d
    iget-object v1, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    if-eqz v1, :cond_83

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, -0xf83f

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_83
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/bg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->C:Z

    return p1
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;)Lcom/unisound/common/ao;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aj:Lcom/unisound/common/ao;

    return-object v0
.end method

.method private c(Lcom/unisound/sdk/al;)V
    .registers 7

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ao()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->d()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Lcom/unisound/sdk/al;

    invoke-direct {v0}, Lcom/unisound/sdk/al;-><init>()V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->e()Lcom/unisound/sdk/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Lcom/unisound/sdk/am;)V

    invoke-static {}, Lcom/unisound/common/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->b(Z)V

    invoke-virtual {p1}, Lcom/unisound/sdk/al;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/al;->a(Z)V

    new-instance v1, Lcom/unisound/sdk/b;

    invoke-direct {v1}, Lcom/unisound/sdk/b;-><init>()V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(Lcom/unisound/sdk/al;)V

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ao()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/b;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/unisound/common/v;->a(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_73
    return-void
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;Lcom/unisound/sdk/al;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->c(Lcom/unisound/sdk/al;)V

    return-void
.end method

.method static synthetic c(Lcom/unisound/sdk/bg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->au:Z

    return p1
.end method

.method static synthetic d(Lcom/unisound/sdk/bg;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aw:Ljava/lang/Object;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    sget-object v3, Lcom/unisound/sdk/bg;->aA:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v2, "deviceInfo"

    const-string v4, ""

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appkey"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "udid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "deviceInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveTokenInfo deviceContent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceInfo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_6a
    return-void

    :cond_6b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "deviceInfo"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v2, v1

    :goto_77
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_c6

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "appkey"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    const-string v7, "udid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    const-string v1, "token"

    invoke-virtual {v6, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_9e
    if-nez v0, :cond_bc

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appkey"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "deviceInfo"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bc
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_bf} :catch_c4

    move-result-object v0

    goto :goto_42

    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :catch_c4
    move-exception v0

    goto :goto_6a

    :cond_c6
    move v0, v1

    goto :goto_9e
.end method

.method static synthetic d(Lcom/unisound/sdk/bg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->av:Z

    return p1
.end method

.method static synthetic e(Lcom/unisound/sdk/bg;)V
    .registers 1

    invoke-super {p0}, Lcom/unisound/sdk/o;->f()V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->k(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->bb()Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const/16 v4, 0x9

    invoke-virtual {v0, v4, p1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 v4, 0xcc

    invoke-virtual {v0, v4, p2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "SpeechUnderstanderInterface"

    aput-object v4, v0, v5

    const-string v4, "server :"

    aput-object v4, v0, v6

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    const-string v4, " port: "

    aput-object v4, v0, v8

    const/4 v4, 0x4

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-array v0, v8, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstanderInterface"

    aput-object v1, v0, v5

    const-string v1, "juc.create() returns "

    aput-object v1, v0, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return-void
.end method

.method private e(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/unisound/sdk/bg;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bg;->at:Z

    return p1
.end method

.method static synthetic f(Lcom/unisound/sdk/bg;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aB:Ljava/lang/String;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->h(Ljava/lang/String;)V

    return-void
.end method

.method private f(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->b(Z)V

    return-void
.end method

.method private g(Z)I
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-boolean v0, v0, Lcom/unisound/sdk/ab;->g:Z

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bg;->a(Z)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "loadModel::isInit=false"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_12
    return v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wakeup.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v2, v2, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v2, v2, Lcom/unisound/sdk/ab;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init_asr"

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method private g(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/unisound/sdk/bg;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    return v0
.end method

.method static synthetic h(Lcom/unisound/sdk/bg;)Lcom/unisound/client/SpeechUnderstanderListener;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    return-object v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->j(Ljava/lang/String;)V

    return-void
.end method

.method private h(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->o(Z)V

    return-void
.end method

.method static synthetic i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->p(Z)V

    return-void
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1b

    const-string v0, "USC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, " isNetworkAvailable cm is null!"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_19
    :goto_19
    move v0, v2

    :goto_1a
    return v0

    :cond_1b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_19

    move v0, v2

    :goto_22
    array-length v4, v3

    if-ge v0, v4, :cond_19

    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_34

    if-ne v4, v5, :cond_31

    move v0, v1

    goto :goto_1a

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :catch_34
    move-exception v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstander isNetworkAvailable error"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_19
.end method

.method private j(Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->t(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/unisound/sdk/bg;)V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->J()V

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/unisound/sdk/bg;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V

    return-void
.end method

.method private k(Z)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->u(Z)V

    return-void
.end method

.method static synthetic l(Lcom/unisound/sdk/bg;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->as:Z

    return v0
.end method

.method private l(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetEngine::error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private l(Z)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0, p1}, Lcom/unisound/common/s;->h(Z)V

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method static synthetic m(Lcom/unisound/sdk/bg;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->au:Z

    return v0
.end method

.method private m(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetEngineSubModel::error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private n(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cl;->a(I)V

    return-void
.end method

.method static synthetic n(Lcom/unisound/sdk/bg;)V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->Q()V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->p(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_b
    const-string v0, ""

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SpeechUnderstanderInterface -> getversion : SDK_Version = "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_d
.end method

.method private o(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->P(I)Z

    return-void
.end method

.method static synthetic o(Lcom/unisound/sdk/bg;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->at:Z

    return v0
.end method

.method static synthetic p(Lcom/unisound/sdk/bg;)Lcom/unisound/b/a/a;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    return-object v0
.end method

.method private p(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->c(I)V

    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/unisound/common/aa;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_a

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    :cond_b
    :goto_b
    return v0

    :cond_c
    const-string v3, "appkey_md5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/unisound/common/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    move v2, v1

    :goto_20
    if-ge v2, v5, :cond_61

    aget-object v6, v3, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5e

    new-array v7, v0, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkAppkeyMd5 : value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appkey = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", appkeyMd5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v7}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_61
    move v0, v1

    goto :goto_b
.end method

.method static synthetic q(Lcom/unisound/sdk/bg;)Lcom/unisound/sdk/g;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    return-object v0
.end method

.method private q(I)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private r(I)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_18
    return-void
.end method

.method private s(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->v(I)V

    return-void
.end method


# virtual methods
.method protected A()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bg;->K:I

    return v0
.end method

.method protected B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->at()Z

    move-result v0

    if-nez v0, :cond_19

    :cond_12
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_19
    return-void
.end method

.method protected a(Lcom/unisound/sdk/ay;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/ay;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZII)V
    .registers 18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/l;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v11, v0

    :goto_26
    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v0, v0, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_b1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderstanderInterface : recognizeResult.item = "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " , times=  "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aO()Z

    move-result v0

    if-eqz v0, :cond_8a

    iget-object v12, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_86
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_26

    :cond_8a
    iget-object v12, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_b1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x4b2

    iget-object v2, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_c4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void
.end method

.method protected a(Ljava/lang/String;ZIJJII)V
    .registers 22

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderstandInterface doWakeupResult => "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/l;->a(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aO()Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v0, 0x3e8

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_65
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xc81

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lcom/unisound/common/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void

    :cond_80
    const/16 v0, 0x3e8

    const-string v1, "full"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget-object v2, v2, Lcom/unisound/sdk/l;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/unisound/sdk/bg;->a:Lcom/unisound/sdk/l;

    iget v5, v5, Lcom/unisound/sdk/l;->e:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/unisound/common/v;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65
.end method

.method protected a(Z[BII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/unisound/sdk/o;->a(Z[BII)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ao;->b(Z[BII)V

    :cond_c
    iget-object v0, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    invoke-virtual {v0, p1, p4}, Lcom/unisound/sdk/aw;->a(ZI)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_14
    return-void
.end method

.method protected b(I)V
    .registers 4

    const/4 v1, 0x1

    const v0, -0xee4a

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    :cond_f
    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->aE:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_25

    if-eqz p1, :cond_1a

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    :cond_1a
    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->J()V

    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z

    return-void
.end method

.method protected b(II)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void
.end method

.method protected c(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/br;->b(I)V

    return-void
.end method

.method protected c(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/o;->c(II)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    return-void
.end method

.method protected cancel()V
    .registers 7

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mLooper:Landroid/os/Looper;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->as:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ao;->c(Z)V

    invoke-super {p0}, Lcom/unisound/sdk/o;->cancel()V

    :goto_15
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->aE:Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_24

    if-eqz v0, :cond_27

    const-wide/16 v2, 0x1

    :try_start_1b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    goto :goto_15

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ao;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_37
    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/m;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_41
    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v2, 0x45d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v0, v2, v3}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechunderStanderInterface: cancel called"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_59
    .catchall {:try_start_27 .. :try_end_59} :catchall_24

    return-void
.end method

.method protected convertToArabicNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/unisound/common/i;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected d(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected d(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->d(I)V

    iput p1, p0, Lcom/unisound/sdk/bg;->K:I

    return-void
.end method

.method protected d(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->L(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public destoryCompiler()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->b()V

    :cond_d
    return-void
.end method

.method protected e(I)I
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->e(I)I

    move-result v0

    return v0
.end method

.method protected f(I)I
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->f(I)I

    move-result v0

    return v0
.end method

.method protected getFixEngineVersion()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-super {p0}, Lcom/unisound/sdk/o;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_a
    const-string v0, ""

    goto :goto_9
.end method

.method protected getOption(I)Ljava/lang/Object;
    .registers 5

    sparse-switch p1, :sswitch_data_18c

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    return-object v0

    :sswitch_8
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_13
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_1e
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :sswitch_25
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :sswitch_30
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :sswitch_37
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_42
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_4d
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :sswitch_54
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_5f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->bj()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :sswitch_66
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :sswitch_71
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->E()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_7

    :sswitch_7c
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->w()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    :sswitch_87
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_8f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_97
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_9f
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->m()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_a7
    iget-object v0, p0, Lcom/unisound/sdk/bg;->A:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->x()Lcom/unisound/sdk/cl;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_af
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_b7
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-boolean v0, v0, Lcom/unisound/sdk/w;->aH:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_c1
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->I()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_cd
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ax()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_d5
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->K()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_dd
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aQ()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_e9
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->ay()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_f5
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aA()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_101
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->az()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_109
    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->k()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_111
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->M()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_117
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_121
    iget v0, p0, Lcom/unisound/sdk/bg;->ap:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_129
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->N()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_133
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->O()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_13d
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    if-eqz v0, :cond_154

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_154

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->j(Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_154
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->P()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_15e
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_166
    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_176
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->D()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_180
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->bx()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_7

    :sswitch_data_18c
    .sparse-switch
        0x3e9 -> :sswitch_8
        0x3eb -> :sswitch_25
        0x3ec -> :sswitch_30
        0x3f0 -> :sswitch_1e
        0x3f1 -> :sswitch_4d
        0x3f2 -> :sswitch_37
        0x3f3 -> :sswitch_42
        0x3f4 -> :sswitch_5f
        0x3f6 -> :sswitch_54
        0x3fc -> :sswitch_7c
        0x3fd -> :sswitch_87
        0x3ff -> :sswitch_a7
        0x406 -> :sswitch_8f
        0x407 -> :sswitch_97
        0x408 -> :sswitch_9f
        0x40c -> :sswitch_af
        0x414 -> :sswitch_13
        0x415 -> :sswitch_66
        0x42d -> :sswitch_c1
        0x434 -> :sswitch_b7
        0x435 -> :sswitch_cd
        0x436 -> :sswitch_d5
        0x43a -> :sswitch_dd
        0x43b -> :sswitch_e9
        0x43c -> :sswitch_f5
        0x43e -> :sswitch_101
        0x43f -> :sswitch_109
        0x440 -> :sswitch_111
        0x442 -> :sswitch_117
        0x446 -> :sswitch_121
        0xc4e -> :sswitch_71
        0x2715 -> :sswitch_15e
        0x2716 -> :sswitch_166
        0x271b -> :sswitch_117
        0x2725 -> :sswitch_176
        0x2732 -> :sswitch_180
        0x27d4 -> :sswitch_133
        0x27d5 -> :sswitch_13d
        0x27d7 -> :sswitch_129
    .end sparse-switch
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    :try_start_d
    const-string v2, "version/data"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    :goto_1f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_29

    goto :goto_1f

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-super {p0}, Lcom/unisound/sdk/o;->getVersion()Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_40} :catch_29

    goto :goto_31
.end method

.method protected h()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected i()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected init(Ljava/lang/String;)V
    .registers 9

    const/16 v4, 0x514

    const/4 v2, 0x2

    const/4 v6, -0x1

    const v3, -0x109a1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->C()V

    :try_start_a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_72

    :cond_f
    :goto_f
    iget v0, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v0, v6, :cond_17

    iget v0, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v0, v2, :cond_1b

    :cond_17
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v0, v2, :cond_9a

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aF:Lcom/unisound/sdk/ad;

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ao;->a(Landroid/content/Context;Lcom/unisound/sdk/ad;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_81

    :cond_24
    :goto_24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_29
    const-string v0, "appKey"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appSecret"

    iget-object v2, p0, Lcom/unisound/sdk/bg;->y:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_94

    const-string v0, "activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_94

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceSn"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {v4}, Lcom/unisound/c/a;->b(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_4a

    const v0, -0x10d8a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_71} :catch_90

    :goto_71
    return-void

    :catch_72
    move-exception v0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_f

    :catch_81
    move-exception v0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {v3}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_24

    :catch_90
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->a(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->refreshActivate()V

    :cond_9a
    if-nez p1, :cond_9e

    const-string p1, ""

    :cond_9e
    const-string v0, ""

    if-eq p1, v0, :cond_e2

    const-string v0, "activate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->l()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/v;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_bc
    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_bc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/unisound/sdk/bg;->setOption(ILjava/lang/Object;)V

    goto :goto_bc

    :cond_e2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "SpeechUnderStanderInterface : init json is an empty string!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_ed
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->aq:Z

    if-eqz v0, :cond_11e

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ht_outer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->al:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    :goto_119
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->z()I

    goto/16 :goto_71

    :cond_11e
    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    new-instance v0, Lcom/unisound/sdk/bp;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/bp;-><init>(Lcom/unisound/sdk/bg;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/sdk/bg;->an:Landroid/os/Handler;

    goto :goto_119
.end method

.method public initCompiler()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ay:Lcom/unisound/sdk/g;

    invoke-virtual {v0}, Lcom/unisound/sdk/g;->a()Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lcom/unisound/sdk/bo;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bo;-><init>(Lcom/unisound/sdk/bg;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bo;->start()V

    :cond_18
    return-void
.end method

.method protected insertVocab(Ljava/util/List;Ljava/lang/String;)I
    .registers 11
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

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_d

    const v0, -0xfa01

    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0xfa02

    goto :goto_c

    :cond_17
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_23

    :cond_1f
    const v0, -0xf61d

    goto :goto_c

    :cond_23
    const-string v0, ""

    if-eq p2, v0, :cond_38

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eq v0, v5, :cond_3c

    :cond_38
    const v0, -0xf61c

    goto :goto_c

    :cond_3c
    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    aget-object v0, v0, v4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "SpeechUnderstanderInterface :"

    aput-object v3, v1, v7

    const-string v3, "inserVocab --> modelTag = "

    aput-object v3, v1, v4

    aput-object v2, v1, v5

    const/4 v3, 0x3

    const-string v4, ", tagName = "

    aput-object v4, v1, v3

    const/4 v3, 0x4

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const-string v1, "command"

    iget-object v3, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v3, v2}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v4, v2}, Lcom/unisound/sdk/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v5, v0, p1}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/ab;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_c
.end method

.method protected insertVocab(Ljava/util/Map;Ljava/lang/String;)I
    .registers 10
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

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_a

    const v0, -0xfa01

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_14

    const v0, -0xfa02

    goto :goto_9

    :cond_14
    if-eqz p1, :cond_7b

    const-string v0, ""

    if-eq p2, v0, :cond_7b

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5, v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_27

    :cond_5c
    const-string v1, "command"

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ab;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9

    :cond_7b
    const-string v0, "SpeechUnderstanderInterface : insertVocab parmas error!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_9
.end method

.method protected insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_a

    const v0, -0xfa01

    :goto_9
    return v0

    :cond_a
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v0

    if-eqz v0, :cond_14

    const v0, -0xfa02

    goto :goto_9

    :cond_14
    new-instance v0, Lcom/unisound/sdk/bj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unisound/sdk/bj;-><init>(Lcom/unisound/sdk/bg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unisound/sdk/bj;->start()V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .registers 10
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

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v5, v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12

    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface --> insertVocab_ext2 : vocabContent = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/unisound/sdk/bg;->insertVocab_ext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected j()V
    .registers 4

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->M()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->c()V

    :cond_1f
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->M()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p0}, Lcom/unisound/sdk/bg;->e(Lcom/unisound/sdk/bg;)V

    :cond_2f
    return-void
.end method

.method protected l()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected l(I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-nez v0, :cond_a

    const-string v0, "SpeechUnderstander -> doUploadUserData handler is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    if-nez p1, :cond_14

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_14
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_9
.end method

.method protected loadCompiledJsgf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_a

    const v0, -0xfa01

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method protected loadGrammar(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_a

    const v0, -0xfa01

    :goto_9
    return v0

    :cond_a
    const-string v0, "command"

    invoke-virtual {p0, p2, v0, p1}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected m(I)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method protected n()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->D:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->C:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ao;->c(Z)V

    const-string v0, "SpeechUnderstander fixend&netend doRecordingStart cancel"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_18

    goto :goto_18
.end method

.method protected o()V
    .registers 1

    return-void
.end method

.method protected p()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public postRecordingStartStatus()V
    .registers 3

    invoke-super {p0}, Lcom/unisound/sdk/o;->postRecordingStartStatus()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized refreshActivate()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "refreshActivate called!"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "USC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "refreshActivate network not available!"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/h;->a(Z)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->a(Landroid/content/IntentFilter;)V
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_66

    :goto_36
    monitor-exit p0

    return-void

    :cond_38
    :try_start_38
    iget-object v0, p0, Lcom/unisound/sdk/bg;->ax:Lcom/unisound/sdk/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/h;->a(Z)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->R()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->l:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->at:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    invoke-virtual {v1, v0}, Lcom/unisound/b/a/a;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(I)V
    :try_end_65
    .catchall {:try_start_38 .. :try_end_65} :catchall_66

    goto :goto_36

    :catchall_66
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/unisound/sdk/bg;->aK:Lcom/unisound/b/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/b/a/a;->a(I)V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_66

    goto :goto_36
.end method

.method protected release(ILjava/lang/String;)I
    .registers 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/unisound/sdk/bg;->aL:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->aM:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->R()V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->n:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/unisound/sdk/bg;->n:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_1d
    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->o()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, v2, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v2}, Lcom/unisound/common/s;->r()I

    :cond_2c
    packed-switch p1, :pswitch_data_3c

    :cond_2f
    :goto_2f
    return v0

    :pswitch_30
    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    if-eqz v2, :cond_2f

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-super {p0}, Lcom/unisound/sdk/o;->q()V

    move v0, v1

    goto :goto_2f

    nop

    :pswitch_data_3c
    .packed-switch 0x579
        :pswitch_30
    .end packed-switch
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result v0

    return v0
.end method

.method protected setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    return-void
.end method

.method protected setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;
    .registers 5
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

    new-instance v0, Lcom/unisound/sdk/bq;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bq;-><init>(Lcom/unisound/sdk/bg;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, ""

    return-object v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 8

    const/4 v1, -0x1

    const/4 v4, 0x2

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_86a

    :goto_6
    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/o;->setOption(ILjava/lang/Object;)V

    :cond_9
    :goto_9
    :sswitch_9
    return-void

    :sswitch_a
    :try_start_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_a10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USCMixRecognizer.setOption unkown value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_2a

    goto :goto_9

    :catch_2a
    move-exception v1

    const-string v1, "set asr_service_mode Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_31
    :try_start_31
    iget v3, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v3, v2, :cond_3e

    iget v3, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v3, v1, :cond_3c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->L:Z

    :cond_3c
    iput v2, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_3e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->c(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_43} :catch_2a

    goto :goto_9

    :sswitch_44
    :try_start_44
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->o(I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_9

    :catch_4e
    move-exception v1

    const-string v1, "set asr_sampling_rate Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_55
    :try_start_55
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->l(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->c(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5f} :catch_60

    goto :goto_9

    :catch_60
    move-exception v1

    const-string v1, "set asr_domain Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_67
    :try_start_67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->d(Z)Z

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/br;->a(Z)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_75} :catch_76

    goto :goto_9

    :catch_76
    move-exception v1

    const-string v1, "set asr_voice_field Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_7d
    :try_start_7d
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->n(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->b(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_87} :catch_88

    goto :goto_9

    :catch_88
    move-exception v1

    const-string v1, "set asr_language Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_90
    :try_start_90
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->a(Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9f} :catch_a1

    goto/16 :goto_9

    :catch_a1
    move-exception v1

    const-string v1, "set asr_server_address Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_a9
    const v1, -0xf836

    :try_start_ac
    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->q(I)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_a1

    goto/16 :goto_9

    :sswitch_b1
    :try_start_b1
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->u(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->f(Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_bd} :catch_bf

    goto/16 :goto_9

    :catch_bf
    move-exception v1

    const-string v1, "set asr_online_oneshot_server_address Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_c7
    :try_start_c7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->p(I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d0} :catch_d2

    goto/16 :goto_9

    :catch_d2
    move-exception v1

    const-string v1, "set asr_net_timeOut Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_da
    :try_start_da
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->f(I)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->a(I)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_f2} :catch_f4

    goto/16 :goto_9

    :catch_f4
    move-exception v1

    const-string v1, "set asr_front_cache_time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_fc
    :try_start_fc
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->c(Z)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_107} :catch_109

    goto/16 :goto_9

    :catch_109
    move-exception v1

    const-string v1, "set wakeup_vad_enable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_111
    :try_start_111
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->a(F)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_11c} :catch_11e

    goto/16 :goto_9

    :catch_11e
    move-exception v1

    const-string v1, "set wakeup_threshold_value Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_126
    :try_start_126
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->e(Z)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_12f} :catch_131

    goto/16 :goto_9

    :catch_131
    move-exception v1

    const-string v1, "set nlu_enable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_139
    :try_start_139
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->e(Ljava/lang/String;)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13e} :catch_140

    goto/16 :goto_9

    :catch_140
    move-exception v1

    const-string v1, "set nlu_scenario Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_148
    :try_start_148
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->i(Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14d} :catch_14f

    goto/16 :goto_9

    :catch_14f
    move-exception v1

    const-string v1, "set gps Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_157
    :try_start_157
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15c} :catch_15e

    goto/16 :goto_9

    :catch_15e
    move-exception v1

    const-string v1, "set history Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_166
    :try_start_166
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->g(Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_16b} :catch_16d

    goto/16 :goto_9

    :catch_16d
    move-exception v1

    const-string v1, "set city Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_175
    :try_start_175
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->h(Ljava/lang/String;)V
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_17a} :catch_17c

    goto/16 :goto_9

    :catch_17c
    move-exception v1

    const-string v1, "set voiceID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_184
    :try_start_184
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->j(Ljava/lang/String;)V
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_18b} :catch_18d

    goto/16 :goto_9

    :catch_18d
    move-exception v1

    const-string v1, "set nlu_ver Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_195
    :try_start_195
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->k(Ljava/lang/String;)V
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_19c} :catch_19e

    goto/16 :goto_9

    :catch_19e
    move-exception v1

    const-string v1, "set nlu_appver Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1a6
    :try_start_1a6
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->g(I)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1b1} :catch_1b3

    goto/16 :goto_9

    :catch_1b3
    move-exception v1

    const-string v1, "set Front_reset_cache_byte_time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1bb
    :try_start_1bb
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->t:Z
    :try_end_1c3
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1c3} :catch_1c5

    goto/16 :goto_9

    :catch_1c5
    move-exception v1

    const-string v1, "set DEBUG_SAVELOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1cd
    :try_start_1cd
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->u:Z
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1cd .. :try_end_1d7} :catch_1e9

    :goto_1d7
    :sswitch_1d7
    :try_start_1d7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/unisound/sdk/bg;->aq:Z
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1df} :catch_1e1

    goto/16 :goto_9

    :catch_1e1
    move-exception v1

    const-string v1, "set USE_HANDLERTHREAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_1e9
    move-exception v1

    const-string v1, "set DEBUG_POSTLOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_1d7

    :sswitch_1f0
    :try_start_1f0
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->b(Ljava/lang/String;)V
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_9

    :catch_1f9
    move-exception v1

    const-string v1, "set SAVE_AFTERVAD_RECORDING_DATA Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_201
    :try_start_201
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->i(Z)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_201 .. :try_end_20c} :catch_20e

    goto/16 :goto_9

    :catch_20e
    move-exception v1

    const-string v1, "set MARK_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_216
    :try_start_216
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->N(Z)V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_221} :catch_223

    goto/16 :goto_9

    :catch_223
    move-exception v1

    const-string v1, "set TEMP_RESULT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_22b
    :try_start_22b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->h(I)V
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_236} :catch_238

    goto/16 :goto_9

    :catch_238
    move-exception v1

    const-string v1, "set OneShot VAD back sil time Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_240
    :try_start_240
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->O(I)V
    :try_end_24b
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_24b} :catch_24d

    goto/16 :goto_9

    :catch_24d
    move-exception v1

    const-string v1, "set RECOGNIZE_SCENE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_255
    :try_start_255
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->D(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "set recognize modelId "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_275
    .catch Ljava/lang/Exception; {:try_start_255 .. :try_end_275} :catch_277

    goto/16 :goto_9

    :catch_277
    move-exception v1

    const-string v1, "set RECOGNIZE_MODEL_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_27f
    :try_start_27f
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->E(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "SpeechUnderstanderInterface"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "set wakeup modelId "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_29f
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_29f} :catch_2a1

    goto/16 :goto_9

    :catch_2a1
    move-exception v1

    const-string v1, "set WAKEUP_MODEL_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2a9
    :try_start_2a9
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->P(Z)V
    :try_end_2b4
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2b4} :catch_2b6

    goto/16 :goto_9

    :catch_2b6
    move-exception v1

    const-string v1, "set ALREAD_AWPE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2be
    :try_start_2be
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bg;->m(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/br;->g(Ljava/lang/String;)V
    :try_end_2c8
    .catch Ljava/lang/Exception; {:try_start_2be .. :try_end_2c8} :catch_2ca

    goto/16 :goto_9

    :catch_2ca
    move-exception v1

    const-string v1, "set asr_subdomain Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2d2
    :try_start_2d2
    check-cast p2, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->m(Ljava/lang/String;)V
    :try_end_2d9
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d9} :catch_2db

    goto/16 :goto_9

    :catch_2db
    move-exception v1

    const-string v1, "set ASR_OPT_ACTIVATE_MEMO Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2e3
    :try_start_2e3
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->I(Z)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_2ee} :catch_2f0

    goto/16 :goto_9

    :catch_2f0
    move-exception v1

    const-string v1, "set setWxServiceEnabled Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_2f8
    :try_start_2f8
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->B(Ljava/lang/String;)V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2f8 .. :try_end_2ff} :catch_301

    goto/16 :goto_9

    :catch_301
    move-exception v1

    const-string v1, "set UploadUserDataServer Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_309
    :try_start_309
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->C(Ljava/lang/String;)V
    :try_end_310
    .catch Ljava/lang/Exception; {:try_start_309 .. :try_end_310} :catch_312

    goto/16 :goto_9

    :catch_312
    move-exception v1

    const-string v1, "set setUploadUserDataServerUrl Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_31a
    :try_start_31a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->n(I)V

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->o(I)V
    :try_end_32a
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_32a} :catch_32c

    goto/16 :goto_9

    :catch_32c
    move-exception v1

    const-string v1, "set WAKEUP_WORK_ENGINE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_334
    :try_start_334
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->n(Z)V
    :try_end_33f
    .catch Ljava/lang/Exception; {:try_start_334 .. :try_end_33f} :catch_341

    goto/16 :goto_9

    :catch_341
    move-exception v1

    const-string v1, "set ContinueReadData Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_349
    :try_start_349
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->l(I)V
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_354} :catch_356

    goto/16 :goto_9

    :catch_356
    move-exception v1

    const-string v1, "set OneshotRecognitionBacksil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_35e
    :try_start_35e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->e(Z)V
    :try_end_369
    .catch Ljava/lang/Exception; {:try_start_35e .. :try_end_369} :catch_36b

    goto/16 :goto_9

    :catch_36b
    move-exception v1

    const-string v1, "set ASR_FOURMIC Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_373
    :try_start_373
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->f(Z)V
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_37e} :catch_380

    goto/16 :goto_9

    :catch_380
    move-exception v1

    const-string v1, "set ASR_FOURMIC_ISDEBUG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_388
    :try_start_388
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->s(I)V
    :try_end_391
    .catch Ljava/lang/Exception; {:try_start_388 .. :try_end_391} :catch_393

    goto/16 :goto_9

    :catch_393
    move-exception v1

    const-string v1, "set ASR_FOURMIC_CHANGE_CHANNAL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_39b
    :try_start_39b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->g(Z)V
    :try_end_3a6
    .catch Ljava/lang/Exception; {:try_start_39b .. :try_end_3a6} :catch_3a8

    goto/16 :goto_9

    :catch_3a8
    move-exception v1

    const-string v1, "set ASR_FORMIC_CLOSE_4MICALGORITHM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_3b0
    :try_start_3b0
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->e(Z)V
    :try_end_3bb
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_3bb} :catch_3bd

    goto/16 :goto_9

    :catch_3bd
    move-exception v1

    const-string v1, "set setRecognizeFrontVADEnable Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_3c5
    :try_start_3c5
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->y(I)V
    :try_end_3d0
    .catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3d0} :catch_3d2

    goto/16 :goto_9

    :catch_3d2
    move-exception v1

    const-string v1, "set wakeup buffer length error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_3da
    :try_start_3da
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->G(I)V
    :try_end_3e5
    .catch Ljava/lang/Exception; {:try_start_3da .. :try_end_3e5} :catch_3e7

    goto/16 :goto_9

    :catch_3e7
    move-exception v1

    const-string v1, "set WUW_WAKEUP_THRESHOLD Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_3ef
    :try_start_3ef
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->z(Ljava/lang/String;)V
    :try_end_3f6
    .catch Ljava/lang/Exception; {:try_start_3ef .. :try_end_3f6} :catch_3f8

    goto/16 :goto_9

    :catch_3f8
    move-exception v1

    const-string v1, "set ASR_OPT_SGN_SETTING Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_400
    :try_start_400
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->A(Ljava/lang/String;)V
    :try_end_407
    .catch Ljava/lang/Exception; {:try_start_400 .. :try_end_407} :catch_409

    goto/16 :goto_9

    :catch_409
    move-exception v1

    const-string v1, "set ASR_OPT_SERVICE_PARAMETER Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_411
    :try_start_411
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->x(I)V
    :try_end_41c
    .catch Ljava/lang/Exception; {:try_start_411 .. :try_end_41c} :catch_41e

    goto/16 :goto_9

    :catch_41e
    move-exception v1

    const-string v1, "set ASR_OPT_RECORDING_PAC_SIZE Error"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_426
    :try_start_426
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->D(Ljava/lang/String;)V
    :try_end_42d
    .catch Ljava/lang/Exception; {:try_start_426 .. :try_end_42d} :catch_42f

    goto/16 :goto_9

    :catch_42f
    move-exception v1

    const-string v1, "set ASR_OPT_FILTERURL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_437
    :try_start_437
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->E(Ljava/lang/String;)V
    :try_end_43e
    .catch Ljava/lang/Exception; {:try_start_437 .. :try_end_43e} :catch_440

    goto/16 :goto_9

    :catch_440
    move-exception v1

    const-string v1, "set ASR_OPT_SUB_SERVICE_PARAM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_448
    :try_start_448
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->i(Ljava/lang/String;)V
    :try_end_44f
    .catch Ljava/lang/Exception; {:try_start_448 .. :try_end_44f} :catch_451

    goto/16 :goto_9

    :catch_451
    move-exception v1

    const-string v1, "set ASR_OPT_IGNORE_RESULT_TAG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_459
    :try_start_459
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->k(Ljava/lang/String;)V
    :try_end_460
    .catch Ljava/lang/Exception; {:try_start_459 .. :try_end_460} :catch_462

    goto/16 :goto_9

    :catch_462
    move-exception v1

    const-string v1, "set ASR_OPT_ADDITIONAL_SERVICE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_46a
    :try_start_46a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->b(Ljava/util/List;)V
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_46a .. :try_end_471} :catch_473

    goto/16 :goto_9

    :catch_473
    move-exception v1

    const-string v1, "set ASR_OPT_SET_ONESHOT_WAKEUPWORD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_47b
    :try_start_47b
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->x(Z)V
    :try_end_486
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_486} :catch_488

    goto/16 :goto_9

    :catch_488
    move-exception v1

    const-string v1, "set ASR_OPT_CONTINUE_RECOGNIZE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_490
    :try_start_490
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->l(Ljava/lang/String;)V
    :try_end_497
    .catch Ljava/lang/Exception; {:try_start_490 .. :try_end_497} :catch_499

    goto/16 :goto_9

    :catch_499
    move-exception v1

    const-string v1, "set ASR_OPT_SET_POST_PROCESS_PARAMS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4a1
    :try_start_4a1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/bg;->ap:I
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_4a1 .. :try_end_4a9} :catch_4ab

    goto/16 :goto_9

    :catch_4ab
    move-exception v1

    const-string v1, "set ASR_OPT_MAX_ONLINE_WAKEUPWORDS_NUM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4b3
    :try_start_4b3
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->q(I)V
    :try_end_4be
    .catch Ljava/lang/Exception; {:try_start_4b3 .. :try_end_4be} :catch_4c0

    goto/16 :goto_9

    :catch_4c0
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICWAKEUPFLAG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4c8
    :try_start_4c8
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->s(I)V
    :try_end_4d3
    .catch Ljava/lang/Exception; {:try_start_4c8 .. :try_end_4d3} :catch_4d5

    goto/16 :goto_9

    :catch_4d5
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICUTTERANCETIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4dd
    :try_start_4dd
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->u(I)V
    :try_end_4e8
    .catch Ljava/lang/Exception; {:try_start_4dd .. :try_end_4e8} :catch_4ea

    goto/16 :goto_9

    :catch_4ea
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICDELAYTIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_4f2
    :try_start_4f2
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->q(Z)V
    :try_end_4fd
    .catch Ljava/lang/Exception; {:try_start_4f2 .. :try_end_4fd} :catch_4ff

    goto/16 :goto_9

    :catch_4ff
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICWAKEUPSTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_507
    :try_start_507
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->r(Z)V
    :try_end_512
    .catch Ljava/lang/Exception; {:try_start_507 .. :try_end_512} :catch_514

    goto/16 :goto_9

    :catch_514
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICUTTERANCETIMESTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_51c
    :try_start_51c
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->s(Z)V
    :try_end_527
    .catch Ljava/lang/Exception; {:try_start_51c .. :try_end_527} :catch_529

    goto/16 :goto_9

    :catch_529
    move-exception v1

    const-string v1, "set ASR_FOURMIC_OUT_SET_4MICDELAYTIMESTATUS Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_531
    :try_start_531
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_545

    :goto_539
    iput v1, p0, Lcom/unisound/sdk/bg;->G:I
    :try_end_53b
    .catch Ljava/lang/Exception; {:try_start_531 .. :try_end_53b} :catch_53d

    goto/16 :goto_9

    :catch_53d
    move-exception v1

    const-string v1, "set ASR_OPT_INIT_MODE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_545
    if-le v3, v4, :cond_866

    move v1, v2

    goto :goto_539

    :sswitch_549
    :try_start_549
    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/ab;->a(I)I
    :try_end_554
    .catch Ljava/lang/Exception; {:try_start_549 .. :try_end_554} :catch_559

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_9

    :catch_559
    move-exception v1

    const-string v1, "set ASR_OPT_SET_COMPILE_MAX_PRONUNCIATION Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_561
    :try_start_561
    iget-object v1, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/ab;->a(Z)I

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "set ASR_OPT_SET_OVER_MAX_PRONUNCIATION_INSERT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_574
    .catch Ljava/lang/Exception; {:try_start_561 .. :try_end_574} :catch_576

    goto/16 :goto_9

    :catch_576
    move-exception v1

    const-string v1, "set ASR_OPT_SET_OVER_MAX_PRONUNCIATION_INSERT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_57e
    :try_start_57e
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->l(Z)Z

    move-result v1

    if-nez v1, :cond_591

    const-string v1, "set ASR_FOURMIC_USE_ASR_AS_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_591
    .catch Ljava/lang/Exception; {:try_start_57e .. :try_end_591} :catch_5a6

    :cond_591
    :goto_591
    :sswitch_591
    :try_start_591
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->H(I)V
    :try_end_59c
    .catch Ljava/lang/Exception; {:try_start_591 .. :try_end_59c} :catch_59e

    goto/16 :goto_9

    :catch_59e
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET0_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_5a6
    move-exception v1

    const-string v1, "set ASR_FOURMIC_USE_ASR_AS_VAD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_591

    :sswitch_5ad
    :try_start_5ad
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->I(I)V
    :try_end_5b8
    .catch Ljava/lang/Exception; {:try_start_5ad .. :try_end_5b8} :catch_5ba

    goto/16 :goto_9

    :catch_5ba
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET1_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_5c2
    :try_start_5c2
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->J(I)V
    :try_end_5cd
    .catch Ljava/lang/Exception; {:try_start_5c2 .. :try_end_5cd} :catch_5cf

    goto/16 :goto_9

    :catch_5cf
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_NET2_THRESHOLD Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_5d7
    :try_start_5d7
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->K(I)V
    :try_end_5e2
    .catch Ljava/lang/Exception; {:try_start_5d7 .. :try_end_5e2} :catch_5e4

    goto/16 :goto_9

    :catch_5e4
    move-exception v1

    const-string v1, "set ASR_OPT_WUW_ACTIVE_NET Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_5ec
    :try_start_5ec
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/br;->d(Z)V
    :try_end_5f7
    .catch Ljava/lang/Exception; {:try_start_5ec .. :try_end_5f7} :catch_5f9

    goto/16 :goto_9

    :catch_5f9
    move-exception v1

    const-string v1, "set ASR_OPT_RECOGNIZE_VAD_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_601
    :try_start_601
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->H(Ljava/lang/String;)V
    :try_end_608
    .catch Ljava/lang/Exception; {:try_start_601 .. :try_end_608} :catch_60a

    goto/16 :goto_9

    :catch_60a
    move-exception v1

    const-string v1, "set ASR_OPT_USER_ID Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_612
    :try_start_612
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->r:Z
    :try_end_61a
    .catch Ljava/lang/Exception; {:try_start_612 .. :try_end_61a} :catch_61c

    goto/16 :goto_9

    :catch_61c
    move-exception v1

    const-string v1, "set DEBUG_SAVE_OFFLINEASR_SESSION_PCM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_624
    :try_start_624
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->S(Z)V
    :try_end_62f
    .catch Ljava/lang/Exception; {:try_start_624 .. :try_end_62f} :catch_631

    goto/16 :goto_9

    :catch_631
    move-exception v1

    const-string v1, "set ASR_OPT_MAXWELL_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_639
    :try_start_639
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->I(Ljava/lang/String;)V
    :try_end_640
    .catch Ljava/lang/Exception; {:try_start_639 .. :try_end_640} :catch_642

    goto/16 :goto_9

    :catch_642
    move-exception v1

    const-string v1, "set ASR_OPT_RET_TYPE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_64a
    :try_start_64a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->z(Z)V
    :try_end_655
    .catch Ljava/lang/Exception; {:try_start_64a .. :try_end_655} :catch_657

    goto/16 :goto_9

    :catch_657
    move-exception v1

    const-string v1, "set ASR_OPT_PRINT_NET_ENGINE_LOG Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_65f
    :try_start_65f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->f(Z)V
    :try_end_668
    .catch Ljava/lang/Exception; {:try_start_65f .. :try_end_668} :catch_66a

    goto/16 :goto_9

    :catch_66a
    move-exception v1

    const-string v1, "set ASR_OPT_USE_PATIAL_NLU Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_672
    :try_start_672
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->y(Z)V
    :try_end_67d
    .catch Ljava/lang/Exception; {:try_start_672 .. :try_end_67d} :catch_67f

    goto/16 :goto_9

    :catch_67f
    move-exception v1

    const-string v1, "set ASR_OPT_RETURN_ORIGIN_FORMAT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_687
    :try_start_687
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->n(I)V
    :try_end_690
    .catch Ljava/lang/Exception; {:try_start_687 .. :try_end_690} :catch_692

    goto/16 :goto_9

    :catch_692
    move-exception v1

    const-string v1, "set ASR_OPT_APPEND_LENGTH Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_69a
    :try_start_69a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->E(Z)V
    :try_end_6a5
    .catch Ljava/lang/Exception; {:try_start_69a .. :try_end_6a5} :catch_6a7

    goto/16 :goto_9

    :catch_6a7
    move-exception v1

    const-string v1, "set ASR_OPT_ADVANCE_INIT_COMPILER Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_6af
    :try_start_6af
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->g(Ljava/lang/String;)V
    :try_end_6b6
    .catch Ljava/lang/Exception; {:try_start_6af .. :try_end_6b6} :catch_6b8

    goto/16 :goto_9

    :catch_6b8
    move-exception v1

    const-string v1, "set ASR_OPT_AUDIO_FORMAT Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_6c0
    :try_start_6c0
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->A(Z)V
    :try_end_6cb
    .catch Ljava/lang/Exception; {:try_start_6c0 .. :try_end_6cb} :catch_6cd

    goto/16 :goto_9

    :catch_6cd
    move-exception v1

    const-string v1, "set ASR_OPT_SAVE_SESSION_PCM_ENABLE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_6d5
    :try_start_6d5
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->h(Ljava/lang/String;)V
    :try_end_6dc
    .catch Ljava/lang/Exception; {:try_start_6d5 .. :try_end_6dc} :catch_6de

    goto/16 :goto_9

    :catch_6de
    move-exception v1

    const-string v1, "set ASR_OPT_SAVE_SESSION_PCM_DIR Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_6e6
    :try_start_6e6
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->a(Z)V
    :try_end_6f1
    .catch Ljava/lang/Exception; {:try_start_6e6 .. :try_end_6f1} :catch_6f3

    goto/16 :goto_9

    :catch_6f3
    move-exception v1

    const-string v1, "set ASR_OPT_RECORDING_WAV Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_6fb
    :try_start_6fb
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->T(Z)V
    :try_end_706
    .catch Ljava/lang/Exception; {:try_start_6fb .. :try_end_706} :catch_708

    goto/16 :goto_9

    :catch_708
    move-exception v1

    const-string v1, "set ASR_OPT_PUNCTUATED Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_710
    :try_start_710
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->V(Z)V
    :try_end_71b
    .catch Ljava/lang/Exception; {:try_start_710 .. :try_end_71b} :catch_71d

    goto/16 :goto_9

    :catch_71d
    move-exception v1

    const-string v1, "set ASR_OPT_OPEN_FULL_DUPLEX Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_725
    :try_start_725
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->U(Z)V
    :try_end_730
    .catch Ljava/lang/Exception; {:try_start_725 .. :try_end_730} :catch_732

    goto/16 :goto_9

    :catch_732
    move-exception v1

    const-string v1, "set ASR_OPT_OPEN_FULL_DUPLEX Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_73a
    :try_start_73a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->L(I)V
    :try_end_745
    .catch Ljava/lang/Exception; {:try_start_73a .. :try_end_745} :catch_747

    goto/16 :goto_9

    :catch_747
    move-exception v1

    const-string v1, "set ASR_OPT_MAX_WAKEUP_END Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_74f
    :try_start_74f
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(Z)V
    :try_end_75a
    .catch Ljava/lang/Exception; {:try_start_74f .. :try_end_75a} :catch_75c

    goto/16 :goto_9

    :catch_75c
    move-exception v1

    const-string v1, "set ASR_OPT_INHIBIT_FRONT_WAKEUP Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_764
    :try_start_764
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->G(Z)V
    :try_end_76f
    .catch Ljava/lang/Exception; {:try_start_764 .. :try_end_76f} :catch_771

    goto/16 :goto_9

    :catch_771
    move-exception v1

    const-string v1, "set ASR_OPT_INHIBIT_BACK_WAKEUP Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_779
    :try_start_779
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(I)V
    :try_end_784
    .catch Ljava/lang/Exception; {:try_start_779 .. :try_end_784} :catch_786

    goto/16 :goto_9

    :catch_786
    move-exception v1

    const-string v1, "set ASR_OPT_RK_THREAD_NUM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_78e
    :try_start_78e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->H(Z)V
    :try_end_799
    .catch Ljava/lang/Exception; {:try_start_78e .. :try_end_799} :catch_79b

    goto/16 :goto_9

    :catch_79b
    move-exception v1

    const-string v1, "set ASR_OPT_LOCAL_RESULT_CONTAINS_UTTERANCETIME Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7a3
    :try_start_7a3
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->B(Z)V
    :try_end_7ae
    .catch Ljava/lang/Exception; {:try_start_7a3 .. :try_end_7ae} :catch_7b0

    goto/16 :goto_9

    :catch_7b0
    move-exception v1

    const-string v1, "set ASR_OPT_VAD_AFFECT_ASR Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7b8
    :try_start_7b8
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->N(I)V
    :try_end_7c3
    .catch Ljava/lang/Exception; {:try_start_7b8 .. :try_end_7c3} :catch_7c5

    goto/16 :goto_9

    :catch_7c5
    move-exception v1

    const-string v1, "set ASR_OPT_INPUT_SAMPLE_RATE Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7cd
    :try_start_7cd
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->C(Z)V
    :try_end_7d8
    .catch Ljava/lang/Exception; {:try_start_7cd .. :try_end_7d8} :catch_7da

    goto/16 :goto_9

    :catch_7da
    move-exception v1

    const-string v1, "set ASR_OPT_FOURMIC_PCM_TEST Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7e2
    :try_start_7e2
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/common/s;->i(Z)V
    :try_end_7ef
    .catch Ljava/lang/Exception; {:try_start_7e2 .. :try_end_7ef} :catch_7f1

    goto/16 :goto_9

    :catch_7f1
    move-exception v1

    const-string v1, "set ASR_FOURMIC_IS_RK_PLATFORM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7f9
    :try_start_7f9
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/common/s;->j(Z)V
    :try_end_806
    .catch Ljava/lang/Exception; {:try_start_7f9 .. :try_end_806} :catch_808

    goto/16 :goto_9

    :catch_808
    move-exception v1

    const-string v1, "set ASR_FOURMIC_IS_RK_SINGALCHANEL Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_810
    :try_start_810
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->R(I)V
    :try_end_81b
    .catch Ljava/lang/Exception; {:try_start_810 .. :try_end_81b} :catch_81d

    goto/16 :goto_9

    :catch_81d
    move-exception v1

    const-string v1, "set ASR_OPT_REQ_NLU_LENGTH Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_825
    :try_start_825
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->R(Z)V
    :try_end_830
    .catch Ljava/lang/Exception; {:try_start_825 .. :try_end_830} :catch_832

    goto/16 :goto_9

    :catch_832
    move-exception v1

    const-string v1, "set ASR_BEST_RESULT_RETURN Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_83a
    :try_start_83a
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->S(I)V
    :try_end_845
    .catch Ljava/lang/Exception; {:try_start_83a .. :try_end_845} :catch_847

    goto/16 :goto_9

    :catch_847
    move-exception v1

    const-string v1, "set ASR_FALSE_ALARM Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_84f
    :try_start_84f
    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->T(I)V
    :try_end_85c
    .catch Ljava/lang/Exception; {:try_start_84f .. :try_end_85c} :catch_85e

    goto/16 :goto_6

    :catch_85e
    move-exception v1

    const-string v1, "set ASR_DOMAINS_PENALTY Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_866
    move v1, v3

    goto/16 :goto_539

    nop

    :sswitch_data_86a
    .sparse-switch
        0x3e9 -> :sswitch_a
        0x3eb -> :sswitch_67
        0x3ec -> :sswitch_7d
        0x3ef -> :sswitch_b1
        0x3f0 -> :sswitch_55
        0x3f1 -> :sswitch_90
        0x3f6 -> :sswitch_c7
        0x3f9 -> :sswitch_490
        0x3fa -> :sswitch_46a
        0x3fb -> :sswitch_459
        0x3fc -> :sswitch_126
        0x3fd -> :sswitch_139
        0x400 -> :sswitch_184
        0x401 -> :sswitch_195
        0x406 -> :sswitch_157
        0x407 -> :sswitch_166
        0x408 -> :sswitch_175
        0x409 -> :sswitch_148
        0x414 -> :sswitch_44
        0x424 -> :sswitch_da
        0x425 -> :sswitch_fc
        0x42d -> :sswitch_9
        0x42e -> :sswitch_1a6
        0x42f -> :sswitch_1bb
        0x430 -> :sswitch_1cd
        0x431 -> :sswitch_1d7
        0x432 -> :sswitch_1f0
        0x433 -> :sswitch_201
        0x434 -> :sswitch_216
        0x437 -> :sswitch_3b0
        0x438 -> :sswitch_411
        0x439 -> :sswitch_22b
        0x43a -> :sswitch_240
        0x43b -> :sswitch_255
        0x43c -> :sswitch_27f
        0x43d -> :sswitch_2a9
        0x43f -> :sswitch_2be
        0x441 -> :sswitch_2d2
        0x442 -> :sswitch_31a
        0x443 -> :sswitch_3da
        0x444 -> :sswitch_448
        0x445 -> :sswitch_47b
        0x446 -> :sswitch_4a1
        0x447 -> :sswitch_2e3
        0x448 -> :sswitch_426
        0x449 -> :sswitch_437
        0x44a -> :sswitch_400
        0x44b -> :sswitch_3c5
        0x44c -> :sswitch_810
        0x4b0 -> :sswitch_825
        0x4b3 -> :sswitch_83a
        0x4b4 -> :sswitch_84f
        0xc4e -> :sswitch_111
        0x1770 -> :sswitch_2f8
        0x1771 -> :sswitch_309
        0x2328 -> :sswitch_334
        0x2329 -> :sswitch_349
        0x2711 -> :sswitch_3ef
        0x2712 -> :sswitch_531
        0x2713 -> :sswitch_549
        0x2714 -> :sswitch_561
        0x2717 -> :sswitch_591
        0x2718 -> :sswitch_5ad
        0x2719 -> :sswitch_5c2
        0x271a -> :sswitch_5d7
        0x271b -> :sswitch_31a
        0x271c -> :sswitch_9
        0x271d -> :sswitch_5ec
        0x271e -> :sswitch_601
        0x2723 -> :sswitch_672
        0x2725 -> :sswitch_65f
        0x2726 -> :sswitch_687
        0x2727 -> :sswitch_69a
        0x272e -> :sswitch_6af
        0x272f -> :sswitch_6c0
        0x2730 -> :sswitch_6d5
        0x2731 -> :sswitch_6e6
        0x2732 -> :sswitch_6fb
        0x2733 -> :sswitch_725
        0x2734 -> :sswitch_710
        0x2735 -> :sswitch_73a
        0x2736 -> :sswitch_74f
        0x2737 -> :sswitch_764
        0x2738 -> :sswitch_78e
        0x2739 -> :sswitch_7a3
        0x273a -> :sswitch_7b8
        0x273b -> :sswitch_779
        0x274c -> :sswitch_624
        0x274d -> :sswitch_639
        0x274e -> :sswitch_64a
        0x2774 -> :sswitch_39b
        0x2775 -> :sswitch_4b3
        0x2776 -> :sswitch_4c8
        0x2777 -> :sswitch_4dd
        0x2778 -> :sswitch_4f2
        0x2779 -> :sswitch_507
        0x277a -> :sswitch_51c
        0x277b -> :sswitch_7e2
        0x277c -> :sswitch_7f9
        0x27d0 -> :sswitch_7cd
        0x27d1 -> :sswitch_57e
        0x27d2 -> :sswitch_388
        0x27d6 -> :sswitch_373
        0x27d7 -> :sswitch_35e
        0x133c707 -> :sswitch_612
    .end sparse-switch

    :pswitch_data_a10
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method protected setWakeupWord(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v1

    if-eqz v1, :cond_c

    const v0, -0xfa01

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0}, Lcom/unisound/sdk/bg;->S()I

    move-result v1

    if-eqz v1, :cond_16

    const v0, -0xfa02

    goto :goto_b

    :cond_16
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/cw;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/cw;->a(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v1}, Lcom/unisound/sdk/cw;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->a()Ljava/lang/String;

    move-result-object v6

    const-string v1, "wakeup"

    const-string v2, "wakeup"

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    const-string v3, "wakeup"

    invoke-virtual {v0, v3}, Lcom/unisound/sdk/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0}, Lcom/unisound/sdk/cw;->d()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->p:Lcom/unisound/sdk/cw;

    invoke-virtual {v0, v7}, Lcom/unisound/sdk/cw;->a(Z)V

    move v0, v7

    goto :goto_b
.end method

.method protected setWakeupWord(Ljava/util/Map;)I
    .registers 6
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

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/w;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "SpeechUnderstanderInterface: setWakeupWord"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->setWakeupWord(Ljava/util/List;)I

    move-result v0

    :goto_17
    return v0

    :cond_18
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "SpeechUnderstanderInterface: setWakeupWord error"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    const/4 v0, -0x1

    goto :goto_17
.end method

.method protected start()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    iget-object v0, v0, Lcom/unisound/sdk/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .registers 10

    const v7, -0xfa01

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "USC"

    aput-object v1, v0, v4

    const-string v1, "start recognition tag is "

    aput-object v1, v0, v5

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->C()V

    if-nez p1, :cond_23

    const v0, -0xf82c

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    :goto_22
    return-void

    :cond_23
    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v0, v3, :cond_32

    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->N:Z

    if-nez v0, :cond_32

    const v0, -0xf82d

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_22

    :cond_32
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->as:Z

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/w;->O(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->ak:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/unisound/c/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->o()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->s()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v0, v0, Lcom/unisound/sdk/w;->c:Lcom/unisound/common/s;

    invoke-virtual {v0}, Lcom/unisound/common/s;->q()I

    :cond_5f
    invoke-direct {p0, v5}, Lcom/unisound/sdk/bg;->h(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->p()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->i(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0}, Lcom/unisound/sdk/br;->q()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bg;->k(Z)V

    :cond_74
    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->y()I

    move-result v0

    if-le v0, v5, :cond_83

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->e(I)I

    :cond_83
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Y()I

    move-result v0

    if-nez v0, :cond_a0

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->getFixEngineVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V3."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f8

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->g(I)I

    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aL()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->b(Z)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->c(Z)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_bb
    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/ao;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_c4
    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v6}, Lcom/unisound/sdk/m;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_cd
    iget-boolean v0, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v0, :cond_11d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->z:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v7}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    goto/16 :goto_22

    :cond_f8
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aD()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->h(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aE()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->i(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aF()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->j(I)I

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->aG()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bg;->k(I)I

    goto :goto_a0

    :cond_11d
    iget-object v0, p0, Lcom/unisound/sdk/bg;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/unisound/common/v;->a()V

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->au:Z

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->av:Z

    invoke-static {}, Lcom/unisound/common/y;->a()V

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->X()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->v()I

    move-result v1

    if-eq v0, v1, :cond_153

    const/16 v0, 0x3f3

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->X()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/bg;->setOption(ILjava/lang/Object;)V

    :cond_153
    const-string v0, "oneshot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1fc

    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/w;->j(Z)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, v5

    :goto_168
    const-string v0, "wakeup:netasr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v0, v5}, Lcom/unisound/sdk/br;->h(Z)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, v4

    :cond_17d
    iput-object p1, p0, Lcom/unisound/sdk/bg;->I:Ljava/lang/String;

    iget v0, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->A()Z

    move-result v1

    if-eqz v1, :cond_214

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->O(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->i()I

    move-result v1

    if-eq v1, v3, :cond_198

    iput v4, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_198
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->Y()I

    move-result v1

    if-nez v1, :cond_203

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->f(I)I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    :goto_1c0
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->w(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->H:Lcom/unisound/sdk/aw;

    invoke-virtual {v1}, Lcom/unisound/sdk/aw;->a()V

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/bg;->E:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->C:Z

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->D:Z

    iput-object v6, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    packed-switch v1, :pswitch_data_2e0

    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->C:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/m;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/m;->d(Z)V

    :goto_1ed
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->A()Z

    move-result v1

    if-eqz v1, :cond_1f7

    iput v0, p0, Lcom/unisound/sdk/bg;->F:I

    :cond_1f7
    invoke-super {p0, p1}, Lcom/unisound/sdk/o;->start(Ljava/lang/String;)V

    goto/16 :goto_22

    :cond_1fc
    iget-object v0, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v4}, Lcom/unisound/sdk/w;->j(Z)V

    goto/16 :goto_168

    :cond_203
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto :goto_1c0

    :cond_214
    iget-object v1, p0, Lcom/unisound/sdk/bg;->J:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_270

    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->r()Z

    move-result v1

    if-nez v1, :cond_250

    iput v3, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    :goto_231
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->Y()I

    move-result v1

    if-nez v1, :cond_25e

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bg;->f(I)I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    goto/16 :goto_1c0

    :cond_250
    iput v4, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    goto :goto_231

    :cond_25e
    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->aA()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto/16 :goto_1c0

    :cond_270
    iget-object v1, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v1}, Lcom/unisound/sdk/br;->i()I

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/bg;->F:I

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    invoke-virtual {v2}, Lcom/unisound/sdk/br;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->M(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/w;->h(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v2}, Lcom/unisound/sdk/w;->ay()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->F(I)V

    goto/16 :goto_1c0

    :pswitch_2a0
    iput-boolean v5, p0, Lcom/unisound/sdk/bg;->D:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/m;->c(Z)V

    new-instance v1, Lcom/unisound/sdk/y;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-direct {v1, v2, v3}, Lcom/unisound/sdk/y;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    iput-object v1, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3, v6}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/z;ZLjava/lang/String;Lcom/unisound/sdk/aa;)V

    goto/16 :goto_1ed

    :pswitch_2bd
    new-instance v1, Lcom/unisound/sdk/y;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-direct {v1, v2, v3}, Lcom/unisound/sdk/y;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    iput-object v1, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v1, v5}, Lcom/unisound/sdk/m;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->e:Lcom/unisound/sdk/m;

    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->M:Z

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/m;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    iget-object v2, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v3, p0, Lcom/unisound/sdk/bg;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v3, v6}, Lcom/unisound/sdk/ao;->a(Lcom/unisound/sdk/z;ZLjava/lang/String;Lcom/unisound/sdk/aa;)V

    goto/16 :goto_1ed

    nop

    :pswitch_data_2e0
    .packed-switch 0x0
        :pswitch_2bd
        :pswitch_2a0
    .end packed-switch
.end method

.method protected stop()V
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bg;->B:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0}, Lcom/unisound/sdk/ao;->d()V

    return-void
.end method

.method protected u()I
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->u()I

    move-result v0

    return v0
.end method

.method protected unloadGrammar(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0}, Lcom/unisound/sdk/bg;->L()I

    move-result v0

    if-eqz v0, :cond_a

    const v0, -0xfa01

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/sdk/bg;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ab;->h(Ljava/lang/String;)I

    move-result v0

    goto :goto_9
.end method

.method protected uploadUserData(Ljava/util/Map;)V
    .registers 3
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

    iget-object v0, p0, Lcom/unisound/sdk/bg;->o:Lcom/unisound/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ao;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected v()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()I
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->x()I

    move-result v0

    return v0
.end method

.method protected y()I
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/o;->y()I

    move-result v0

    return v0
.end method

.method protected z()I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v2, v1, :cond_c

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v2, v5, :cond_10

    :cond_c
    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v2, v5, :cond_29

    :cond_10
    iget v2, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v2, v5, :cond_1e

    iget-object v2, p0, Lcom/unisound/sdk/bg;->x:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bg;->p(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->N:Z

    :cond_1e
    :goto_1e
    const-string v2, "normal"

    iget-object v3, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v3, v2}, Lcom/unisound/sdk/w;->G(Ljava/lang/String;)V

    :cond_29
    iget-boolean v2, p0, Lcom/unisound/sdk/bg;->L:Z

    if-nez v2, :cond_70

    iget v2, p0, Lcom/unisound/sdk/bg;->G:I

    if-eq v2, v1, :cond_35

    iget v1, p0, Lcom/unisound/sdk/bg;->G:I

    if-ne v1, v4, :cond_39

    :cond_35
    iget v1, p0, Lcom/unisound/sdk/bg;->F:I

    if-eq v1, v4, :cond_62

    :cond_39
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->L:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/bg;->r()V

    iget-object v1, p0, Lcom/unisound/sdk/bg;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->aJ()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bg;->g(Z)I

    move-result v1

    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->M:Z

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "SpeechUnderstanderInterface : loadResult = "

    aput-object v3, v2, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    move v0, v1

    :cond_5a
    :goto_5a
    return v0

    :cond_5b
    const v2, -0xf82d

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bg;->q(I)V

    goto :goto_1e

    :cond_62
    iput-boolean v4, p0, Lcom/unisound/sdk/bg;->L:Z

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/unisound/sdk/bg;->am:Landroid/os/Handler;

    const/16 v2, 0x469

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5a

    :cond_70
    move v0, v1

    goto :goto_5a
.end method
