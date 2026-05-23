.class public final Lcom/phicomm/speaker/device/custom/util/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# static fields
.field private static final FMT:Ljava/text/SimpleDateFormat;

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_FILE:Ljava/lang/String; = "/sdcard/eav_event.log"

.field private static final TAG:Ljava/lang/String; = "EventLog"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/util/EventLog;->FMT:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/device/custom/util/EventLog;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/phicomm/speaker/device/custom/util/EventLog;->FMT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "line":Ljava/lang/String;
    sget-object v5, Lcom/phicomm/speaker/device/custom/util/EventLog;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "w":Ljava/io/BufferedWriter;
    :try_start_36
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v6, "/sdcard/eav_event.log"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_43} :catch_57
    .catchall {:try_start_36 .. :try_end_43} :catchall_78

    .line 32
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .local v3, "w":Ljava/io/BufferedWriter;
    :try_start_43
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_49} :catch_8a
    .catchall {:try_start_43 .. :try_end_49} :catchall_87

    .line 37
    if-eqz v3, :cond_8d

    :try_start_4b
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4e} :catch_54
    .catchall {:try_start_4b .. :try_end_4e} :catchall_84

    move-object v2, v3

    .line 39
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    :cond_4f
    :goto_4f
    :try_start_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_7f

    .line 41
    invoke-static {p0, p1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 37
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catch_54
    move-exception v4

    move-object v2, v3

    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    goto :goto_4f

    .line 34
    :catch_57
    move-exception v1

    .line 35
    .local v1, "t":Ljava/lang/Throwable;
    :goto_58
    :try_start_58
    const-string v4, "EventLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_78

    .line 37
    if-eqz v2, :cond_4f

    :try_start_72
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_75} :catch_76
    .catchall {:try_start_72 .. :try_end_75} :catchall_7f

    goto :goto_4f

    :catch_76
    move-exception v4

    goto :goto_4f

    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_78
    move-exception v4

    :goto_79
    if-eqz v2, :cond_7e

    :try_start_7b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_82
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    .line 38
    :cond_7e
    :goto_7e
    :try_start_7e
    throw v4

    .line 39
    :catchall_7f
    move-exception v4

    :goto_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_7f

    throw v4

    .line 37
    :catch_82
    move-exception v6

    goto :goto_7e

    .line 39
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catchall_84
    move-exception v4

    move-object v2, v3

    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    goto :goto_80

    .line 37
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catchall_87
    move-exception v4

    move-object v2, v3

    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    goto :goto_79

    .line 34
    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catch_8a
    move-exception v1

    move-object v2, v3

    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    goto :goto_58

    .end local v2    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :cond_8d
    move-object v2, v3

    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "w":Ljava/io/BufferedWriter;
    goto :goto_4f
.end method
