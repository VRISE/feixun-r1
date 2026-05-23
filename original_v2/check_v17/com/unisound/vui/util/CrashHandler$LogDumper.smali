.class Lcom/unisound/vui/util/CrashHandler$LogDumper;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/CrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogDumper"
.end annotation


# instance fields
.field private cmds:Ljava/lang/String;

.field private logcatProc:Ljava/lang/Process;

.field private mPID:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;

.field private mRunning:Z

.field private out:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/unisound/vui/util/CrashHandler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/util/CrashHandler;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->this$0:Lcom/unisound/vui/util/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mRunning:Z

    iput-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->cmds:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trace-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    # getter for: Lcom/unisound/vui/util/CrashHandler;->crashTime:Ljava/lang/String;
    invoke-static {p1}, Lcom/unisound/vui/util/CrashHandler;->access$100(Lcom/unisound/vui/util/CrashHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    new-instance v1, Ljava/io/File;

    # getter for: Lcom/unisound/vui/util/CrashHandler;->ROOT_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/unisound/vui/util/CrashHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mPID:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/unisound/vui/util/CrashHandler;->ROOT_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/unisound/vui/util/CrashHandler;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_77
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_7e} :catch_96
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7e} :catch_9b

    :cond_7e
    :goto_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logcat -vtime | grep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->cmds:Ljava/lang/String;

    return-void

    :catch_96
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_7e

    :catch_9b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e
.end method

.method static synthetic access$302(Lcom/unisound/vui/util/CrashHandler$LogDumper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/unisound/vui/util/CrashHandler$LogDumper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mRunning:Z

    return p1
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->cmds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-boolean v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mRunning:Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2b} :catch_7f
    .catchall {:try_start_1 .. :try_end_2b} :catchall_ba

    if-nez v1, :cond_50

    :cond_2d
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_38
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_44

    :try_start_3c
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_a6

    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4f

    :try_start_48
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_ab

    :goto_4d
    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    :try_start_50
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mPID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_7e} :catch_7f
    .catchall {:try_start_50 .. :try_end_7e} :catchall_ba

    goto :goto_21

    :catch_7f
    move-exception v0

    :try_start_80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_ba

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_8e
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_9a

    :try_start_92
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9a} :catch_b0

    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4f

    :try_start_9e
    iget-object v0, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a3} :catch_b5

    :goto_a3
    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    goto :goto_4f

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catch_b0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a3

    :catchall_ba
    move-exception v0

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    if-eqz v1, :cond_c6

    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->logcatProc:Ljava/lang/Process;

    :cond_c6
    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_d2

    :try_start_ca
    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->mReader:Ljava/io/BufferedReader;
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d2} :catch_de

    :cond_d2
    :goto_d2
    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_dd

    :try_start_d6
    iget-object v1, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_db} :catch_e3

    :goto_db
    iput-object v3, p0, Lcom/unisound/vui/util/CrashHandler$LogDumper;->out:Ljava/io/FileOutputStream;

    :cond_dd
    throw v0

    :catch_de
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    :catch_e3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_db
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/unisound/vui/util/CrashHandler$LogDumper$1;

    invoke-direct {v1, p0}, Lcom/unisound/vui/util/CrashHandler$LogDumper$1;-><init>(Lcom/unisound/vui/util/CrashHandler$LogDumper;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
