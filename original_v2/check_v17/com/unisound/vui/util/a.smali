.class public abstract Lcom/unisound/vui/util/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/unisound/vui/util/a",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/util/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final name:Ljava/lang/String;

.field private volatile uniquifier:J


# direct methods
.method protected constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unisound/vui/util/a;->id:I

    iput-object p2, p0, Lcom/unisound/vui/util/a;->name:Ljava/lang/String;

    return-void
.end method

.method private uniquifier()J
    .registers 7

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_1e

    monitor-enter p0

    :try_start_9
    iget-wide v0, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    :goto_b
    cmp-long v2, v0, v4

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/unisound/vui/util/internal/d;->b()Lcom/unisound/vui/util/internal/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/unisound/vui/util/internal/d;->nextLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/vui/util/a;->uniquifier:J

    goto :goto_b

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1a

    :cond_1e
    return-wide v0
.end method


# virtual methods
.method public final compareTo(Lcom/unisound/vui/util/a;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    .local p1, "o":Lcom/unisound/vui/util/a;, "TT;"
    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/unisound/vui/util/a;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/vui/util/a;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/unisound/vui/util/a;->uniquifier()J

    move-result-wide v0

    invoke-direct {p1}, Lcom/unisound/vui/util/a;->uniquifier()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1d

    const/4 v0, -0x1

    goto :goto_3

    :cond_1d
    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_3

    :cond_23
    new-instance v0, Ljava/lang/Error;

    const-string v1, "failed to compare two different constants"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    check-cast p1, Lcom/unisound/vui/util/a;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/util/a;->compareTo(Lcom/unisound/vui/util/a;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/a;, "Lcom/unisound/vui/util/a<TT;>;"
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final id()I
    .registers 2

    iget v0, p0, Lcom/unisound/vui/util/a;->id:I

    return v0
.end method

.method public final name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/util/a;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/unisound/vui/util/a;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
