.class public Lcom/unisound/common/az;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "VprHttpClient : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "create filedir failure!"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_29
    :try_start_29
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    :goto_2c
    return-object v0

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_3
    invoke-static {p1}, Lcom/unisound/common/az;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_50
    .catchall {:try_start_3 .. :try_end_12} :catchall_7c

    const/16 v3, 0x7530

    :try_start_14
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_b8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2a} :catch_a6
    .catchall {:try_start_14 .. :try_end_2a} :catchall_94

    move-result-object v5

    :try_start_2b
    invoke-static {v5}, Lcom/unisound/common/az;->a(Ljava/io/InputStream;)[B

    move-result-object v7

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_ab
    .catchall {:try_start_2b .. :try_end_34} :catchall_99

    :try_start_34
    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_b1
    .catchall {:try_start_34 .. :try_end_3a} :catchall_9d

    :goto_3a
    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3f
    if-eqz v3, :cond_44

    :try_start_41
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_44
    if-eqz v5, :cond_49

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_49} :catch_4b

    :cond_49
    :goto_49
    move v0, v1

    :goto_4a
    return v0

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_50
    move-exception v0

    move-object v1, v4

    move-object v3, v4

    :goto_53
    const/4 v5, 0x2

    :try_start_54
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "VprHttpClient : "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "getVPRAudio wrong!"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_54 .. :try_end_66} :catchall_a2

    if-eqz v3, :cond_6b

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6b
    if-eqz v1, :cond_70

    :try_start_6d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_70
    if-eqz v4, :cond_75

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_75} :catch_77

    :cond_75
    :goto_75
    move v0, v2

    goto :goto_4a

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_75

    :catchall_7c
    move-exception v0

    move-object v5, v4

    move-object v3, v4

    :goto_7f
    if-eqz v3, :cond_84

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_84
    if-eqz v4, :cond_89

    :try_start_86
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_89
    if-eqz v5, :cond_8e

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8e} :catch_8f

    :cond_8e
    :goto_8e
    throw v0

    :catch_8f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8e

    :catchall_94
    move-exception v1

    move-object v5, v4

    move-object v3, v0

    move-object v0, v1

    goto :goto_7f

    :catchall_99
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_7f

    :catchall_9d
    move-exception v1

    move-object v4, v3

    move-object v3, v0

    move-object v0, v1

    goto :goto_7f

    :catchall_a2
    move-exception v0

    move-object v5, v4

    move-object v4, v1

    goto :goto_7f

    :catch_a6
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_53

    :catch_ab
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v5

    goto :goto_53

    :catch_b1
    move-exception v1

    move-object v4, v5

    move-object v8, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_53

    :cond_b8
    move-object v3, v4

    move-object v5, v4

    goto :goto_3a
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
