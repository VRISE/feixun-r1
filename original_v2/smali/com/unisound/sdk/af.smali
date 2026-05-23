.class public Lcom/unisound/sdk/af;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Lcom/unisound/sdk/ag;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/ag;Landroid/os/Looper;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/unisound/sdk/af;->a:I

    iput-boolean v1, p0, Lcom/unisound/sdk/af;->c:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/af;->d:Z

    iput-object p1, p0, Lcom/unisound/sdk/af;->b:Lcom/unisound/sdk/ag;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/af;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/sdk/af;->a:I

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/af;->c:Z

    return v0
.end method

.method public c()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/unisound/sdk/af;->e()V

    iget v0, p0, Lcom/unisound/sdk/af;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/unisound/sdk/af;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v2, p0, Lcom/unisound/sdk/af;->c:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/af;->d:Z

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "OnTimer:start"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/unisound/sdk/af;->e()V

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unisound/sdk/af;->d:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p0}, Lcom/unisound/sdk/af;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/unisound/sdk/af;->d:Z

    :cond_a
    iput-boolean v1, p0, Lcom/unisound/sdk/af;->c:Z

    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/af;->c:Z

    iget-boolean v0, p0, Lcom/unisound/sdk/af;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/af;->b:Lcom/unisound/sdk/ag;

    invoke-interface {v0}, Lcom/unisound/sdk/ag;->a()V

    :cond_c
    return-void
.end method
