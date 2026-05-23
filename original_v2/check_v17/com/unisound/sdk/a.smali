.class public Lcom/unisound/sdk/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/b;

.field private b:Lcom/unisound/common/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iput-object v0, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->b(I)V

    :cond_7
    return-void
.end method

.method public a(Lcom/unisound/common/b;)V
    .registers 4

    iput-object p1, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    iget-object v1, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    invoke-virtual {v0, v1}, Lcom/unisound/common/b;->a(Lcom/unisound/common/d;)V

    :cond_d
    return-void
.end method

.method public a(Lcom/unisound/common/d;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->a(Lcom/unisound/common/d;)V

    :cond_9
    iput-object p1, p0, Lcom/unisound/sdk/a;->b:Lcom/unisound/common/d;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/unisound/common/b;->a(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->f()V

    :cond_7
    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/unisound/common/b;->a(I)V

    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->g()V

    :cond_7
    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->h()V

    :cond_7
    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->d()V

    :cond_7
    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->i()V

    :cond_7
    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/a;->a:Lcom/unisound/common/b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unisound/common/b;->e()V

    :cond_7
    return-void
.end method
