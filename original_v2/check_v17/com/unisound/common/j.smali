.class public Lcom/unisound/common/j;
.super Ljava/lang/Object;


# static fields
.field public static a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/common/j;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_6c
    .catchall {:try_start_9 .. :try_end_10} :catchall_4c

    move-result-object v3

    :try_start_11
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_6f
    .catchall {:try_start_11 .. :try_end_16} :catchall_64

    const/16 v4, 0x2800

    :try_start_18
    new-array v4, v4, [B

    :goto_1a
    const/4 v5, 0x0

    const/16 v6, 0x2800

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_36

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_29
    .catchall {:try_start_18 .. :try_end_28} :catchall_67

    goto :goto_1a

    :catch_29
    move-exception v2

    move-object v2, v3

    :goto_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_5c

    :cond_30
    :goto_30
    if-eqz v1, :cond_35

    :try_start_32
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_5e

    :cond_35
    :goto_35
    return v0

    :cond_36
    :try_start_36
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_29
    .catchall {:try_start_36 .. :try_end_39} :catchall_67

    const/4 v3, 0x0

    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_73
    .catchall {:try_start_3a .. :try_end_3d} :catchall_69

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz v2, :cond_44

    :try_start_41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_5a

    :cond_44
    :goto_44
    if-eqz v2, :cond_35

    :try_start_46
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_35

    :catch_4a
    move-exception v1

    goto :goto_35

    :catchall_4c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4f
    if-eqz v3, :cond_54

    :try_start_51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_60

    :cond_54
    :goto_54
    if-eqz v1, :cond_59

    :try_start_56
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_62

    :cond_59
    :goto_59
    throw v0

    :catch_5a
    move-exception v3

    goto :goto_44

    :catch_5c
    move-exception v2

    goto :goto_30

    :catch_5e
    move-exception v1

    goto :goto_35

    :catch_60
    move-exception v2

    goto :goto_54

    :catch_62
    move-exception v1

    goto :goto_59

    :catchall_64
    move-exception v0

    move-object v1, v2

    goto :goto_4f

    :catchall_67
    move-exception v0

    goto :goto_4f

    :catchall_69
    move-exception v0

    move-object v3, v2

    goto :goto_4f

    :catch_6c
    move-exception v1

    move-object v1, v2

    goto :goto_2b

    :catch_6f
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2b

    :catch_73
    move-exception v3

    goto :goto_2b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {p3, v0}, Lcom/unisound/common/aa;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    invoke-static {p0, p1, v0}, Lcom/unisound/common/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    goto :goto_12
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-static {p0}, Lcom/unisound/common/j;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;II)Z
    .registers 9

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    :try_start_e
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_3f
    .catchall {:try_start_e .. :try_end_15} :catchall_4f

    :try_start_15
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1, p1, p2}, Lcom/unisound/common/be;->a(III)[B

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_28} :catch_5e
    .catchall {:try_start_15 .. :try_end_28} :catchall_5c

    const/4 v0, 0x1

    if-eqz v2, :cond_d

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_d

    :catch_2f
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :cond_34
    if-eqz v2, :cond_d

    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_d

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catch_3f
    move-exception v1

    move-object v2, v3

    :goto_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5c

    if-eqz v2, :cond_d

    :try_start_46
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_d

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    :catchall_4f
    move-exception v0

    move-object v2, v3

    :goto_51
    if-eqz v2, :cond_56

    :try_start_53
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    :cond_56
    :goto_56
    throw v0

    :catch_57
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    :catchall_5c
    move-exception v0

    goto :goto_51

    :catch_5e
    move-exception v1

    goto :goto_41
.end method

.method public static a(ZILjava/lang/String;)Z
    .registers 7

    if-eqz p2, :cond_49

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-static {p2}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {p2}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p0, :cond_33

    int-to-short v0, p1

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    :goto_1b
    :try_start_1b
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_22} :catch_3f
    .catchall {:try_start_1b .. :try_end_22} :catchall_50

    :try_start_22
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_5f
    .catchall {:try_start_22 .. :try_end_2c} :catchall_5d

    const/4 v0, 0x1

    if-eqz v1, :cond_32

    :try_start_2f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_3a

    :cond_32
    :goto_32
    return v0

    :cond_33
    neg-int v0, p1

    int-to-short v0, v0

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    goto :goto_1b

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_3f
    move-exception v0

    move-object v1, v2

    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_5d

    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    :cond_49
    :goto_49
    const/4 v0, 0x0

    goto :goto_32

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catchall_50
    move-exception v0

    move-object v1, v2

    :goto_52
    if-eqz v1, :cond_57

    :try_start_54
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    throw v0

    :catch_58
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_57

    :catchall_5d
    move-exception v0

    goto :goto_52

    :catch_5f
    move-exception v0

    goto :goto_41
.end method

.method public static a(ZLjava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_4a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {p1}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p0, :cond_34

    const/16 v0, 0x7fff

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    :goto_1c
    :try_start_1c
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_40
    .catchall {:try_start_1c .. :try_end_23} :catchall_51

    :try_start_23
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_60
    .catchall {:try_start_23 .. :try_end_2d} :catchall_5e

    const/4 v0, 0x1

    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3b

    :cond_33
    :goto_33
    return v0

    :cond_34
    const/16 v0, -0x7fff

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    goto :goto_1c

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catch_40
    move-exception v0

    move-object v1, v2

    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5e

    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    goto :goto_33

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catchall_51
    move-exception v0

    move-object v1, v2

    :goto_53
    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    throw v0

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catchall_5e
    move-exception v0

    goto :goto_53

    :catch_60
    move-exception v0

    goto :goto_42
.end method

.method public static a([BLjava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_3b

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {p1}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_14
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_31
    .catchall {:try_start_14 .. :try_end_1b} :catchall_42

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_51
    .catchall {:try_start_1b .. :try_end_25} :catchall_4f

    const/4 v0, 0x1

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return v0

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    :catch_31
    move-exception v0

    move-object v1, v2

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_4f

    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    goto :goto_2b

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catchall_42
    move-exception v0

    move-object v1, v2

    :goto_44
    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catchall_4f
    move-exception v0

    goto :goto_44

    :catch_51
    move-exception v0

    goto :goto_33
.end method

.method public static a(Landroid/content/Context;)[B
    .registers 4

    sget-object v0, Lcom/unisound/common/j;->a:[B

    if-nez v0, :cond_13

    const-string v0, "empty"

    invoke-static {p0, v0}, Lcom/unisound/common/j;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1900

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    sput-object v0, Lcom/unisound/common/j;->a:[B

    :cond_13
    sget-object v0, Lcom/unisound/common/j;->a:[B

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)[B
    .registers 10

    const/16 v6, 0x1900

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_27
    .catchall {:try_start_4 .. :try_end_b} :catchall_38

    move-result-object v3

    const/16 v0, 0x1900

    :try_start_e
    new-array v1, v0, [B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_10} :catch_4a
    .catchall {:try_start_e .. :try_end_10} :catchall_45

    const/4 v0, 0x0

    :try_start_11
    array-length v5, v1

    invoke-virtual {v3, v1, v0, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_4e
    .catchall {:try_start_11 .. :try_end_15} :catchall_45

    move-result v0

    const/4 v3, 0x0

    if-eqz v2, :cond_54

    :try_start_19
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_22

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_1f
    if-lez v1, :cond_40

    :goto_21
    return-object v0

    :catch_22
    move-exception v2

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1f

    :catch_27
    move-exception v0

    move-object v1, v2

    :goto_29
    :try_start_29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_47

    if-eqz v2, :cond_51

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_34

    move-object v0, v1

    move v1, v4

    goto :goto_1f

    :catch_34
    move-exception v0

    move-object v0, v1

    move v1, v4

    goto :goto_1f

    :catchall_38
    move-exception v0

    move-object v3, v2

    :goto_3a
    if-eqz v3, :cond_3f

    :try_start_3c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_43

    :cond_3f
    :goto_3f
    throw v0

    :cond_40
    new-array v0, v6, [B

    goto :goto_21

    :catch_43
    move-exception v1

    goto :goto_3f

    :catchall_45
    move-exception v0

    goto :goto_3a

    :catchall_47
    move-exception v0

    move-object v3, v2

    goto :goto_3a

    :catch_4a
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_29

    :catch_4e
    move-exception v0

    move-object v2, v3

    goto :goto_29

    :cond_51
    move-object v0, v1

    move v1, v4

    goto :goto_1f

    :cond_54
    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_1f
.end method

.method public static a(S)[B
    .registers 5

    const/4 v3, 0x2

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_10

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/unisound/common/j;->e(Ljava/lang/String;)Lcom/unisound/common/k;

    move-result-object v0

    sget-object v1, Lcom/unisound/common/k;->c:Lcom/unisound/common/k;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static b(ZLjava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_4a

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-static {p1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {p1}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p0, :cond_34

    const/16 v0, 0x6d60

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    :goto_1c
    :try_start_1c
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_23} :catch_40
    .catchall {:try_start_1c .. :try_end_23} :catchall_51

    :try_start_23
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_60
    .catchall {:try_start_23 .. :try_end_2d} :catchall_5e

    const/4 v0, 0x1

    if-eqz v1, :cond_33

    :try_start_30
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3b

    :cond_33
    :goto_33
    return v0

    :cond_34
    const/16 v0, -0x6d60

    invoke-static {v0}, Lcom/unisound/common/j;->a(S)[B

    move-result-object v0

    goto :goto_1c

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_33

    :catch_40
    move-exception v0

    move-object v1, v2

    :goto_42
    :try_start_42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_5e

    if-eqz v1, :cond_4a

    :try_start_47
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    goto :goto_33

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    :catchall_51
    move-exception v0

    move-object v1, v2

    :goto_53
    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    :cond_58
    :goto_58
    throw v0

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    :catchall_5e
    move-exception v0

    goto :goto_53

    :catch_60
    move-exception v0

    goto :goto_42
.end method

.method public static b([BLjava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_3b

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {p1}, Lcom/unisound/common/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {p1}, Lcom/unisound/common/j;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_14
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_31
    .catchall {:try_start_14 .. :try_end_1b} :catchall_42

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_51
    .catchall {:try_start_1b .. :try_end_25} :catchall_4f

    const/4 v0, 0x1

    if-eqz v1, :cond_2b

    :try_start_28
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return v0

    :catch_2c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    :catch_31
    move-exception v0

    move-object v1, v2

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_4f

    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3d

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    goto :goto_2b

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    :catchall_42
    move-exception v0

    move-object v1, v2

    :goto_44
    if-eqz v1, :cond_49

    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v0

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catchall_4f
    move-exception v0

    goto :goto_44

    :catch_51
    move-exception v0

    goto :goto_33
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-static {p0}, Lcom/unisound/common/j;->f(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private static d(Ljava/lang/String;)V
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

.method private static e(Ljava/lang/String;)Lcom/unisound/common/k;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, ""

    if-lez v1, :cond_7

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v0, Lcom/unisound/common/k;->a:Lcom/unisound/common/k;

    goto :goto_7

    :cond_21
    const-string v1, "pcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    sget-object v0, Lcom/unisound/common/k;->b:Lcom/unisound/common/k;

    goto :goto_7

    :cond_2c
    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/unisound/common/k;->c:Lcom/unisound/common/k;

    goto :goto_7

    :cond_37
    sget-object v0, Lcom/unisound/common/k;->d:Lcom/unisound/common/k;

    goto :goto_7
.end method

.method private static f(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/unisound/common/j;->e(Ljava/lang/String;)Lcom/unisound/common/k;

    move-result-object v0

    sget-object v1, Lcom/unisound/common/k;->b:Lcom/unisound/common/k;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/unisound/common/k;->c:Lcom/unisound/common/k;

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const-string v0, "fileName illegal"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_d
.end method
