.class public Lcom/unisound/sdk/o;
.super Ljava/lang/Object;


# static fields
.field public static final OPT_SET_FIX_RESULT_NLU:I = 0x5

.field public static final OPT_SET_FIX_RESULT_NLU_CONFIGPATH:I = 0x6

.field public static final SET_USER_DATA_ERROR:I = -0x64

.field public static final SET_USER_DATA_OK:I = 0x0

.field public static final SET_USER_DATA_WARNING:I = -0xc8


# instance fields
.field protected a:Lcom/unisound/sdk/l;

.field protected b:Lcom/unisound/sdk/w;

.field protected c:Lcom/unisound/sdk/y;

.field protected d:Lcom/unisound/sdk/aa;

.field protected e:Lcom/unisound/sdk/m;

.field protected f:Lcom/unisound/sdk/ab;

.field protected g:Lcom/unisound/common/ar;

.field protected h:Lcom/unisound/sdk/n;

.field protected i:Lcom/unisound/sdk/a;

.field protected j:Lcom/unisound/sdk/cs;

.field protected k:Lcom/unisound/sdk/av;

.field protected l:Landroid/content/Context;

.field protected m:F

.field public mLooper:Landroid/os/Looper;

.field public mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

.field protected n:Landroid/os/HandlerThread;

.field private o:Z

.field private p:Z

.field private q:Lcom/unisound/common/g;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/unisound/client/IAudioSource;

.field private u:Z

.field private v:Lcom/unisound/sdk/t;

.field private w:Lcom/unisound/common/d;

.field private x:Lcom/unisound/sdk/aj;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->o:Z

    iput-boolean v5, p0, Lcom/unisound/sdk/o;->p:Z

    new-instance v0, Lcom/unisound/sdk/l;

    invoke-direct {v0}, Lcom/unisound/sdk/l;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iput-object v4, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iput-object v4, p0, Lcom/unisound/sdk/o;->d:Lcom/unisound/sdk/aa;

    new-instance v0, Lcom/unisound/common/g;

    invoke-direct {v0}, Lcom/unisound/common/g;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    new-instance v0, Lcom/unisound/sdk/ab;

    invoke-direct {v0}, Lcom/unisound/sdk/ab;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    new-instance v0, Lcom/unisound/sdk/n;

    invoke-direct {v0}, Lcom/unisound/sdk/n;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    new-instance v0, Lcom/unisound/sdk/a;

    invoke-direct {v0}, Lcom/unisound/sdk/a;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    new-instance v0, Lcom/unisound/sdk/cs;

    invoke-direct {v0}, Lcom/unisound/sdk/cs;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->j:Lcom/unisound/sdk/cs;

    new-instance v0, Lcom/unisound/sdk/av;

    invoke-direct {v0}, Lcom/unisound/sdk/av;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->r:Z

    const/high16 v0, -0x3f000000    # -8.0f

    iput v0, p0, Lcom/unisound/sdk/o;->m:F

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    iput-object v4, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    iput-boolean v3, p0, Lcom/unisound/sdk/o;->u:Z

    new-instance v0, Lcom/unisound/sdk/q;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/q;-><init>(Lcom/unisound/sdk/o;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->w:Lcom/unisound/common/d;

    new-instance v0, Lcom/unisound/sdk/r;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/r;-><init>(Lcom/unisound/sdk/o;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->x:Lcom/unisound/sdk/aj;

    new-instance v0, Lcom/unisound/sdk/w;

    invoke-direct {v0, p1}, Lcom/unisound/sdk/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ht_NetAndFix"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/o;->mLooper:Landroid/os/Looper;

    new-instance v0, Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/unisound/sdk/m;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    iget-object v1, p0, Lcom/unisound/sdk/o;->w:Lcom/unisound/common/d;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/d;)V

    iput-object p1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    new-instance v0, Lcom/unisound/sdk/br;

    invoke-direct {v0}, Lcom/unisound/sdk/br;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->mSpeechUnderstanderParams:Lcom/unisound/sdk/br;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/YunZhiSheng/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    invoke-virtual {v0, p1}, Lcom/unisound/common/g;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v3}, Lcom/unisound/sdk/w;->f(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    const/16 v1, 0xbb8

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/w;->a(II)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/w;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/w;)V

    new-instance v0, Lcom/unisound/sdk/t;

    invoke-direct {v0, p0, v4}, Lcom/unisound/sdk/t;-><init>(Lcom/unisound/sdk/o;Lcom/unisound/sdk/p;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    sput v5, Lcom/unisound/sdk/ab;->m:I

    new-instance v0, Lcom/unisound/sdk/p;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/p;-><init>(Lcom/unisound/sdk/o;)V

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/o;->a(Lcom/unisound/common/ah;)V

    return-void
.end method

.method protected static b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/unisound/sdk/ab;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, -0x64

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_c
.end method

.method protected a()Lcom/unisound/sdk/as;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .registers 2

    return-void
.end method

.method protected a(II)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/w;->a(II)V

    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/o;->g:Lcom/unisound/common/ar;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/o;->g:Lcom/unisound/common/ar;

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/ar;->a(IILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0}, Lcom/unisound/sdk/n;->c()V

    return-void
.end method

.method protected a(Lcom/unisound/common/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/av;->a(Lcom/unisound/common/ah;)V

    return-void
.end method

.method protected a(Lcom/unisound/common/b;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/b;)V

    return-void
.end method

.method protected a(Lcom/unisound/sdk/v;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/n;->a(Lcom/unisound/sdk/e;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZII)V
    .registers 5

    return-void
.end method

.method protected a(Ljava/lang/String;ZIJJII)V
    .registers 10

    return-void
.end method

.method protected a(Z[BII)V
    .registers 5

    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/unisound/common/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected a(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/lang/String;Z)Z
    .registers 6

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_44

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/ab;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "USCFixRecognizer.initByModelDir init data fail!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_43
    return v0

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/asrfix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    :cond_58
    const/4 v0, 0x1

    goto :goto_43
.end method

.method protected a(Z)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/unisound/sdk/o;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected b(Z)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->e(Z)I

    move-result v0

    return v0
.end method

.method protected b()V
    .registers 3

    new-instance v0, Lcom/unisound/sdk/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/t;-><init>(Lcom/unisound/sdk/o;Lcom/unisound/sdk/p;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->x:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/aj;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/w;)V

    return-void
.end method

.method protected b(I)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    :cond_8
    return-void
.end method

.method protected b(II)V
    .registers 3

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v1, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, v1, Lcom/unisound/sdk/ab;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/unisound/common/h;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected c(Z)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->f(Z)I

    move-result v0

    return v0
.end method

.method protected c(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/n;->a(I)V

    return-void
.end method

.method protected c(II)V
    .registers 3

    return-void
.end method

.method protected c()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->r()Z

    move-result v0

    return v0
.end method

.method protected cancel()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/o;->v:Lcom/unisound/sdk/t;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/ar;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Z)V

    return-void
.end method

.method protected d(I)V
    .registers 2

    return-void
.end method

.method protected d()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->q()Z

    move-result v0

    return v0
.end method

.method protected e(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->c(I)I

    move-result v0

    return v0
.end method

.method protected e()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->c()Z

    move-result v0

    return v0
.end method

.method protected f(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->d(I)I

    move-result v0

    return v0
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->g()V

    :cond_9
    return-void
.end method

.method protected g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected g(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->e(I)I

    move-result v0

    return v0
.end method

.method protected getFixEngineVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .registers 3

    const/16 v0, 0x41f

    if-ne v0, p1, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/16 v0, 0x420

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_1e
    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->u()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_2d
    const/16 v0, 0x3f3

    if-ne v0, p1, :cond_3c

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->v()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e

    :cond_3c
    const/16 v0, 0x3f7

    if-ne v0, p1, :cond_4b

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e

    :cond_4b
    const/16 v0, 0x3f8

    if-ne v0, p1, :cond_5a

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->Q()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_e

    :cond_5a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getVersion()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unisound/common/an;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->f(I)I

    move-result v0

    return v0
.end method

.method protected h()V
    .registers 1

    return-void
.end method

.method protected i(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->g(I)I

    move-result v0

    return v0
.end method

.method protected i()V
    .registers 1

    return-void
.end method

.method protected j(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->h(I)I

    move-result v0

    return v0
.end method

.method protected j()V
    .registers 1

    return-void
.end method

.method protected k(I)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->i(I)I

    move-result v0

    return v0
.end method

.method protected k()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected l()V
    .registers 1

    return-void
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method protected n()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->l()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/sdk/o;->q:Lcom/unisound/common/g;

    invoke-virtual {v0}, Lcom/unisound/common/g;->a()Z

    :cond_d
    iget-object v0, p0, Lcom/unisound/sdk/o;->h:Lcom/unisound/sdk/n;

    invoke-virtual {v0}, Lcom/unisound/sdk/n;->b()V

    return-void
.end method

.method protected o()V
    .registers 1

    return-void
.end method

.method protected p()V
    .registers 1

    return-void
.end method

.method public postRecordingStartStatus()V
    .registers 1

    return-void
.end method

.method protected q()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->f()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->p()V

    return-void
.end method

.method protected r()V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizerInterFace : createJniAsrFix"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v1, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/ab;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->s()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    new-instance v1, Lcom/unisound/sdk/s;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/s;-><init>(Lcom/unisound/sdk/o;)V

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/sdk/u;)V

    return-void
.end method

.method protected s()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->t()I

    move-result v0

    return v0
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .registers 4

    iput-object p1, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    iget-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_f

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 7

    const/16 v1, 0x41b

    if-ne v1, p1, :cond_16

    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iput-boolean v1, v2, Lcom/unisound/sdk/l;->b:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v1

    const-string v1, "set asr_result_filter Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_16
    const/16 v1, 0x41d

    if-ne v1, p1, :cond_2a

    :try_start_1a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/unisound/sdk/o;->p:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_e

    :catch_23
    move-exception v1

    const-string v1, "set asr_recording_enabled Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_2a
    const/16 v1, 0x41e

    if-ne v1, p1, :cond_49

    :try_start_2e
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->k:Z

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Lcom/unisound/c/a;->b(Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_41} :catch_42

    goto :goto_e

    :catch_42
    move-exception v1

    const-string v1, "set asr_print_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_49
    const/16 v1, 0x427

    if-ne v1, p1, :cond_5d

    :try_start_4d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->m:Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_55} :catch_56

    goto :goto_e

    :catch_56
    move-exception v1

    const-string v1, "set asr_print_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_5d
    const/16 v1, 0x41f

    if-eq v1, p1, :cond_e

    const/16 v1, 0x422

    if-ne v1, p1, :cond_74

    :try_start_65
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->a(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6c} :catch_6d

    goto :goto_e

    :catch_6d
    move-exception v1

    const-string v1, "set asr_save_recording_data Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_74
    const/16 v1, 0x423

    if-ne v1, p1, :cond_8a

    :try_start_78
    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/unisound/sdk/l;->c:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_82} :catch_83

    goto :goto_e

    :catch_83
    move-exception v1

    const-string v1, "set asr_result_json Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_e

    :cond_8a
    const/16 v1, 0x3f2

    if-ne v1, p1, :cond_a3

    :try_start_8e
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->d(I)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_99} :catch_9b

    goto/16 :goto_e

    :catch_9b
    move-exception v1

    const-string v1, "set asr_vad_timeout_frontsil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_a3
    const/16 v1, 0x3f3

    if-ne v1, p1, :cond_da

    :try_start_a7
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->u()I

    move-result v2

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/unisound/sdk/o;->a(II)V

    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->m(I)V

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->e(I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_d0} :catch_d2

    goto/16 :goto_e

    :catch_d2
    move-exception v1

    const-string v1, "set asr_vad_timeout_backsil Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_da
    const/4 v1, 0x5

    if-ne v1, p1, :cond_106

    :try_start_dd
    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/unisound/sdk/l;->f:Z

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-boolean v1, v1, Lcom/unisound/sdk/l;->f:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    new-instance v2, Lcn/yunzhisheng/nlu/OfflineNlu;

    invoke-direct {v2}, Lcn/yunzhisheng/nlu/OfflineNlu;-><init>()V

    iput-object v2, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_fc} :catch_fe

    goto/16 :goto_e

    :catch_fe
    move-exception v1

    const-string v1, "set asr_fix_result_nlu Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_106
    const/4 v1, 0x6

    if-ne v1, p1, :cond_13a

    :try_start_109
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/unisound/sdk/l;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/l;

    iget-object v1, v1, Lcom/unisound/sdk/l;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    iget-object v2, p0, Lcom/unisound/sdk/o;->s:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcn/yunzhisheng/nlu/OfflineNlu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_130} :catch_132

    goto/16 :goto_e

    :catch_132
    move-exception v1

    const-string v1, "set asr_fix_result_nlu_configpath Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_13a
    const/16 v1, 0x426

    if-ne v1, p1, :cond_15c

    :try_start_13e
    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/w;->D(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/Boolean;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_152} :catch_154

    goto/16 :goto_e

    :catch_154
    move-exception v1

    const-string v1, "set asr_print_engine_log Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_15c
    const/16 v1, 0x1388

    if-ne v1, p1, :cond_175

    :try_start_160
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->c(Z)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16b} :catch_16d

    goto/16 :goto_e

    :catch_16d
    move-exception v1

    const-string v1, "set setFarFeildEnabled Error. 5000 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_175
    const/16 v1, 0x1389

    if-ne v1, p1, :cond_190

    :try_start_179
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->y:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_179 .. :try_end_186} :catch_188

    goto/16 :goto_e

    :catch_188
    move-exception v1

    const-string v1, "set min back energy Error. 5001 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_190
    const/16 v1, 0x138a

    if-ne v1, p1, :cond_1ab

    :try_start_194
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->z:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_1a1} :catch_1a3

    goto/16 :goto_e

    :catch_1a3
    move-exception v1

    const-string v1, "set min back energy higher TH Error. 5002 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1ab
    const/16 v1, 0x138b

    if-ne v1, p1, :cond_1c6

    :try_start_1af
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->A:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1bc} :catch_1be

    goto/16 :goto_e

    :catch_1be
    move-exception v1

    const-string v1, "set pitch threshold Error. 5003 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1c6
    const/16 v1, 0x138c

    if-ne v1, p1, :cond_1e1

    :try_start_1ca
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->B:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1d7} :catch_1d9

    goto/16 :goto_e

    :catch_1d9
    move-exception v1

    const-string v1, "set pitch persist length for start usage Error. 5004 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1e1
    const/16 v1, 0x138d

    if-ne v1, p1, :cond_1fc

    :try_start_1e5
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->C:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_1f2
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_1f2} :catch_1f4

    goto/16 :goto_e

    :catch_1f4
    move-exception v1

    const-string v1, "set pitch drop length for end usage Error. 5005 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1fc
    const/16 v1, 0x138e

    if-ne v1, p1, :cond_217

    :try_start_200
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->D:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_20d} :catch_20f

    goto/16 :goto_e

    :catch_20f
    move-exception v1

    const-string v1, "set high freq energy vs low freq energy Error. 5006 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_217
    const/16 v1, 0x138f

    if-ne v1, p1, :cond_232

    :try_start_21b
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->E:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_228} :catch_22a

    goto/16 :goto_e

    :catch_22a
    move-exception v1

    const-string v1, "set min signal length for speech Error. 5007 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_232
    const/16 v1, 0x1390

    if-ne v1, p1, :cond_24d

    :try_start_236
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->F:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_243
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_243} :catch_245

    goto/16 :goto_e

    :catch_245
    move-exception v1

    const-string v1, "set max silence length Error. 5008 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_24d
    const/16 v1, 0x1391

    if-ne v1, p1, :cond_268

    :try_start_251
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->G:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_25e} :catch_260

    goto/16 :goto_e

    :catch_260
    move-exception v1

    const-string v1, "set max single point max in spectral Error. 5009 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_268
    const/16 v1, 0x1392

    if-ne v1, p1, :cond_283

    :try_start_26c
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->H:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_26c .. :try_end_279} :catch_27b

    goto/16 :goto_e

    :catch_27b
    move-exception v1

    const-string v1, "set gloable noise to signal value threshold Error. 5010 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_283
    const/16 v1, 0x1393

    if-ne v1, p1, :cond_29e

    :try_start_287
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->I:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_287 .. :try_end_294} :catch_296

    goto/16 :goto_e

    :catch_296
    move-exception v1

    const-string v1, "set gloable noise to signal value threshold for vowel part Error. 5011 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_29e
    const/16 v1, 0x1394

    if-ne v1, p1, :cond_2b9

    :try_start_2a2
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->J:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_2af
    .catch Ljava/lang/Exception; {:try_start_2a2 .. :try_end_2af} :catch_2b1

    goto/16 :goto_e

    :catch_2b1
    move-exception v1

    const-string v1, "set voice freq domain prob Th Error. 5012 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2b9
    const/16 v1, 0x1395

    if-ne v1, p1, :cond_2d4

    :try_start_2bd
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->K:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_2bd .. :try_end_2ca} :catch_2cc

    goto/16 :goto_e

    :catch_2cc
    move-exception v1

    const-string v1, "set use pitch or peak Error. 5013 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2d4
    const/16 v1, 0x1396

    if-ne v1, p1, :cond_2ef

    :try_start_2d8
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->L:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_2e5} :catch_2e7

    goto/16 :goto_e

    :catch_2e7
    move-exception v1

    const-string v1, "set noise to y ratio, start point in freq domain Error. 5014 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_2ef
    const/16 v1, 0x1399

    if-ne v1, p1, :cond_30a

    :try_start_2f3
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, v1, Lcom/unisound/sdk/w;->M:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_300} :catch_302

    goto/16 :goto_e

    :catch_302
    move-exception v1

    const-string v1, "set PITCHLASTTH Error. 5017 "

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_30a
    const/16 v1, 0x139d

    if-ne v1, p1, :cond_31f

    :try_start_30e
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/w;->n(Ljava/lang/String;)V
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_315} :catch_317

    goto/16 :goto_e

    :catch_317
    move-exception v1

    const-string v1, "set activate info Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_31f
    const/16 v1, 0x3f8

    if-ne v1, p1, :cond_338

    :try_start_323
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->b(F)V
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_323 .. :try_end_32e} :catch_330

    goto/16 :goto_e

    :catch_330
    move-exception v1

    const-string v1, "set vad musicth info Error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_338
    const/16 v1, 0x3f7

    if-ne v1, p1, :cond_351

    :try_start_33c
    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/unisound/sdk/w;->m(Z)V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_347} :catch_349

    goto/16 :goto_e

    :catch_349
    move-exception v1

    const-string v1, "set vad detectMusic Error!"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_351
    const v1, 0x1330435

    if-ne v1, p1, :cond_e

    :try_start_356
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/unisound/common/y;->l:Z
    :try_end_35e
    .catch Ljava/lang/Exception; {:try_start_356 .. :try_end_35e} :catch_360

    goto/16 :goto_e

    :catch_360
    move-exception v1

    const-string v1, "set activate info Error."

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_e
.end method

.method protected start()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->f:Lcom/unisound/sdk/ab;

    iget-object v0, v0, Lcom/unisound/sdk/ab;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/o;->start(Ljava/lang/String;)V

    return-void
.end method

.method protected start(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/o;->b()V

    iput-object v0, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iput-object v0, p0, Lcom/unisound/sdk/o;->d:Lcom/unisound/sdk/aa;

    iget-boolean v0, p0, Lcom/unisound/sdk/o;->p:Z

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/unisound/sdk/ax;->n()V

    iget-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v0, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    :cond_1c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizerInterface recognizer start"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->g([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    new-instance v1, Lcom/unisound/sdk/ax;

    iget-object v2, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v3, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    iget-object v4, p0, Lcom/unisound/sdk/o;->t:Lcom/unisound/client/IAudioSource;

    invoke-direct {v1, v2, v3, v4}, Lcom/unisound/sdk/ax;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Lcom/unisound/client/IAudioSource;)V

    new-instance v2, Lcom/unisound/sdk/aa;

    iget-object v3, p0, Lcom/unisound/sdk/o;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v5, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-direct {v2, v3, v4, v5}, Lcom/unisound/sdk/aa;-><init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Lcom/unisound/sdk/z;Lcom/unisound/sdk/aa;)V

    :cond_42
    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    iget-object v1, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v1}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/w;->b(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->b()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/unisound/sdk/o;->b:Lcom/unisound/sdk/w;

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/j;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/o;->r:Z

    :cond_65
    return-void
.end method

.method protected stop()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/o;->c:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/o;->p:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->g()V

    :cond_11
    return-void
.end method

.method protected t()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->u()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected u()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->v()I

    move-result v0

    return v0
.end method

.method protected v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->y()I

    move-result v0

    return v0
.end method

.method protected y()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/o;->e:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->z()I

    move-result v0

    return v0
.end method
