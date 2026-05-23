.class public abstract Lcom/unisound/client/IAudioSourceAEC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/client/IAudioSource;


# static fields
.field private static final i:Ljava/lang/String; = "AudioSourceImpl"

.field private static j:Z = false

.field private static final k:I = 0x5

.field private static l:I


# instance fields
.field a:[B

.field b:[B

.field c:I

.field d:[B

.field e:[B

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/unisound/jni/AEC;

.field private m:Z

.field private n:Z

.field private o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private q:F

.field private r:F

.field private s:I

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/client/IAudioSourceAEC;->j:Z

    const/16 v0, 0x4b0

    sput v0, Lcom/unisound/client/IAudioSourceAEC;->l:I

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/unisound/client/IAudioSourceAEC;->l:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->a:[B

    new-array v0, v3, [B

    const/16 v1, 0x64

    aput-byte v1, v0, v2

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->b:[B

    iput v2, p0, Lcom/unisound/client/IAudioSourceAEC;->c:I

    iput-boolean v2, p0, Lcom/unisound/client/IAudioSourceAEC;->m:Z

    iput-boolean v2, p0, Lcom/unisound/client/IAudioSourceAEC;->n:Z

    iput-object v4, p0, Lcom/unisound/client/IAudioSourceAEC;->d:[B

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->o:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->p:Ljava/util/concurrent/BlockingQueue;

    iput-object v4, p0, Lcom/unisound/client/IAudioSourceAEC;->e:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/aec/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->g:Ljava/lang/String;

    iput-object v4, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    iput v5, p0, Lcom/unisound/client/IAudioSourceAEC;->q:F

    iput v5, p0, Lcom/unisound/client/IAudioSourceAEC;->r:F

    iput v2, p0, Lcom/unisound/client/IAudioSourceAEC;->s:I

    iput-boolean v2, p0, Lcom/unisound/client/IAudioSourceAEC;->t:Z

    iput-boolean v2, p0, Lcom/unisound/client/IAudioSourceAEC;->u:Z

    new-array v0, v6, [Ljava/lang/Object;

    const-string v1, "AudioSourceImpl"

    aput-object v1, v0, v2

    const-string v1, "IAudioSourceAEC"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Lcom/unisound/jni/AEC;

    const/16 v1, 0x3e80

    invoke-direct {v0, v1, v3}, Lcom/unisound/jni/AEC;-><init>(II)V

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/16 v1, 0x258

    invoke-virtual {v0, v2, v1}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    invoke-virtual {v0, v6, v3}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v1, 0x3

    iget v2, p0, Lcom/unisound/client/IAudioSourceAEC;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    return-void
.end method

.method private a(II)I
    .registers 4

    rem-int v0, p1, p2

    if-nez v0, :cond_7

    div-int v0, p1, p2

    :goto_6
    return v0

    :cond_7
    div-int v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private a([BI)I
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->o:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_1d

    array-length v1, v0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_10} :catch_26

    :try_start_10
    sget v3, Lcom/unisound/client/IAudioSourceAEC;->l:I

    if-le v1, v3, :cond_16

    sget v1, Lcom/unisound/client/IAudioSourceAEC;->l:I

    :cond_16
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1b} :catch_38

    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/unisound/client/IAudioSourceAEC;->n:Z
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1f} :catch_26

    if-eqz v0, :cond_24

    const/16 v0, -0x9

    goto :goto_1c

    :cond_24
    move v0, v2

    goto :goto_1c

    :catch_26
    move-exception v0

    move v0, v2

    :goto_28
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "AudioSourceImpl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "IAudioSourceAEC readBuffer interrupt"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_1c

    :catch_38
    move-exception v0

    move v0, v1

    goto :goto_28
.end method

.method private a()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/client/IAudioSourceAEC;->n:Z

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    invoke-direct {p0}, Lcom/unisound/client/IAudioSourceAEC;->c()F

    move-result v1

    invoke-direct {p0}, Lcom/unisound/client/IAudioSourceAEC;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/jni/AEC;->reset(FF)V

    new-instance v0, Lcom/unisound/client/IAudioSourceAEC$AECThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/client/IAudioSourceAEC$AECThread;-><init>(Lcom/unisound/client/IAudioSourceAEC;Lcom/unisound/client/IAudioSourceAEC$1;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/unisound/client/IAudioSourceAEC$AECThread;->setPriority(I)V

    invoke-virtual {v0}, Lcom/unisound/client/IAudioSourceAEC$AECThread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/client/IAudioSourceAEC;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/client/IAudioSourceAEC;->a([B)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2
.end method

.method private a([B)V
    .registers 5

    if-eqz p1, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_out_aec.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/client/IAudioSourceAEC;->saveRecordingData([BLjava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->o:Ljava/util/concurrent/BlockingQueue;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

.method static synthetic a(Lcom/unisound/client/IAudioSourceAEC;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/client/IAudioSourceAEC;->m:Z

    return v0
.end method

.method static synthetic a(Lcom/unisound/client/IAudioSourceAEC;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/client/IAudioSourceAEC;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/unisound/client/IAudioSourceAEC;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->p:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method private b()V
    .registers 3

    new-instance v0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/client/IAudioSourceAEC$recordingThread;-><init>(Lcom/unisound/client/IAudioSourceAEC;Lcom/unisound/client/IAudioSourceAEC$1;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic b(Lcom/unisound/client/IAudioSourceAEC;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/client/IAudioSourceAEC;->n:Z

    return p1
.end method

.method private c()F
    .registers 2

    iget v0, p0, Lcom/unisound/client/IAudioSourceAEC;->q:F

    return v0
.end method

.method private d()F
    .registers 2

    iget v0, p0, Lcom/unisound/client/IAudioSourceAEC;->r:F

    return v0
.end method

.method public static saveRecordingData([BLjava/lang/String;)Z
    .registers 6

    sget-boolean v0, Lcom/unisound/client/IAudioSourceAEC;->j:Z

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lcom/unisound/client/IAudioSourceAEC;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_8
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_25
    .catchall {:try_start_8 .. :try_end_f} :catchall_36

    :try_start_f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_45
    .catchall {:try_start_f .. :try_end_19} :catchall_43

    const/4 v0, 0x1

    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    :cond_1f
    :goto_1f
    return v0

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    :catch_25
    move-exception v0

    move-object v1, v2

    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_43

    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_31

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    goto :goto_1f

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2f

    :catchall_36
    move-exception v0

    move-object v1, v2

    :goto_38
    if-eqz v1, :cond_3d

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    throw v0

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d

    :catchall_43
    move-exception v0

    goto :goto_38

    :catch_45
    move-exception v0

    goto :goto_27
.end method


# virtual methods
.method public isFirstStartRecording()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/client/IAudioSourceAEC;->u:Z

    return v0
.end method

.method public isRecordingStart()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/client/IAudioSourceAEC;->t:Z

    return v0
.end method

.method public readData([BI)I
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/unisound/client/IAudioSourceAEC;->isFirstStartRecording()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p0, v2}, Lcom/unisound/client/IAudioSourceAEC;->setFirstStartRecording(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->p:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->p:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_1d
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->o:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->o:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    :cond_26
    invoke-direct {p0}, Lcom/unisound/client/IAudioSourceAEC;->b()V

    iput-boolean v2, p0, Lcom/unisound/client/IAudioSourceAEC;->m:Z

    invoke-direct {p0}, Lcom/unisound/client/IAudioSourceAEC;->a()V

    :cond_2e
    invoke-direct {p0, p1, p2}, Lcom/unisound/client/IAudioSourceAEC;->a([BI)I

    move-result v0

    return v0
.end method

.method public abstract readDataPro([BI)I
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    invoke-virtual {v0}, Lcom/unisound/jni/AEC;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    sput-boolean p1, Lcom/unisound/client/IAudioSourceAEC;->j:Z

    return-void
.end method

.method public setEngineDebug(Z)V
    .registers 5

    const/4 v2, 0x4

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    goto :goto_d
.end method

.method public setFirstStartRecording(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/client/IAudioSourceAEC;->u:Z

    return-void
.end method

.method public setFrameAjustUnit(I)I
    .registers 4

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setMicChannel(I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/unisound/jni/AEC;->setOptionInt(II)I

    :cond_a
    return-void
.end method

.method public setRecordingStart(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/client/IAudioSourceAEC;->t:Z

    return-void
.end method

.method public writeData([BI)I
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    if-lez v1, :cond_c

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/unisound/client/IAudioSourceAEC;->writeDataPro([BI)I

    move-result v0

    :cond_c
    return v0
.end method

.method public abstract writeDataPro([BI)I
.end method
