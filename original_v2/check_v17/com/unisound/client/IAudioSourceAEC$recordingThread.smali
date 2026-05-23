.class Lcom/unisound/client/IAudioSourceAEC$recordingThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/unisound/client/IAudioSourceAEC;


# direct methods
.method private constructor <init>(Lcom/unisound/client/IAudioSourceAEC;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/client/IAudioSourceAEC;Lcom/unisound/client/IAudioSourceAEC$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/client/IAudioSourceAEC$recordingThread;-><init>(Lcom/unisound/client/IAudioSourceAEC;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-virtual {v0}, Lcom/unisound/client/IAudioSourceAEC;->isRecordingStart()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->a:[B

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->a:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/unisound/client/IAudioSourceAEC;->readDataPro([BI)I

    move-result v0

    if-lez v0, :cond_37

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v1}, Lcom/unisound/client/IAudioSourceAEC;->b(Lcom/unisound/client/IAudioSourceAEC;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v1}, Lcom/unisound/client/IAudioSourceAEC;->b(Lcom/unisound/client/IAudioSourceAEC;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->a:[B

    invoke-static {v2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_37
    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    invoke-static {v0}, Lcom/unisound/client/IAudioSourceAEC;->b(Lcom/unisound/client/IAudioSourceAEC;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v1, v1, Lcom/unisound/client/IAudioSourceAEC;->b:[B

    iget-object v2, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    iget-object v2, v2, Lcom/unisound/client/IAudioSourceAEC;->b:[B

    array-length v2, v2

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_50
    iget-object v0, p0, Lcom/unisound/client/IAudioSourceAEC$recordingThread;->a:Lcom/unisound/client/IAudioSourceAEC;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/client/IAudioSourceAEC;->setFirstStartRecording(Z)V

    return-void
.end method
