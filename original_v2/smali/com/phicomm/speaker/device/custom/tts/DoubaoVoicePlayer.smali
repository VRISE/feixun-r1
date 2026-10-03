.class public Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;
.super Ljava/lang/Object;
.source "DoubaoVoicePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DoubaoVoice"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    .registers 24
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "audio"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    .prologue
    .line 42
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    move-object/from16 v0, p1

    array-length v4, v0

    if-nez v4, :cond_5e

    .line 43
    :cond_9
    const-string v9, "DoubaoVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "play \u53c2\u6570\u4e0d\u5408\u6cd5: ctx="

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v17, " audio="

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 44
    if-nez p1, :cond_41

    const-string v4, "null"

    :goto_2a
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-static {v9, v4}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    if-eqz p3, :cond_40

    const-string v4, "\u97f3\u9891\u4e3a\u7a7a"

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;->onError(Ljava/lang/String;)V

    .line 133
    :cond_40
    :goto_40
    return-void

    .line 44
    :cond_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v18, "B"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2a

    .line 49
    :cond_5e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-eq v4, v9, :cond_82

    .line 50
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;-><init>(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V

    invoke-virtual {v4, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    .line 59
    :cond_82
    const/4 v15, 0x0

    .line 61
    .local v15, "player":Landroid/media/MediaPlayer;
    if-eqz p2, :cond_19f

    :try_start_85
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v9, "ogg"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19f

    const-string v11, ".ogg"

    .line 62
    .local v11, "ext":Ljava/lang/String;
    :goto_93
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "doubao_voice"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v14, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v14, "out":Ljava/io/File;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v13, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 66
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 67
    const-string v4, "DoubaoVoice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u843d\u76d8 "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, " ("

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, " \u5b57\u8282)"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v16, Landroid/media/MediaPlayer;

    invoke-direct/range {v16 .. v16}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_101} :catch_1a3

    .line 70
    .end local v15    # "player":Landroid/media/MediaPlayer;
    .local v16, "player":Landroid/media/MediaPlayer;
    :try_start_101
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaPlayer;->prepare()V

    .line 73
    move-object/from16 v12, v16

    .line 74
    .local v12, "finalPlayer":Landroid/media/MediaPlayer;
    const/4 v4, 0x1

    new-array v8, v4, [Z

    const/4 v4, 0x0

    const/4 v9, 0x0

    aput-boolean v9, v8, v4

    .line 75
    .local v8, "done":[Z
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    .line 78
    .local v5, "durationMs":I
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    .local v6, "watchdog":Landroid/os/Handler;
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Runnable;

    .line 80
    .local v7, "watchdogTask":[Ljava/lang/Runnable;
    const/4 v4, 0x0

    new-instance v9, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;

    move-object/from16 v0, p3

    invoke-direct {v9, v8, v5, v12, v0}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$2;-><init>([ZILandroid/media/MediaPlayer;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V

    aput-object v9, v7, v4

    .line 92
    const/4 v4, 0x0

    aget-object v4, v7, v4

    const/16 v9, 0x1f40

    add-int/lit16 v0, v5, 0xbb8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v6, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    new-instance v4, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$3;-><init>(ILandroid/os/Handler;[Ljava/lang/Runnable;[ZLcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 107
    new-instance v4, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;

    move-object/from16 v0, p3

    invoke-direct {v4, v6, v7, v8, v0}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$4;-><init>(Landroid/os/Handler;[Ljava/lang/Runnable;[ZLcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 122
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 123
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaPlayer;->start()V

    .line 124
    const-string v4, "DoubaoVoice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u5f00\u59cb\u64ad\u653e\u8c46\u5305\u8bed\u97f3: "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, " \u5b57\u8282, duration="

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v17, "ms"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/unisound/vui/util/LogMgr;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_19b} :catch_1e9

    move-object/from16 v15, v16

    .line 132
    .end local v16    # "player":Landroid/media/MediaPlayer;
    .restart local v15    # "player":Landroid/media/MediaPlayer;
    goto/16 :goto_40

    .line 61
    .end local v5    # "durationMs":I
    .end local v6    # "watchdog":Landroid/os/Handler;
    .end local v7    # "watchdogTask":[Ljava/lang/Runnable;
    .end local v8    # "done":[Z
    .end local v11    # "ext":Ljava/lang/String;
    .end local v12    # "finalPlayer":Landroid/media/MediaPlayer;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "out":Ljava/io/File;
    :cond_19f
    :try_start_19f
    const-string v11, ".mp3"
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_1a1} :catch_1a3

    goto/16 :goto_93

    .line 125
    :catch_1a3
    move-exception v10

    .line 126
    .local v10, "e":Ljava/lang/Exception;
    :goto_1a4
    const-string v4, "DoubaoVoice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\u8c46\u5305\u8bed\u97f3\u64ad\u653e\u5931\u8d25: "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 128
    if-eqz v15, :cond_1c7

    .line 129
    :try_start_1c4
    invoke-virtual {v15}, Landroid/media/MediaPlayer;->release()V
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1c4 .. :try_end_1c7} :catch_1e7

    .line 131
    :cond_1c7
    :goto_1c7
    if-eqz p3, :cond_40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u64ad\u653e\u5931\u8d25: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_40

    .line 129
    :catch_1e7
    move-exception v4

    goto :goto_1c7

    .line 125
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v15    # "player":Landroid/media/MediaPlayer;
    .restart local v11    # "ext":Ljava/lang/String;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "out":Ljava/io/File;
    .restart local v16    # "player":Landroid/media/MediaPlayer;
    :catch_1e9
    move-exception v10

    move-object/from16 v15, v16

    .end local v16    # "player":Landroid/media/MediaPlayer;
    .restart local v15    # "player":Landroid/media/MediaPlayer;
    goto :goto_1a4
.end method
