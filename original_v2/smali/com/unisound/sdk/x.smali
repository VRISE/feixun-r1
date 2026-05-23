.class public Lcom/unisound/sdk/x;
.super Ljava/lang/Thread;


# static fields
.field protected static a:I

.field protected static b:I

.field protected static c:I

.field protected static d:I

.field protected static e:I

.field protected static f:I

.field private static q:I

.field private static r:I

.field private static t:I


# instance fields
.field g:I

.field private h:Lcom/unisound/jni/Uni4micHalJNI;

.field private i:J

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/media/AudioRecord;

.field private s:I

.field private u:Lcom/unisound/client/FourMicAudioManagerListener;

.field private v:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x10

    const/16 v0, 0x3e80

    sput v0, Lcom/unisound/sdk/x;->q:I

    sput v1, Lcom/unisound/sdk/x;->a:I

    sput v1, Lcom/unisound/sdk/x;->b:I

    const/16 v0, 0xc

    sput v0, Lcom/unisound/sdk/x;->c:I

    const/4 v0, 0x2

    sput v0, Lcom/unisound/sdk/x;->d:I

    const/4 v0, 0x4

    sput v0, Lcom/unisound/sdk/x;->e:I

    const/4 v0, 0x1

    sput v0, Lcom/unisound/sdk/x;->f:I

    sget v0, Lcom/unisound/sdk/x;->q:I

    sput v0, Lcom/unisound/sdk/x;->t:I

    const/16 v0, 0x1900

    sput v0, Lcom/unisound/sdk/x;->r:I

    sget v0, Lcom/unisound/sdk/x;->t:I

    sget v1, Lcom/unisound/sdk/x;->a:I

    sget v2, Lcom/unisound/sdk/x;->d:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sget v1, Lcom/unisound/sdk/x;->r:I

    if-ge v1, v0, :cond_2f

    sput v0, Lcom/unisound/sdk/x;->r:I

    :cond_2f
    return-void
.end method

.method public constructor <init>(Lcom/unisound/client/FourMicAudioManagerListener;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unisound/sdk/x;->i:J

    iput-boolean v3, p0, Lcom/unisound/sdk/x;->j:Z

    iput v3, p0, Lcom/unisound/sdk/x;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/unisound/sdk/x;->l:I

    iput v3, p0, Lcom/unisound/sdk/x;->m:I

    iput v2, p0, Lcom/unisound/sdk/x;->n:I

    iput v2, p0, Lcom/unisound/sdk/x;->o:I

    iput-object v4, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    iput v2, p0, Lcom/unisound/sdk/x;->g:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/unisound/sdk/x;->s:I

    iput-object v4, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    return-void
.end method

.method private a()I
    .registers 10

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v1, p0, Lcom/unisound/sdk/x;->l:I

    invoke-virtual {v0, v1}, Lcom/unisound/jni/Uni4micHalJNI;->openAudioIn(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/sdk/x;->i:J

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->startRecorder(J)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FourMicAudioManagerInterface"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openIn uni4micHalJNI status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-nez v0, :cond_40

    move v0, v6

    :goto_3f
    return v0

    :cond_40
    move v0, v7

    goto :goto_3f

    :cond_42
    move v0, v7

    goto :goto_3f

    :cond_44
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcom/unisound/sdk/x;->g:I

    sget v2, Lcom/unisound/sdk/x;->q:I

    sget v3, Lcom/unisound/sdk/x;->b:I

    sget v4, Lcom/unisound/sdk/x;->d:I

    sget v5, Lcom/unisound/sdk/x;->r:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v8, :cond_64

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    move v0, v6

    goto :goto_3f

    :cond_64
    move v0, v7

    goto :goto_3f
.end method

.method private a([BI)I
    .registers 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/unisound/jni/Uni4micHalJNI;->readData(J[BI)I

    move-result v0

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v1, p1, v0, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    goto :goto_11
.end method

.method private b()V
    .registers 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v0, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->stopRecorder(J)I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-wide v2, p0, Lcom/unisound/sdk/x;->i:J

    invoke-virtual {v1, v2, v3}, Lcom/unisound/jni/Uni4micHalJNI;->closeAudioIn(J)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FourMicAudioManagerInterface"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeIn uni4micHalJNI stop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", close = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    if-eqz v0, :cond_43

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close audioRecord.stop()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v5, :cond_5e

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_5e
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close audioRecord.release()"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/x;->p:Landroid/media/AudioRecord;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "FourMicAudioManagerInterface::close ok"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_43
.end method

.method private c()I
    .registers 6

    invoke-static {}, Lcom/unisound/jni/Uni4micHalJNI;->getInstance()Lcom/unisound/jni/Uni4micHalJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v1, p0, Lcom/unisound/sdk/x;->k:I

    invoke-virtual {v0, v1}, Lcom/unisound/jni/Uni4micHalJNI;->init(I)I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FourMicAudioManagerInterface initFourMic status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->m:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDebugMode(I)I

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->n:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->close4MicAlgorithm(I)I

    iget-object v1, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    iget v2, p0, Lcom/unisound/sdk/x;->o:I

    invoke-virtual {v1, v2}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeUpStatus(I)I

    return v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/x;->h:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->release()I

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const/16 v1, 0x408

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onEvent(I)V

    :try_start_7
    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/unisound/sdk/x;->c()I

    :cond_e
    invoke-direct {p0}, Lcom/unisound/sdk/x;->a()I

    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/unisound/sdk/x;->s:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    :goto_29
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/x;->a([BI)I

    move-result v1

    if-lez v1, :cond_17

    iget-object v2, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    invoke-interface {v2, v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onRecordingData([BI)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_36
    .catchall {:try_start_7 .. :try_end_35} :catchall_68

    goto :goto_17

    :catch_36
    move-exception v0

    :try_start_37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const v1, -0xf838

    invoke-static {v1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onError(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_37 .. :try_end_46} :catchall_68

    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/unisound/sdk/x;->u:Lcom/unisound/client/FourMicAudioManagerListener;

    const/16 v1, 0x409

    invoke-interface {v0, v1}, Lcom/unisound/client/FourMicAudioManagerListener;->onEvent(I)V

    return-void

    :cond_58
    :try_start_58
    iget v0, p0, Lcom/unisound/sdk/x;->s:I

    new-array v0, v0, [B
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_36
    .catchall {:try_start_58 .. :try_end_5c} :catchall_68

    goto :goto_29

    :cond_5d
    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v0, :cond_50

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    goto :goto_50

    :catchall_68
    move-exception v0

    invoke-direct {p0}, Lcom/unisound/sdk/x;->b()V

    iget-boolean v1, p0, Lcom/unisound/sdk/x;->j:Z

    if-eqz v1, :cond_73

    invoke-direct {p0}, Lcom/unisound/sdk/x;->d()I

    :cond_73
    throw v0
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 5

    sparse-switch p1, :sswitch_data_b0

    :goto_3
    return-void

    :sswitch_4
    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/x;->j:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_3

    :catch_d
    move-exception v0

    const-string v0, "set is4micMode Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_14
    :try_start_14
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->s:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_3

    :catch_1d
    move-exception v0

    const-string v0, "set recordingPacSize Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_24
    :try_start_24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v1, 0x1

    iput v1, p0, Lcom/unisound/sdk/x;->m:I

    :goto_2f
    sput-boolean v0, Lcom/unisound/common/y;->k:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_32

    goto :goto_3

    :catch_32
    move-exception v0

    const-string v0, "set ASR_FOURMIC_ISDEBUG Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_39
    const/4 v1, 0x0

    :try_start_3a
    iput v1, p0, Lcom/unisound/sdk/x;->m:I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_32

    goto :goto_2f

    :sswitch_3d
    :try_start_3d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/x;->n:I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_3

    :catch_49
    move-exception v0

    const-string v0, "set ASR_FOURMIC_CLOSE_4MICALGORITHM Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_50
    const/4 v0, 0x0

    :try_start_51
    iput v0, p0, Lcom/unisound/sdk/x;->n:I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_53} :catch_49

    goto :goto_3

    :sswitch_54
    :try_start_54
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/unisound/sdk/x;->q:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_3

    :catch_5d
    move-exception v0

    const-string v0, "set asr_sampling_rate Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_64
    :try_start_64
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisound/sdk/x;->k:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_3

    :catch_70
    move-exception v0

    const-string v0, "set use4mic Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_77
    const/4 v0, 0x0

    :try_start_78
    iput v0, p0, Lcom/unisound/sdk/x;->k:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7a} :catch_70

    goto :goto_3

    :sswitch_7b
    :try_start_7b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->l:I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_83} :catch_84

    goto :goto_3

    :catch_84
    move-exception v0

    const-string v0, "set 4mic_ch_num Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_8c
    :try_start_8c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->g:I
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_94} :catch_96

    goto/16 :goto_3

    :catch_96
    move-exception v0

    const-string v0, "set asr_sampling_rate Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_9e
    :try_start_9e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/x;->o:I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a6} :catch_a8

    goto/16 :goto_3

    :catch_a8
    move-exception v0

    const-string v0, "set wakeupStatus Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_data_b0
    .sparse-switch
        0x414 -> :sswitch_54
        0x438 -> :sswitch_14
        0x457 -> :sswitch_64
        0x8ae -> :sswitch_7b
        0xd05 -> :sswitch_8c
        0x115c -> :sswitch_9e
        0x2774 -> :sswitch_3d
        0x27d6 -> :sswitch_24
        0x27d7 -> :sswitch_4
    .end sparse-switch
.end method

.method protected startRecord()V
    .registers 1

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->waitEnd()V

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->start()V

    return-void
.end method

.method protected stopRecord()V
    .registers 1

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->waitEnd()V

    return-void
.end method

.method public waitEnd()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/x;->v:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/unisound/sdk/x;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0xf3c

    :try_start_e
    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/x;->join(J)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "FourMicAudioManagerInferface::waitEnd()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c
.end method
