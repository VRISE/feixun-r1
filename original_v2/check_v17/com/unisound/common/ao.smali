.class public Lcom/unisound/common/ao;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "TimerThreadUtils"


# instance fields
.field private b:I

.field private c:Lcom/unisound/common/ap;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/unisound/common/ap;Landroid/os/Looper;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const v0, 0x493e0

    iput v0, p0, Lcom/unisound/common/ao;->b:I

    iput-boolean v1, p0, Lcom/unisound/common/ao;->d:Z

    iput-boolean v1, p0, Lcom/unisound/common/ao;->e:Z

    iput-object p1, p0, Lcom/unisound/common/ao;->c:Lcom/unisound/common/ap;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/ao;->b:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/ao;->b:I

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/ao;->d:Z

    return v0
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/ao;->e()V

    iget v0, p0, Lcom/unisound/common/ao;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/unisound/common/ao;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/ao;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/ao;->e:Z

    return-void
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/unisound/common/ao;->e()V

    return-void
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/unisound/common/ao;->e:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p0}, Lcom/unisound/common/ao;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/unisound/common/ao;->e:Z

    :cond_a
    iput-boolean v1, p0, Lcom/unisound/common/ao;->d:Z

    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/ao;->d:Z

    iget-boolean v0, p0, Lcom/unisound/common/ao;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/common/ao;->c:Lcom/unisound/common/ap;

    invoke-interface {v0}, Lcom/unisound/common/ap;->a()V

    :cond_c
    return-void
.end method
