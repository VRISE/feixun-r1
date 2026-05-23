.class public Lcom/unisound/vui/common/file/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v0, "Pcm2WavUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeWavFile: recordingDir "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_17d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17d

    monitor-enter p2

    move v5, v2

    move v1, v2

    :goto_28
    :try_start_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3d

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_17a

    array-length v0, v0

    add-int/2addr v0, v1

    :goto_38
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_28

    :cond_3d
    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_b2

    :goto_3e
    new-instance v0, Lcom/unisound/vui/common/file/b;

    invoke-direct {v0}, Lcom/unisound/vui/common/file/b;-><init>()V

    add-int/lit8 v5, v1, 0x24

    iput v5, v0, Lcom/unisound/vui/common/file/b;->b:I

    iput v6, v0, Lcom/unisound/vui/common/file/b;->e:I

    iput-short v6, v0, Lcom/unisound/vui/common/file/b;->k:S

    iput-short v3, v0, Lcom/unisound/vui/common/file/b;->g:S

    iput-short v3, v0, Lcom/unisound/vui/common/file/b;->f:S

    const/16 v5, 0x3e80

    iput v5, v0, Lcom/unisound/vui/common/file/b;->h:I

    iget-short v5, v0, Lcom/unisound/vui/common/file/b;->g:S

    iget-short v6, v0, Lcom/unisound/vui/common/file/b;->k:S

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v0, Lcom/unisound/vui/common/file/b;->j:S

    iget-short v5, v0, Lcom/unisound/vui/common/file/b;->j:S

    iget v6, v0, Lcom/unisound/vui/common/file/b;->h:I

    mul-int/2addr v5, v6

    iput v5, v0, Lcom/unisound/vui/common/file/b;->i:I

    iput v1, v0, Lcom/unisound/vui/common/file/b;->m:I

    :try_start_66
    invoke-virtual {v0}, Lcom/unisound/vui/common/file/b;->a()[B
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_b5

    move-result-object v0

    move-object v7, v0

    :goto_6b
    if-eqz v7, :cond_177

    array-length v0, v7

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_177

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    :goto_78
    if-eqz v6, :cond_b8

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_7e
    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_83
    :try_start_83
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    invoke-direct {v5, v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_89} :catch_16b
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_89} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_89} :catch_126
    .catchall {:try_start_83 .. :try_end_89} :catchall_141

    :try_start_89
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_89 .. :try_end_8e} :catch_16f
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_166
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8e} :catch_161
    .catchall {:try_start_89 .. :try_end_8e} :catchall_159

    if-eqz v7, :cond_95

    const/4 v0, 0x0

    :try_start_91
    array-length v4, v7

    invoke-virtual {v1, v7, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    :cond_95
    if-eqz p2, :cond_bb

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_bb

    monitor-enter p2
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_91 .. :try_end_9e} :catch_e6
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9e} :catch_169
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9e} :catch_164
    .catchall {:try_start_91 .. :try_end_9e} :catchall_15c

    move v4, v2

    :goto_9f
    :try_start_9f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_ba

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_ae
    .catchall {:try_start_9f .. :try_end_ae} :catchall_e3

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9f

    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit p2
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    :catch_b5
    move-exception v0

    move-object v7, v4

    goto :goto_6b

    :cond_b8
    move-object v0, v4

    goto :goto_7e

    :cond_ba
    :try_start_ba
    monitor-exit p2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_e3

    :cond_bb
    :try_start_bb
    const-string v0, "Pcm2WavUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeRecordFile: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_bb .. :try_end_d7} :catch_e6
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_d7} :catch_169
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d7} :catch_164
    .catchall {:try_start_bb .. :try_end_d7} :catchall_15c

    if-eqz v1, :cond_dc

    :try_start_d9
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_fb

    :cond_dc
    :goto_dc
    if-eqz v5, :cond_174

    :try_start_de
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_100

    move v2, v3

    :cond_e2
    :goto_e2
    return v2

    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit p2
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v0
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_e5 .. :try_end_e6} :catch_e6
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e6} :catch_169
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e6} :catch_164
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_15c

    :catch_e6
    move-exception v0

    move-object v4, v5

    :goto_e8
    :try_start_e8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_15e

    if-eqz v1, :cond_f0

    :try_start_ed
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_106

    :cond_f0
    :goto_f0
    if-eqz v4, :cond_e2

    :try_start_f2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_e2

    :catch_f6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    :catch_fb
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_dc

    :catch_100
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v2, v3

    goto :goto_e2

    :catch_106
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f0

    :catch_10b
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_10e
    :try_start_10e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_15c

    if-eqz v1, :cond_116

    :try_start_113
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_121

    :cond_116
    :goto_116
    if-eqz v5, :cond_e2

    :try_start_118
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    goto :goto_e2

    :catch_11c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    :catch_121
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_116

    :catch_126
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_129
    :try_start_129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12c
    .catchall {:try_start_129 .. :try_end_12c} :catchall_15c

    if-eqz v1, :cond_131

    :try_start_12e
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_131} :catch_13c

    :cond_131
    :goto_131
    if-eqz v5, :cond_e2

    :try_start_133
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    goto :goto_e2

    :catch_137
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    :catch_13c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_131

    :catchall_141
    move-exception v0

    move-object v1, v4

    move-object v5, v4

    :goto_144
    if-eqz v1, :cond_149

    :try_start_146
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_149} :catch_14f

    :cond_149
    :goto_149
    if-eqz v5, :cond_14e

    :try_start_14b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_154

    :cond_14e
    :goto_14e
    throw v0

    :catch_14f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_149

    :catch_154
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14e

    :catchall_159
    move-exception v0

    move-object v1, v4

    goto :goto_144

    :catchall_15c
    move-exception v0

    goto :goto_144

    :catchall_15e
    move-exception v0

    move-object v5, v4

    goto :goto_144

    :catch_161
    move-exception v0

    move-object v1, v4

    goto :goto_129

    :catch_164
    move-exception v0

    goto :goto_129

    :catch_166
    move-exception v0

    move-object v1, v4

    goto :goto_10e

    :catch_169
    move-exception v0

    goto :goto_10e

    :catch_16b
    move-exception v0

    move-object v1, v4

    goto/16 :goto_e8

    :catch_16f
    move-exception v0

    move-object v1, v4

    move-object v4, v5

    goto/16 :goto_e8

    :cond_174
    move v2, v3

    goto/16 :goto_e2

    :cond_177
    move-object v6, v4

    goto/16 :goto_78

    :cond_17a
    move v0, v1

    goto/16 :goto_38

    :cond_17d
    move v1, v2

    goto/16 :goto_3e
.end method
