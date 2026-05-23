.class public Lcom/unisound/sdk/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/unisound/sdk/al;

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/unisound/sdk/b;->c:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/b;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/sdk/al;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/b;->a:Lcom/unisound/sdk/al;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/sdk/b;->b:I

    return-void
.end method

.method public a(Lcom/unisound/sdk/al;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/b;->a:Lcom/unisound/sdk/al;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/b;->c:Z

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/b;->b:I

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/b;->d:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/b;->c:Z

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/b;->d:Z

    return v0
.end method
