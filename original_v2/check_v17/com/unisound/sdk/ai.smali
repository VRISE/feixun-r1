.class public Lcom/unisound/sdk/ai;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unisound/sdk/ai;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ai;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ai;->b:Z

    return-void
.end method

.method public a([BII)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/unisound/sdk/ai;->b:Z

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/unisound/sdk/ai;->a:Z

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_b
    if-ge p2, p3, :cond_16

    aget-byte v3, p1, p2

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_b

    :cond_16
    if-le v0, v1, :cond_1c

    iput-boolean v2, p0, Lcom/unisound/sdk/ai;->b:Z

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    move v0, v2

    goto :goto_1b
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/ai;->b:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/unisound/sdk/ai;->a:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
