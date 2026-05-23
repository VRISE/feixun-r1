.class public Lcom/unisound/sdk/av;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/common/ah;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/common/ah;->a(I)V

    :cond_7
    return-void
.end method

.method public a(Lcom/unisound/common/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

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

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/common/ah;->a()V

    :cond_7
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/common/ah;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/common/ah;->b()V

    :cond_7
    return-void
.end method
