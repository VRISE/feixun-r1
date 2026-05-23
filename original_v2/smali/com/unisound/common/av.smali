.class public Lcom/unisound/common/av;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unisound/common/av;->a:I

    iput v0, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/unisound/common/av;->a:I

    iput v0, p0, Lcom/unisound/common/av;->b:I

    iput p2, p0, Lcom/unisound/common/av;->a:I

    iput p1, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/av;->b:I

    return-void
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lcom/unisound/common/av;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Lcom/unisound/common/aw;
    .registers 2

    iget v0, p0, Lcom/unisound/common/av;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unisound/common/aw;->a:Lcom/unisound/common/aw;

    :goto_8
    return-object v0

    :cond_9
    iget v0, p0, Lcom/unisound/common/av;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    sget-object v0, Lcom/unisound/common/aw;->b:Lcom/unisound/common/aw;

    goto :goto_8

    :cond_12
    sget-object v0, Lcom/unisound/common/aw;->c:Lcom/unisound/common/aw;

    goto :goto_8
.end method
