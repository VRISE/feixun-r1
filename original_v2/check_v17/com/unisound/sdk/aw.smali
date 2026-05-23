.class public Lcom/unisound/sdk/aw;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/unisound/sdk/aw;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/aw;->b:I

    iput-boolean v1, p0, Lcom/unisound/sdk/aw;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/aw;->a:I

    return-void
.end method

.method public a(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/sdk/aw;->a()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/aw;->c:Z

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/aw;->c:Z

    mul-int/lit8 v0, p1, 0x20

    iput v0, p0, Lcom/unisound/sdk/aw;->b:I

    goto :goto_9
.end method

.method public a(ZI)Z
    .registers 5

    if-eqz p1, :cond_13

    iget-boolean v0, p0, Lcom/unisound/sdk/aw;->c:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/unisound/sdk/aw;->a:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/unisound/sdk/aw;->a:I

    iget v0, p0, Lcom/unisound/sdk/aw;->a:I

    iget v1, p0, Lcom/unisound/sdk/aw;->b:I

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
