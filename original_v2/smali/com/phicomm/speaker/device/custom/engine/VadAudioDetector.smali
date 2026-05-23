.class public Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;
.super Ljava/lang/Object;
.source "VadAudioDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;,
        Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final CONTINUOUS_SILENCE_RESET_MS:J = 0x4b0L

.field private static final CUMULATIVE_SPEECH_MS:J = 0xbb8L

.field private static final ENERGY_THRESHOLD:I = 0x5

.field private static final FRAME_BYTES:I = 0x280

.field private static final FRAME_SIZE_MS:I = 0x14

.field private static final IDLE_TIMEOUT_MS:J = 0xea60L

.field private static final MAX_BUFFER_BYTES:I = 0x75300

.field private static final MAX_BUFFER_SECONDS:I = 0xf

.field private static final SAMPLE_RATE:I = 0x3e80

.field private static final SILENCE_TRIGGER_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "VadAudioDetector"

.field private static final TAIL_PADDING_MS:J = 0x12cL


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private final circularBuffer:[B

.field private cumulativeSpeechMs:J

.field private energyDiagCount:I

.field private energyDiagOverThreshold:I

.field private energyDiagPeak:I

.field private energyDiagSum:J

.field private energyDiagWindowStartMs:J

.field private idleDurationMs:J

.field private lastFrameTimestamp:J

.field private final listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

.field private volatile recordingFailed:Z

.field private recordingThread:Ljava/lang/Thread;

.field private silenceDurationMs:J

.field private speechStartTotal:J

.field private volatile state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field private volatile successFrameCount:I

.field private totalWritten:I

.field private writePos:I


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;)V
    .registers 8
    .param p1, "listener"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 52
    iput-boolean v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    .line 54
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->successFrameCount:I

    .line 57
    const v0, 0x75300

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    .line 58
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    .line 59
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    .line 62
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    .line 63
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    .line 64
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->lastFrameTimestamp:J

    .line 66
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    .line 71
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    .line 72
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    .line 73
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    .line 74
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    .line 75
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    .line 78
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingLoop()V

    return-void
.end method

.method private addToBuffer([BI)V
    .registers 9
    .param p1, "frame"    # [B
    .param p2, "bytesRead"    # I

    .prologue
    const/4 v5, 0x0

    .line 409
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    sub-int v1, v2, v3

    .line 410
    .local v1, "remaining":I
    if-gt p2, v1, :cond_1c

    .line 411
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    iget v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    invoke-static {p1, v5, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    .line 429
    iget v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    .line 430
    :goto_1b
    return-void

    .line 414
    :cond_1c
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    iget v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    invoke-static {p1, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    sub-int v0, p2, v1

    .line 416
    .local v0, "overflow":I
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v2, v2

    if-gt v0, v2, :cond_37

    .line 417
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    invoke-static {p1, v1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    iput v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    .line 419
    iget v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    goto :goto_1b

    .line 423
    :cond_37
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v2, v2

    sub-int v2, p2, v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v4, v4

    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    .line 425
    iput p2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    goto :goto_1b
.end method

.method private computeEnergy([BI)I
    .registers 15
    .param p1, "pcmData"    # [B
    .param p2, "length"    # I

    .prologue
    .line 390
    const/4 v5, 0x0

    .line 391
    .local v5, "sum":F
    div-int/lit8 v4, p2, 0x2

    .line 393
    .local v4, "sampleCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p2, :cond_29

    .line 394
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int v3, v6, v7

    .line 395
    .local v3, "sample":I
    const v6, 0x8000

    if-lt v3, v6, :cond_27

    const v6, 0xffff

    sub-int v0, v6, v3

    .line 396
    .local v0, "absVal":I
    :goto_1e
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 393
    add-int/lit8 v2, v2, 0x2

    goto :goto_4

    .end local v0    # "absVal":I
    :cond_27
    move v0, v3

    .line 395
    goto :goto_1e

    .line 399
    .end local v3    # "sample":I
    :cond_29
    if-nez v4, :cond_2d

    const/4 v1, 0x0

    .line 405
    :cond_2c
    :goto_2c
    return v1

    .line 402
    :cond_2d
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    int-to-float v9, p2

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 403
    .local v1, "energy":I
    if-gez v1, :cond_47

    const/4 v1, 0x0

    .line 404
    :cond_47
    const/16 v6, 0x64

    if-le v1, v6, :cond_2c

    const/16 v1, 0x64

    goto :goto_2c
.end method

.method private getBufferedData()[B
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 433
    iget v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 434
    .local v0, "actualLength":I
    new-array v3, v0, [B

    .line 436
    .local v3, "result":[B
    if-nez v0, :cond_f

    .line 450
    :goto_e
    return-object v3

    .line 440
    :cond_f
    iget v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    sub-int/2addr v4, v0

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v5, v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v5, v5

    rem-int v2, v4, v5

    .line 442
    .local v2, "readStart":I
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v5, v5

    if-gt v4, v5, :cond_28

    .line 443
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    invoke-static {v4, v2, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    .line 445
    :cond_28
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 446
    .local v1, "firstPart":I
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    invoke-static {v4, v2, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    sub-int v5, v0, v1

    invoke-static {v4, v6, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e
.end method

.method private getSpeechSegment()[B
    .registers 15

    .prologue
    .line 354
    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    iget-wide v12, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    add-long/2addr v10, v12

    const-wide/16 v12, 0x12c

    add-long v8, v10, v12

    .line 355
    .local v8, "usefulMs":J
    const-wide/16 v10, 0x3e80

    mul-long/2addr v10, v8

    const-wide/16 v12, 0x2

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 358
    .local v6, "usefulBytes":J
    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_26

    .line 360
    move-wide v4, v6

    .line 369
    .local v4, "segmentLen":J
    :cond_1c
    :goto_1c
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_55

    const/4 v10, 0x0

    new-array v3, v10, [B

    .line 385
    :goto_25
    return-object v3

    .line 362
    .end local v4    # "segmentLen":J
    :cond_26
    iget v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    int-to-long v10, v10

    iget-wide v12, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    sub-long v4, v10, v12

    .line 364
    .restart local v4    # "segmentLen":J
    cmp-long v10, v4, v6

    if-lez v10, :cond_1c

    .line 365
    const-string v10, "VadAudioDetector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "segment clamped: from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    move-wide v4, v6

    goto :goto_1c

    .line 370
    :cond_55
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v10, v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-lez v10, :cond_61

    .line 371
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v10, v10

    int-to-long v4, v10

    .line 373
    :cond_61
    long-to-int v1, v4

    .line 374
    .local v1, "len":I
    new-array v3, v1, [B

    .line 377
    .local v3, "result":[B
    iget v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v11, v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v11, v11

    rem-int v2, v10, v11

    .line 378
    .local v2, "readStart":I
    add-int v10, v2, v1

    iget-object v11, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v11, v11

    if-gt v10, v11, :cond_7e

    .line 379
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    const/4 v11, 0x0

    invoke-static {v10, v2, v3, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25

    .line 381
    :cond_7e
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    array-length v10, v10

    sub-int v0, v10, v2

    .line 382
    .local v0, "firstPart":I
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    const/4 v11, 0x0

    invoke-static {v10, v2, v3, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    iget-object v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->circularBuffer:[B

    const/4 v11, 0x0

    sub-int v12, v1, v0

    invoke-static {v10, v11, v3, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_25
.end method

.method private notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V
    .registers 6
    .param p1, "oldState"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .param p2, "newState"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .prologue
    .line 454
    const-string v0, "VadAudioDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    if-eqz v0, :cond_2b

    .line 456
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;->onStateChanged(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    .line 458
    :cond_2b
    return-void
.end method

.method private processFrame([BI)V
    .registers 15
    .param p1, "frame"    # [B
    .param p2, "bytesRead"    # I

    .prologue
    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 240
    .local v4, "now":J
    int-to-long v8, p2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x7d00

    div-long v2, v8, v10

    .line 243
    .local v2, "frameDurationMs":J
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->computeEnergy([BI)I

    move-result v1

    .line 246
    .local v1, "energy":I
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1a

    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    .line 247
    :cond_1a
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    int-to-long v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    .line 248
    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    .line 249
    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    if-le v1, v7, :cond_2c

    iput v1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    .line 250
    :cond_2c
    const/4 v7, 0x5

    if-lt v1, v7, :cond_35

    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    .line 251
    :cond_35
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_b3

    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    if-lez v7, :cond_b3

    .line 252
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    int-to-long v10, v7

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 253
    .local v0, "avg":I
    const-string v7, "VadAudioDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ENERGY] avg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " peak="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " overThreshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cumSpeech="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    .line 257
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    .line 258
    const/4 v7, 0x0

    iput v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    .line 259
    const/4 v7, 0x0

    iput v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    .line 260
    const/4 v7, 0x0

    iput v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    .line 264
    .end local v0    # "avg":I
    :cond_b3
    invoke-direct {p0, p1, p2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->addToBuffer([BI)V

    .line 266
    monitor-enter p0

    .line 267
    :try_start_b7
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-ne v7, v8, :cond_bf

    .line 268
    monitor-exit p0

    .line 326
    :goto_be
    return-void

    .line 271
    :cond_bf
    const/4 v7, 0x5

    if-lt v1, v7, :cond_113

    .line 273
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    .line 274
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    .line 275
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    .line 277
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    const-wide/16 v10, 0xbb8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_ef

    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-eq v7, v8, :cond_ef

    .line 279
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 280
    .local v6, "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 281
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v6, v7}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    .line 324
    .end local v6    # "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :cond_e8
    :goto_e8
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->lastFrameTimestamp:J

    .line 325
    monitor-exit p0

    goto :goto_be

    :catchall_ec
    move-exception v7

    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_b7 .. :try_end_ee} :catchall_ec

    throw v7

    .line 282
    :cond_ef
    :try_start_ef
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-ne v7, v8, :cond_e8

    .line 284
    iget v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    sub-int/2addr v7, p2

    int-to-long v8, v7

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    .line 285
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_107

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    .line 286
    :cond_107
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 287
    .restart local v6    # "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 288
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v6, v7}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    goto :goto_e8

    .line 292
    .end local v6    # "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :cond_113
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    .line 294
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-ne v7, v8, :cond_12b

    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    const-wide/16 v10, 0x3e8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_12b

    .line 296
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->trigger()V

    .line 297
    monitor-exit p0

    goto :goto_be

    .line 300
    :cond_12b
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-ne v7, v8, :cond_167

    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    const-wide/16 v10, 0x4b0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_167

    .line 302
    const-string v7, "VadAudioDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Speech not enough ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms), resetting"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->resetState()V

    .line 304
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 305
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v7, v8}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    .line 309
    :cond_167
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v8, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-ne v7, v8, :cond_e8

    .line 310
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    .line 311
    iget-wide v8, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-ltz v7, :cond_e8

    .line 312
    const-string v7, "VadAudioDetector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Idle timeout ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms), releasing MIC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v6, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 314
    .restart local v6    # "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 315
    sget-object v7, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v6, v7}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    .line 316
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    if-eqz v7, :cond_1af

    .line 317
    iget-object v7, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    invoke-interface {v7}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;->onIdleTimeout()V

    .line 319
    :cond_1af
    monitor-exit p0
    :try_end_1b0
    .catchall {:try_start_ef .. :try_end_1b0} :catchall_ec

    goto/16 :goto_be
.end method

.method private recordingLoop()V
    .registers 8

    .prologue
    const/16 v4, 0x280

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 197
    new-array v2, v4, [B

    .line 198
    .local v2, "frame":[B
    iput-boolean v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    .line 199
    iput v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->successFrameCount:I

    .line 201
    :cond_a
    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_39

    .line 204
    :try_start_14
    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    const/4 v4, 0x0

    const/16 v5, 0x280

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/AudioRecord;->read([BII)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_5a

    move-result v0

    .line 211
    .local v0, "bytesRead":I
    if-gez v0, :cond_65

    .line 212
    const-string v3, "VadAudioDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord.read error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean v6, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    .line 225
    .end local v0    # "bytesRead":I
    :cond_39
    :goto_39
    const-string v3, "VadAudioDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording loop exited (failed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 205
    :catch_5a
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VadAudioDetector"

    const-string v4, "AudioRecord.read error"

    invoke-static {v3, v4, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    iput-boolean v6, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    goto :goto_39

    .line 217
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytesRead":I
    :cond_65
    if-eqz v0, :cond_a

    .line 221
    iget v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->successFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->successFrameCount:I

    .line 222
    invoke-direct {p0, v2, v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->processFrame([BI)V

    goto :goto_a
.end method

.method private resetState()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 182
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->writePos:I

    .line 183
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->totalWritten:I

    .line 184
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    .line 185
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->silenceDurationMs:J

    .line 186
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->idleDurationMs:J

    .line 187
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->speechStartTotal:J

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->lastFrameTimestamp:J

    .line 189
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->lastFrameTimestamp:J

    iput-wide v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagWindowStartMs:J

    .line 190
    iput-wide v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagSum:J

    .line 191
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagCount:I

    .line 192
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagPeak:I

    .line 193
    iput v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->energyDiagOverThreshold:I

    .line 194
    return-void
.end method

.method private trigger()V
    .registers 11

    .prologue
    .line 329
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 330
    .local v1, "old":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    sget-object v4, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->TRIGGERED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 331
    sget-object v4, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->TRIGGERED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v1, v4}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V

    .line 334
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->getSpeechSegment()[B

    move-result-object v0

    .line 335
    .local v0, "audioData":[B
    iget-wide v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->cumulativeSpeechMs:J

    .line 337
    .local v2, "speechDuration":J
    const-string v4, "VadAudioDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Speech TRIGGERED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms cumSpeech, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x7d00

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms actual)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    if-eqz v4, :cond_55

    .line 343
    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->listener:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;

    invoke-interface {v4, v0, v2, v3}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$Listener;->onSpeechTriggered([BJ)V

    .line 345
    :cond_55
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 7

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v3, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5b

    if-ne v2, v3, :cond_9

    .line 170
    :goto_7
    monitor-exit p0

    return-void

    .line 145
    :cond_9
    :try_start_9
    const-string v2, "VadAudioDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancelling, current state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 147
    .local v1, "oldState":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 149
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 150
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_5b

    .line 152
    :try_start_3a
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_41} :catch_5e
    .catchall {:try_start_3a .. :try_end_41} :catchall_5b

    .line 156
    :goto_41
    const/4 v2, 0x0

    :try_start_42
    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    .line 159
    :cond_44
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_5b

    if-eqz v2, :cond_55

    .line 161
    :try_start_48
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 162
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_52} :catch_67
    .catchall {:try_start_48 .. :try_end_52} :catchall_5b

    .line 166
    :goto_52
    const/4 v2, 0x0

    :try_start_53
    iput-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    .line 169
    :cond_55
    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-direct {p0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->notifyStateChange(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_7

    .line 141
    .end local v1    # "oldState":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 153
    .restart local v1    # "oldState":Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :catch_5e
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_41

    .line 163
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_67
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VadAudioDetector"

    const-string v3, "Error releasing AudioRecord"

    invoke-static {v2, v3, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_5b

    goto :goto_52
.end method

.method public declared-synchronized getState()Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .registers 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuccessFrameCount()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->successFrameCount:I

    return v0
.end method

.method public declared-synchronized isAudioRecordReady()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 178
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_12

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRecordingFailed()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingFailed:Z

    return v0
.end method

.method public declared-synchronized startListening()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 82
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    sget-object v1, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    if-eq v0, v1, :cond_30

    .line 83
    const-string v0, "VadAudioDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startListening called in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_4e

    .line 138
    :goto_2e
    monitor-exit p0

    return-void

    .line 87
    :cond_30
    :try_start_30
    const-string v0, "VadAudioDetector"

    const-string v1, "Starting audio recording..."

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/16 v0, 0x3e80

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    .line 90
    .local v5, "bufferSize":I
    const/4 v0, -0x1

    if-eq v5, v0, :cond_46

    const/4 v0, -0x2

    if-ne v5, v0, :cond_51

    .line 91
    :cond_46
    const-string v0, "VadAudioDetector"

    const-string v1, "getMinBufferSize failed"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_4e

    goto :goto_2e

    .line 82
    .end local v5    # "bufferSize":I
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    .restart local v5    # "bufferSize":I
    :cond_51
    const/16 v0, 0xa00

    :try_start_53
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 99
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x6

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_85

    .line 108
    const-string v0, "VadAudioDetector"

    const-string v1, "VOICE_RECOGNITION init failed, falling back to MIC"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 110
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    .line 119
    :cond_85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_98

    .line 120
    const-string v0, "VadAudioDetector"

    const-string v1, "AudioRecord initialization failed"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    goto :goto_2e

    .line 125
    :cond_98
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->resetState()V

    .line 126
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->state:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    .line 127
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$1;

    invoke-direct {v1, p0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$1;-><init>(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;)V

    const-string v2, "VadAudioDetector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    .line 135
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    const-string v0, "VadAudioDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord started, buffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_53 .. :try_end_d5} :catchall_4e

    goto/16 :goto_2e
.end method
