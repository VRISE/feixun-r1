.class public final Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source "CompositeSequenceableLoader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# instance fields
.field private final loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .registers 2
    .param p1, "loaders"    # [Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 29
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .registers 14
    .param p1, "positionUs"    # J

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 48
    .local v1, "madeProgress":Z
    :cond_1
    const/4 v2, 0x0

    .line 49
    .local v2, "madeProgressThisIteration":Z
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v4

    .line 50
    .local v4, "nextLoadPositionUs":J
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_d

    .line 60
    :goto_c
    return v1

    .line 53
    :cond_d
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v7, v6

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v7, :cond_25

    aget-object v0, v6, v3

    .line 54
    .local v0, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_22

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v8

    or-int/2addr v2, v8

    .line 53
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 58
    .end local v0    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    :cond_25
    or-int/2addr v1, v2

    .line 59
    if-nez v2, :cond_1

    goto :goto_c
.end method

.method public getNextLoadPositionUs()J
    .registers 12

    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    .line 33
    const-wide v4, 0x7fffffffffffffffL

    .line 34
    .local v4, "nextLoadPositionUs":J
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v9, v8

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v9, :cond_1e

    aget-object v0, v8, v1

    .line 35
    .local v0, "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v2

    .line 36
    .local v2, "loaderNextLoadPositionUs":J
    cmp-long v10, v2, v6

    if-eqz v10, :cond_1b

    .line 37
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 34
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 40
    .end local v0    # "loader":Lcom/google/android/exoplayer2/source/SequenceableLoader;
    .end local v2    # "loaderNextLoadPositionUs":J
    :cond_1e
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v4, v8

    if-nez v1, :cond_28

    move-wide v4, v6

    .end local v4    # "nextLoadPositionUs":J
    :cond_28
    return-wide v4
.end method
