.class Lcom/unisound/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/sdk/ar;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/o;


# direct methods
.method private constructor <init>(Lcom/unisound/sdk/o;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/sdk/o;Lcom/unisound/sdk/p;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/t;-><init>(Lcom/unisound/sdk/o;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    invoke-virtual {v0}, Lcom/unisound/sdk/av;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->l()V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/o;->b(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/o;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FixRecognizerInterface onVADTimeout"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/o;->a(Lcn/yunzhisheng/asr/VAD;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZII)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/a;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/o;->a(Ljava/lang/String;ZII)V

    return-void
.end method

.method public a(Ljava/lang/String;ZIJJII)V
    .registers 20

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/unisound/sdk/o;->a(Ljava/lang/String;ZIJJII)V

    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/o;->a(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->m()V

    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/o;->c(I)V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/av;->a(I)V

    return-void
.end method

.method public b(Z[BII)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/o;->a(Z[BII)V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->k:Lcom/unisound/sdk/av;

    invoke-virtual {v0}, Lcom/unisound/sdk/av;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->n()V

    return-void
.end method

.method public c(I)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->o()V

    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/o;->a(I)V

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->p()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->j()V

    return-void
.end method

.method public n()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    iget-object v0, v0, Lcom/unisound/sdk/o;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->h()V

    return-void
.end method

.method public o()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/t;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->i()V

    return-void
.end method
