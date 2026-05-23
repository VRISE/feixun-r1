.class Lcom/unisound/client/IAudioSourceAEC$AECThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unisound/client/IAudioSourceAEC;


# direct methods
.method private constructor <init>(Lcom/unisound/client/IAudioSourceAEC;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/client/IAudioSourceAEC;Lcom/unisound/client/IAudioSourceAEC$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/client/IAudioSourceAEC$AECThread;-><init>(Lcom/unisound/client/IAudioSourceAEC;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_5
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-virtual {v0}, Lcom/unisound/client/IAudioSourceAEC;->isRecordingStart()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v0}, Lcom/unisound/client/IAudioSourceAEC;->a(Lcom/unisound/client/IAudioSourceAEC;)Z

    move-result v0

    if-nez v0, :cond_88

    :try_start_15
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v0}, Lcom/unisound/client/IAudioSourceAEC;->b(Lcom/unisound/client/IAudioSourceAEC;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_81

    array-length v1, v0

    if-ne v1, v4, :cond_51

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_51

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->a(Lcom/unisound/client/IAudioSourceAEC;Z)Z

    :goto_37
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->e:[B

    invoke-static {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->a(Lcom/unisound/client/IAudioSourceAEC;[B)V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_40} :catch_41

    goto :goto_5

    :catch_41
    move-exception v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AudioSourceImpl"

    aput-object v1, v0, v5

    const-string v1, "IAudioSourceAEC runAEC interrupt"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_5

    :cond_51
    :try_start_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_out_mic.pcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->saveRecordingData([BLjava/lang/String;)Z

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/unisound/jni/AEC;->process([B[B)[B

    move-result-object v0

    iput-object v0, v1, Lcom/unisound/client/IAudioSourceAEC;->e:[B

    goto :goto_37

    :cond_81
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_86
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_86} :catch_41

    goto/16 :goto_5

    :cond_88
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->h:Lcom/unisound/jni/AEC;

    invoke-virtual {v1}, Lcom/unisound/jni/AEC;->getlast()[B

    move-result-object v1

    iput-object v1, v0, Lcom/unisound/client/IAudioSourceAEC;->e:[B

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->e:[B

    invoke-static {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->a(Lcom/unisound/client/IAudioSourceAEC;[B)V

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v0, v4}, Lcom/unisound/client/IAudioSourceAEC;->b(Lcom/unisound/client/IAudioSourceAEC;Z)Z

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$AECThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->b:[B

    invoke-static {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->a(Lcom/unisound/client/IAudioSourceAEC;[B)V

    return-void
.end method
