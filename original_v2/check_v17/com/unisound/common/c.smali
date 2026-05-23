.class public Lcom/unisound/common/c;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/unisound/common/d;

.field final synthetic b:Lcom/unisound/common/b;


# direct methods
.method public constructor <init>(Lcom/unisound/common/b;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/common/c;->b:Lcom/unisound/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/common/d;->a()V

    :cond_7
    return-void
.end method

.method a(Lcom/unisound/common/d;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/common/d;->b()V

    :cond_7
    return-void
.end method

.method c()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/c;->a:Lcom/unisound/common/d;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/common/d;->c()V

    :cond_7
    return-void
.end method
