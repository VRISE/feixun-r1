.class public Lcom/unisound/vui/util/ShellUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkRootPermission()Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "echo root"

    invoke-static {v2, v0, v1}, Lcom/unisound/vui/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v2

    iget v2, v2, Lcom/unisound/vui/util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, v2}, Lcom/unisound/vui/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 5
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lcom/unisound/vui/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/unisound/vui/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/unisound/vui/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 4
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/unisound/vui/util/ShellUtils$CommandResult;"
        }
    .end annotation

    .prologue
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-static {v0, p1, p2}, Lcom/unisound/vui/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 3
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/unisound/vui/util/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/unisound/vui/util/ShellUtils$CommandResult;
    .registers 14
    .param p0, "commands"    # [Ljava/lang/String;
    .param p1, "isRoot"    # Z
    .param p2, "isNeedResultMsg"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_7

    array-length v0, p0

    if-nez v0, :cond_d

    :cond_7
    new-instance v0, Lcom/unisound/vui/util/ShellUtils$CommandResult;

    invoke-direct {v0, v2, v3, v3}, Lcom/unisound/vui/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    if-eqz p1, :cond_2d

    const-string v0, "su"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_172
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_18} :catch_13a
    .catchall {:try_start_d .. :try_end_18} :catchall_100

    move-result-object v8

    :try_start_19
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_17c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_144
    .catchall {:try_start_19 .. :try_end_22} :catchall_12a

    :try_start_22
    array-length v1, p0

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v1, :cond_6b

    aget-object v5, p0, v0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_40
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_14d
    .catchall {:try_start_22 .. :try_end_28} :catchall_12e

    if-nez v5, :cond_30

    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2d
    :try_start_2d
    const-string v0, "sh"
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2f} :catch_172
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2f} :catch_13a
    .catchall {:try_start_2d .. :try_end_2f} :catchall_100

    goto :goto_15

    :cond_30
    :try_start_30
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3f} :catch_14d
    .catchall {:try_start_30 .. :try_end_3f} :catchall_12e

    goto :goto_2a

    :catch_40
    move-exception v0

    move-object v5, v4

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v4, v0

    move-object v0, v3

    :goto_47
    :try_start_47
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_136

    if-eqz v5, :cond_4f

    :try_start_4c
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_4f
    if-eqz v7, :cond_54

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_54
    if-eqz v6, :cond_59

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_59} :catch_f5

    :cond_59
    :goto_59
    if-eqz v8, :cond_5e

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_5e
    :goto_5e
    new-instance v4, Lcom/unisound/vui/util/ShellUtils$CommandResult;

    if-nez v1, :cond_11e

    move-object v1, v3

    :goto_63
    if-nez v0, :cond_124

    move-object v0, v3

    :goto_66
    invoke-direct {v4, v2, v1, v0}, Lcom/unisound/vui/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_c

    :cond_6b
    :try_start_6b
    const-string v0, "exit\n"

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    move-result v2

    if-eqz p2, :cond_1a1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_7e} :catch_40
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7e} :catch_14d
    .catchall {:try_start_6b .. :try_end_7e} :catchall_12e

    :try_start_7e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_185
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_156
    .catchall {:try_start_7e .. :try_end_83} :catchall_12e

    :try_start_83
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_91} :catch_18e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_15f
    .catchall {:try_start_83 .. :try_end_91} :catchall_12e

    :try_start_91
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9f} :catch_198
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9f} :catch_169
    .catchall {:try_start_91 .. :try_end_9f} :catchall_131

    :goto_9f
    :try_start_9f
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9f

    :catch_a9
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_47

    :cond_b0
    :goto_b0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_b9} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b9} :catch_ba
    .catchall {:try_start_9f .. :try_end_b9} :catchall_133

    goto :goto_b0

    :catch_ba
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v10

    :goto_c0
    :try_start_c0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_136

    if-eqz v5, :cond_c8

    :try_start_c5
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    :cond_c8
    if-eqz v7, :cond_cd

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_cd
    if-eqz v6, :cond_d2

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d2} :catch_fb

    :cond_d2
    :goto_d2
    if-eqz v8, :cond_5e

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto :goto_5e

    :cond_d8
    move-object v0, v1

    move-object v1, v5

    :goto_da
    if-eqz v4, :cond_df

    :try_start_dc
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_df
    if-eqz v7, :cond_e4

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_e4
    if-eqz v6, :cond_e9

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_e9} :catch_f0

    :cond_e9
    :goto_e9
    if-eqz v8, :cond_5e

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_5e

    :catch_f0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e9

    :catch_f5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_59

    :catch_fb
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    :catchall_100
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    move-object v8, v3

    :goto_104
    if-eqz v4, :cond_109

    :try_start_106
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_109
    if-eqz v7, :cond_10e

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    :cond_10e
    if-eqz v3, :cond_113

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_113} :catch_119

    :cond_113
    :goto_113
    if-eqz v8, :cond_118

    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    :cond_118
    throw v0

    :catch_119
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_113

    :cond_11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_63

    :cond_124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_66

    :catchall_12a
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    goto :goto_104

    :catchall_12e
    move-exception v0

    move-object v7, v3

    goto :goto_104

    :catchall_131
    move-exception v0

    goto :goto_104

    :catchall_133
    move-exception v0

    move-object v3, v6

    goto :goto_104

    :catchall_136
    move-exception v0

    move-object v4, v5

    move-object v3, v6

    goto :goto_104

    :catch_13a
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto/16 :goto_c0

    :catch_144
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_c0

    :catch_14d
    move-exception v0

    move-object v5, v4

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_c0

    :catch_156
    move-exception v0

    move-object v1, v5

    move-object v6, v3

    move-object v7, v3

    move-object v5, v4

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_c0

    :catch_15f
    move-exception v0

    move-object v6, v3

    move-object v7, v3

    move-object v10, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_c0

    :catch_169
    move-exception v0

    move-object v6, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v10

    goto/16 :goto_c0

    :catch_172
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v0, v3

    goto/16 :goto_47

    :catch_17c
    move-exception v0

    move-object v4, v0

    move-object v5, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    move-object v0, v3

    goto/16 :goto_47

    :catch_185
    move-exception v0

    move-object v1, v5

    move-object v6, v3

    move-object v7, v3

    move-object v5, v4

    move-object v4, v0

    move-object v0, v3

    goto/16 :goto_47

    :catch_18e
    move-exception v0

    move-object v6, v3

    move-object v7, v3

    move-object v10, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v10

    goto/16 :goto_47

    :catch_198
    move-exception v0

    move-object v6, v3

    move-object v10, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v10

    goto/16 :goto_47

    :cond_1a1
    move-object v0, v3

    move-object v1, v3

    move-object v6, v3

    move-object v7, v3

    goto/16 :goto_da
.end method
