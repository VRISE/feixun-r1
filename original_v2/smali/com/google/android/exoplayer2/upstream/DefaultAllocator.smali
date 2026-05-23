.class public final Lcom/google/android/exoplayer2/upstream/DefaultAllocator;
.super Ljava/lang/Object;
.source "DefaultAllocator.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Allocator;


# static fields
.field private static final AVAILABLE_EXTRA_CAPACITY:I = 0x64


# instance fields
.field private allocatedCount:I

.field private availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private availableCount:I

.field private final individualAllocationSize:I

.field private final initialAllocationBlock:[B

.field private final singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

.field private targetBufferSize:I

.field private final trimOnReset:Z


# direct methods
.method public constructor <init>(ZI)V
    .registers 4
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;-><init>(ZII)V

    .line 48
    return-void
.end method

.method public constructor <init>(ZII)V
    .registers 10
    .param p1, "trimOnReset"    # Z
    .param p2, "individualAllocationSize"    # I
    .param p3, "initialAllocationCount"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-lez p2, :cond_38

    move v2, v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 63
    if-ltz p3, :cond_e

    move v4, v3

    :cond_e
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 64
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    .line 65
    iput p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    .line 66
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    .line 67
    add-int/lit8 v2, p3, 0x64

    new-array v2, v2, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 68
    if-lez p3, :cond_3a

    .line 69
    mul-int v2, p3, p2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    if-ge v1, p3, :cond_3d

    .line 71
    mul-int v0, v1, p2

    .line 72
    .local v0, "allocationOffset":I
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    new-instance v4, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    invoke-direct {v4, v5, v0}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V

    aput-object v4, v2, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .end local v0    # "allocationOffset":I
    .end local v1    # "i":I
    :cond_38
    move v2, v4

    .line 62
    goto :goto_8

    .line 75
    :cond_3a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    .line 77
    :cond_3d
    new-array v2, v3, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate()Lcom/google/android/exoplayer2/upstream/Allocation;
    .registers 5

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 98
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-lez v1, :cond_1e

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aget-object v0, v1, v2

    .line 100
    .local v0, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v3, 0x0

    aput-object v3, v1, v2
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_29

    .line 104
    :goto_1c
    monitor-exit p0

    return-object v0

    .line 102
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Allocation;-><init>([BI)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_29

    .restart local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    goto :goto_1c

    .line 96
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIndividualAllocationLength()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    return v0
.end method

.method public declared-synchronized getTotalBytesAllocated()I
    .registers 3

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    mul-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release(Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .registers 4
    .param p1, "allocation"    # Lcom/google/android/exoplayer2/upstream/Allocation;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 110
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->singleAllocationReleaseHolder:[Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 111
    monitor-exit p0

    return-void

    .line 109
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release([Lcom/google/android/exoplayer2/upstream/Allocation;)V
    .registers 9
    .param p1, "allocations"    # [Lcom/google/android/exoplayer2/upstream/Allocation;

    .prologue
    const/4 v2, 0x0

    .line 115
    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v3, p1

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v3, v3

    if-lt v1, v3, :cond_22

    .line 116
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    array-length v5, p1

    add-int/2addr v4, v5

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 116
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/exoplayer2/upstream/Allocation;

    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    .line 119
    :cond_22
    array-length v4, p1

    move v3, v2

    :goto_24
    if-ge v3, v4, :cond_49

    aget-object v0, p1, v3

    .line 121
    .local v0, "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v1, v5, :cond_35

    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    array-length v1, v1

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    if-ne v1, v5, :cond_47

    :cond_35
    const/4 v1, 0x1

    :goto_36
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 123
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    aput-object v0, v1, v5

    .line 119
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_24

    :cond_47
    move v1, v2

    .line 121
    goto :goto_36

    .line 125
    .end local v0    # "allocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    :cond_49
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    array-length v2, p1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_54

    .line 128
    monitor-exit p0

    return-void

    .line 115
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trimOnReset:Z

    if-eqz v0, :cond_9

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->setTargetBufferSize(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 84
    :cond_9
    monitor-exit p0

    return-void

    .line 81
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetBufferSize(I)V
    .registers 4
    .param p1, "targetBufferSize"    # I

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    if-ge p1, v1, :cond_f

    const/4 v0, 0x1

    .line 88
    .local v0, "targetBufferSizeReduced":Z
    :goto_6
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    .line 89
    if-eqz v0, :cond_d

    .line 90
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->trim()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    .line 92
    :cond_d
    monitor-exit p0

    return-void

    .line 87
    .end local v0    # "targetBufferSizeReduced":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_6

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized trim()V
    .registers 12

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->targetBufferSize:I

    iget v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->individualAllocationSize:I

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    .line 133
    .local v6, "targetAllocationCount":I
    const/4 v8, 0x0

    iget v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->allocatedCount:I

    sub-int v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 134
    .local v7, "targetAvailableCount":I
    iget v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_50

    if-lt v7, v8, :cond_18

    .line 170
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 139
    :cond_18
    :try_start_18
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eqz v8, :cond_5b

    .line 143
    const/4 v4, 0x0

    .line 144
    .local v4, "lowIndex":I
    iget v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    add-int/lit8 v1, v8, -0x1

    .local v1, "highIndex":I
    move v2, v1

    .end local v1    # "highIndex":I
    .local v2, "highIndex":I
    move v5, v4

    .line 145
    .end local v4    # "lowIndex":I
    .local v5, "lowIndex":I
    :goto_23
    if-gt v5, v2, :cond_53

    .line 146
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v3, v8, v5

    .line 147
    .local v3, "lowAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v8, v3, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-ne v8, v9, :cond_35

    .line 148
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    move v1, v2

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    :goto_32
    move v2, v1

    .end local v1    # "highIndex":I
    .restart local v2    # "highIndex":I
    move v5, v4

    .line 158
    .end local v4    # "lowIndex":I
    .restart local v5    # "lowIndex":I
    goto :goto_23

    .line 150
    :cond_35
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    aget-object v0, v8, v2

    .line 151
    .local v0, "highAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->initialAllocationBlock:[B

    if-eq v8, v9, :cond_43

    .line 152
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    move v4, v5

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    goto :goto_32

    .line 154
    .end local v1    # "highIndex":I
    .end local v4    # "lowIndex":I
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    :cond_43
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "lowIndex":I
    .restart local v4    # "lowIndex":I
    aput-object v0, v8, v5

    .line 155
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "highIndex":I
    .restart local v1    # "highIndex":I
    aput-object v3, v8, v2
    :try_end_4f
    .catchall {:try_start_18 .. :try_end_4f} :catchall_50

    goto :goto_32

    .line 132
    .end local v0    # "highAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v1    # "highIndex":I
    .end local v3    # "lowAllocation":Lcom/google/android/exoplayer2/upstream/Allocation;
    .end local v4    # "lowIndex":I
    .end local v6    # "targetAllocationCount":I
    .end local v7    # "targetAvailableCount":I
    :catchall_50
    move-exception v8

    monitor-exit p0

    throw v8

    .line 160
    .restart local v2    # "highIndex":I
    .restart local v5    # "lowIndex":I
    .restart local v6    # "targetAllocationCount":I
    .restart local v7    # "targetAvailableCount":I
    :cond_53
    :try_start_53
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 161
    iget v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    if-ge v7, v8, :cond_16

    .line 168
    .end local v2    # "highIndex":I
    .end local v5    # "lowIndex":I
    :cond_5b
    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableAllocations:[Lcom/google/android/exoplayer2/upstream/Allocation;

    iget v9, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I

    const/4 v10, 0x0

    invoke-static {v8, v7, v9, v10}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 169
    iput v7, p0, Lcom/google/android/exoplayer2/upstream/DefaultAllocator;->availableCount:I
    :try_end_65
    .catchall {:try_start_53 .. :try_end_65} :catchall_50

    goto :goto_16
.end method
