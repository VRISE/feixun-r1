.class public final Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;
.super Ljava/lang/Object;
.source "ParsableNalUnitBitArray.java"


# instance fields
.field private bitOffset:I

.field private byteLimit:I

.field private byteOffset:I

.field private data:[B


# direct methods
.method public constructor <init>([BII)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->reset([BII)V

    .line 40
    return-void
.end method

.method private assertValidOffset()V
    .registers 3

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-ltz v0, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v0, v1, :cond_1e

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-nez v0, :cond_23

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 225
    return-void

    .line 222
    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private readExpGolombCodeNum()I
    .registers 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "leadingZeros":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_a

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 212
    :cond_a
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    if-lez v0, :cond_16

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    :goto_14
    add-int/2addr v1, v2

    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private shouldSkipByte(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 216
    const/4 v0, 0x2

    if-gt v0, p1, :cond_20

    iget v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge p1, v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x2

    aget-byte v0, v0, v1

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    add-int/lit8 v1, p1, -0x1

    aget-byte v0, v0, v1

    if-nez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public canReadBits(I)Z
    .registers 8
    .param p1, "n"    # I

    .prologue
    .line 88
    iget v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 89
    .local v3, "oldByteOffset":I
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v5, p1, 0x8

    add-int v2, v4, v5

    .line 90
    .local v2, "newByteOffset":I
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v5, p1, 0x8

    add-int v1, v4, v5

    .line 91
    .local v1, "newBitOffset":I
    const/4 v4, 0x7

    if-le v1, v4, :cond_15

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    add-int/lit8 v1, v1, -0x8

    .line 95
    :cond_15
    add-int/lit8 v0, v3, 0x1

    .local v0, "i":I
    :goto_17
    if-gt v0, v2, :cond_2a

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v2, v4, :cond_2a

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 98
    add-int/lit8 v2, v2, 0x1

    .line 99
    add-int/lit8 v0, v0, 0x2

    .line 95
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 102
    :cond_2a
    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-lt v2, v4, :cond_34

    iget v4, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v2, v4, :cond_36

    if-nez v1, :cond_36

    :cond_34
    const/4 v4, 0x1

    :goto_35
    return v4

    :cond_36
    const/4 v4, 0x0

    goto :goto_35
.end method

.method public canReadExpGolombCodedNum()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 176
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 177
    .local v2, "initialByteOffset":I
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 178
    .local v1, "initialBitOffset":I
    const/4 v3, 0x0

    .line 179
    .local v3, "leadingZeros":I
    :goto_7
    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ge v6, v7, :cond_16

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_16

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 182
    :cond_16
    iget v6, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    if-ne v6, v7, :cond_2e

    move v0, v4

    .line 183
    .local v0, "hitLimit":Z
    :goto_1d
    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 184
    iput v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 185
    if-nez v0, :cond_30

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-eqz v6, :cond_30

    :goto_2d
    return v4

    .end local v0    # "hitLimit":Z
    :cond_2e
    move v0, v5

    .line 182
    goto :goto_1d

    .restart local v0    # "hitLimit":Z
    :cond_30
    move v4, v5

    .line 185
    goto :goto_2d
.end method

.method public readBit()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public readBits(I)I
    .registers 13
    .param p1, "numBits"    # I

    .prologue
    const/16 v10, 0x8

    .line 121
    if-nez p1, :cond_6

    .line 122
    const/4 v4, 0x0

    .line 166
    :goto_5
    return v4

    .line 125
    :cond_6
    const/4 v4, 0x0

    .line 128
    .local v4, "returnValue":I
    div-int/lit8 v5, p1, 0x8

    .line 129
    .local v5, "wholeBytes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v5, :cond_4d

    .line 130
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v7

    if-eqz v7, :cond_41

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x2

    .line 132
    .local v3, "nextByteOffset":I
    :goto_1a
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    if-eqz v7, :cond_46

    .line 133
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    shl-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    iget v9, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rsub-int/lit8 v9, v9, 0x8

    ushr-int/2addr v8, v9

    or-int v0, v7, v8

    .line 138
    .local v0, "byteValue":I
    :goto_36
    add-int/lit8 p1, p1, -0x8

    .line 139
    and-int/lit16 v7, v0, 0xff

    shl-int/2addr v7, p1

    or-int/2addr v4, v7

    .line 140
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 130
    .end local v0    # "byteValue":I
    .end local v3    # "nextByteOffset":I
    :cond_41
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x1

    goto :goto_1a

    .line 136
    .restart local v3    # "nextByteOffset":I
    :cond_46
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v0, v7, v8

    .restart local v0    # "byteValue":I
    goto :goto_36

    .line 144
    .end local v0    # "byteValue":I
    .end local v3    # "nextByteOffset":I
    :cond_4d
    if-lez p1, :cond_86

    .line 145
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int v2, v7, p1

    .line 146
    .local v2, "nextBit":I
    const/16 v7, 0xff

    rsub-int/lit8 v8, p1, 0x8

    shr-int/2addr v7, v8

    int-to-byte v6, v7

    .line 147
    .local v6, "writeMask":B
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v7

    if-eqz v7, :cond_8b

    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x2

    .line 149
    .restart local v3    # "nextByteOffset":I
    :goto_67
    if-le v2, v10, :cond_90

    .line 151
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, -0x8

    shl-int/2addr v7, v8

    iget-object v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    aget-byte v8, v8, v3

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v2, 0x10

    shr-int/2addr v8, v9

    or-int/2addr v7, v8

    and-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 153
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 162
    :cond_82
    :goto_82
    rem-int/lit8 v7, v2, 0x8

    iput v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 165
    .end local v2    # "nextBit":I
    .end local v3    # "nextByteOffset":I
    .end local v6    # "writeMask":B
    :cond_86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    goto/16 :goto_5

    .line 147
    .restart local v2    # "nextBit":I
    .restart local v6    # "writeMask":B
    :cond_8b
    iget v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v3, v7, 0x1

    goto :goto_67

    .line 156
    .restart local v3    # "nextByteOffset":I
    :cond_90
    iget-object v7, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    iget v8, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v2, 0x8

    shr-int/2addr v7, v8

    and-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 157
    if-ne v2, v10, :cond_82

    .line 158
    iput v3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    goto :goto_82
.end method

.method public readSignedExpGolombCodedInt()I
    .registers 4

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    .line 204
    .local v0, "codeNum":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_f

    const/4 v1, -0x1

    :goto_9
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v1, v2

    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public readUnsignedExpGolombCodedInt()I
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->readExpGolombCodeNum()I

    move-result v0

    return v0
.end method

.method public reset([BII)V
    .registers 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "limit"    # I

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->data:[B

    .line 51
    iput p2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 52
    iput p3, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteLimit:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 54
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 55
    return-void
.end method

.method public skipBits(I)V
    .registers 6
    .param p1, "n"    # I

    .prologue
    .line 63
    iget v1, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 64
    .local v1, "oldByteOffset":I
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    div-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 65
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    rem-int/lit8 v3, p1, 0x8

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 66
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_21

    .line 67
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 68
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    add-int/lit8 v2, v2, -0x8

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->bitOffset:I

    .line 70
    :cond_21
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_23
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    if-gt v0, v2, :cond_38

    .line 71
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->shouldSkipByte(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 73
    iget v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->byteOffset:I

    .line 74
    add-int/lit8 v0, v0, 0x2

    .line 70
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 77
    :cond_38
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/ParsableNalUnitBitArray;->assertValidOffset()V

    .line 78
    return-void
.end method
