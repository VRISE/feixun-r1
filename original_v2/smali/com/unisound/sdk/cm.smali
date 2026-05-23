.class public Lcom/unisound/sdk/cm;
.super Ljava/lang/Thread;


# static fields
.field public static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/unisound/sdk/ck;

.field private e:Lcom/unisound/sdk/cl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x25800

    sput v0, Lcom/unisound/sdk/cm;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/cl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/cm;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/cm;->c:Z

    iput-object p1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    return-void
.end method

.method private b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ck;->a(I)V

    :cond_9
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ck;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private c(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    invoke-interface {v0, p1}, Lcom/unisound/sdk/ck;->b(I)V

    :cond_9
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private e()Lcom/unisound/sdk/ae;
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/unisound/sdk/ae;

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v2}, Lcom/unisound/sdk/cl;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/ae;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->f(Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private f()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/cm;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "NLU processing begin"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/cm;->e()Lcom/unisound/sdk/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->h(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->i(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->k(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/unisound/sdk/ae;->b(J)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->o(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->e:Lcom/unisound/sdk/cl;

    invoke-virtual {v1}, Lcom/unisound/sdk/cl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/cm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/ae;->g(Ljava/lang/String;)V

    new-instance v1, Lcom/unisound/sdk/cj;

    invoke-direct {v1}, Lcom/unisound/sdk/cj;-><init>()V

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/cj;->c(Lcom/unisound/sdk/ae;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/cm;->c:Z

    return-void
.end method

.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/sdk/cm;->c()V

    invoke-virtual {p0}, Lcom/unisound/sdk/cm;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    int-to-long v0, p1

    :try_start_a
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/cm;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "USCNluThread::waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_18
.end method

.method public a(Lcom/unisound/sdk/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/cm;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/cm;->c:Z

    return v0
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/unisound/sdk/cm;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/cm;->d:Lcom/unisound/sdk/ck;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public run()V
    .registers 4

    const v2, -0x1155b

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-boolean v0, p0, Lcom/unisound/sdk/cm;->c:Z

    if-nez v0, :cond_22

    const/16 v0, 0x3ea

    :try_start_c
    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->b(I)V

    invoke-direct {p0}, Lcom/unisound/sdk/cm;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-ne v0, v1, :cond_23

    const v0, -0x1155a

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->c(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_32

    :goto_1d
    const/16 v0, 0x3e9

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->b(I)V

    :cond_22
    return-void

    :cond_23
    :try_start_23
    const-string v1, "{}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const v0, -0x11559

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->c(I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_32

    goto :goto_1d

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/cm;->c(I)V

    goto :goto_1d

    :cond_3a
    :try_start_3a
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const v0, -0x1155b

    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->c(I)V

    goto :goto_1d

    :cond_49
    invoke-direct {p0, v0}, Lcom/unisound/sdk/cm;->b(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_32

    goto :goto_1d
.end method
