.class public Lcom/unisound/common/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x186a0

.field public static final b:I = 0x186a1

.field public static final c:I = 0x186a2

.field public static final d:I = 0x186a3

.field public static final e:I = 0x186a4

.field public static final f:I = 0x186a5

.field public static final g:I = 0x186a6

.field public static final h:I = 0x186a7

.field public static final i:I = 0x186a8

.field public static final j:I = 0x186a9

.field public static final k:I = 0x186aa

.field private static final r:Ljava/lang/String; = "USCFourMic"

.field private static final s:Z


# instance fields
.field public l:Z

.field public m:Z

.field n:I

.field o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field private t:Landroid/media/AudioManager;

.field private u:Lcom/unisound/jni/Uni4micHalJNI;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/unisound/common/s;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/s;->w:Z

    iput-boolean v2, p0, Lcom/unisound/common/s;->l:Z

    iput-boolean v2, p0, Lcom/unisound/common/s;->m:Z

    iput v2, p0, Lcom/unisound/common/s;->n:I

    iput v2, p0, Lcom/unisound/common/s;->o:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/YunZhiSheng/4mic/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/common/s;->x:Z

    iput v2, p0, Lcom/unisound/common/s;->y:I

    iput-boolean v2, p0, Lcom/unisound/common/s;->z:Z

    iput-object p1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/unisound/common/s;->l:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/unisound/common/s;->m:Z

    if-eqz v0, :cond_d

    const-string v0, "USCFourMic"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private u()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/unisound/common/s;->d()I

    move-result v1

    if-ne v0, v1, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private v()Z
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UNI_4MIC_HAL_ANDROID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(II)I
    .registers 4

    div-int/lit8 v0, p1, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p2

    return v0
.end method

.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/s;->l:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->l:Z

    return v0
.end method

.method public a([BLjava/lang/String;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-direct {p0, p2}, Lcom/unisound/common/s;->b(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_10
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_2d
    .catchall {:try_start_10 .. :try_end_17} :catchall_3e

    :try_start_17
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_21} :catch_4d
    .catchall {:try_start_17 .. :try_end_21} :catchall_4b

    const/4 v0, 0x1

    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return v0

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catch_2d
    move-exception v0

    move-object v1, v2

    :goto_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_4b

    if-eqz v1, :cond_37

    :try_start_34
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39

    :cond_37
    :goto_37
    const/4 v0, 0x0

    goto :goto_27

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catchall_3e
    move-exception v0

    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_45

    :try_start_42
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    throw v0

    :catch_46
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    :catchall_4b
    move-exception v0

    goto :goto_40

    :catch_4d
    move-exception v0

    goto :goto_2f
.end method

.method public a([B)[[B
    .registers 9

    const/4 v2, 0x0

    const/4 v6, 0x2

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_12
    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    array-length v4, p1

    if-ge v3, v4, :cond_31

    mul-int/lit8 v3, v1, 0x4

    aget-object v4, v0, v2

    mul-int/lit8 v5, v1, 0x2

    invoke-static {p1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    aget-object v4, v0, v4

    mul-int/lit8 v5, v1, 0x2

    invoke-static {p1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_31
    return-object v0
.end method

.method public b()I
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public b(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeUpStatus(I)I

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log _set4MicWakeup -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_47

    const/4 v0, 0x1

    :goto_10
    iget-object v2, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v3, 0x186a4

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/common/s;->m:Z

    return-void

    :cond_47
    move v0, v1

    goto :goto_10
.end method

.method public b([B)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_real.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_2a
    return-void
.end method

.method public c()I
    .registers 2

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicDoaResult()I

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public c(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_2b
    return-void
.end method

.method public c(Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :cond_10
    iget-object v1, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v1, v0}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDebugMode(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDebugMode  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/unisound/common/s;->m:Z

    return-void
.end method

.method public c([B)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_asr.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_2a
    return-void
.end method

.method public d()I
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public d(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicUtteranceTimeLen(I)I

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "print debug log _set4MicDoaTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    iget-object v2, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v3, 0x186a6

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close4MicAlgorithm set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method public d([B)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/unisound/common/s;->f()Z

    move-result v0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/common/s;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vad.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/s;->a([BLjava/lang/String;)Z

    :cond_2a
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicBoardVersion()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public e(I)V
    .registers 3

    iget v0, p0, Lcom/unisound/common/s;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/unisound/common/s;->n:I

    return-void
.end method

.method public e(Z)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz p1, :cond_46

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v3, v0}, Lcom/unisound/jni/Uni4micHalJNI;->close4MicAlgorithm(I)I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "FourMicUtil"

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close4MicAlgorithm flag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_close4MicAlgorithm set To board  -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_45
    return-void

    :cond_46
    move v0, v2

    goto :goto_b
.end method

.method public f(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-gez p1, :cond_10

    move p1, v0

    :cond_10
    iget-object v1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v2, 0x186a5

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayTime -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public f(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2c

    iput-boolean p1, p0, Lcom/unisound/common/s;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {p0, v0}, Lcom/unisound/common/s;->m(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOneShotReadyFor4Mic -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "setOneShotReadyFor4Mic error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->m:Z

    return v0
.end method

.method public g()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/s;->n:I

    return-void
.end method

.method public g(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_2a

    if-gez p1, :cond_f

    const/4 p1, 0x0

    :cond_f
    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicDelayTime(I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDelayTime -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public g(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_2c

    iput-boolean p1, p0, Lcom/unisound/common/s;->x:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {p0, v0}, Lcom/unisound/common/s;->n(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOneShotReadyFor4Mic -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "setOneShotReadyFor4Mic error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/s;->n:I

    return v0
.end method

.method public h(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/s;->o:I

    return-void
.end method

.method public h(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/s;->z:Z

    return-void
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/s;->o:I

    return v0
.end method

.method public i(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneShotTimeStart -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "setOneShotTimeStart error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public i(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/s;->v:Z

    return-void
.end method

.method public j()I
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186aa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public j(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneShotTimeStart -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicOneShotStartLen(I)I

    :goto_27
    return-void

    :cond_28
    const-string v0, "_setOneShotTimeStart error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public j(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/s;->w:Z

    return-void
.end method

.method public k()I
    .registers 3

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->get4MicOneShotReady()I

    :cond_12
    return v1
.end method

.method public k(I)V
    .registers 5

    const v1, 0x7fffffff

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v2

    if-eqz v2, :cond_40

    if-gez p1, :cond_37

    const-string v1, "setStartWakeupTimeLen -> timeLen min"

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v0

    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStartWakeupTimeLen -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v2, 0x186a8

    invoke-virtual {v1, v2, v0, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_36
    return-void

    :cond_37
    if-le p1, v1, :cond_18

    const-string v2, "setStartWakeupTimeLen -> timeLen max"

    invoke-direct {p0, v2}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v1

    goto :goto_18

    :cond_40
    const-string v0, "setStartWakeupTimeLen error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public l(I)V
    .registers 4

    const v0, 0x7fffffff

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-gez p1, :cond_33

    const/4 p1, 0x0

    const-string v0, "setStartWakeupTimeLen -> timeLen min"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStartWakeupTimeLen -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicWakeupStartLen(I)I

    :goto_32
    return-void

    :cond_33
    if-le p1, v0, :cond_17

    const-string v1, "setStartWakeupTimeLen -> timeLen max"

    invoke-direct {p0, v1}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    move p1, v0

    goto :goto_17

    :cond_3c
    const-string v0, "setStartWakeupTimeLen error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_32
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->x:Z

    return v0
.end method

.method public m()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/s;->y:I

    return v0
.end method

.method public m(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0}, Lcom/unisound/common/s;->u()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneshotReady -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->t:Landroid/media/AudioManager;

    const v1, 0x186a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :goto_2b
    return-void

    :cond_2c
    const-string v0, "setOneshotReady error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_2b
.end method

.method public n()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public n(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/common/s;->a()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/unisound/common/s;->v()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOneshotReady -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, p1}, Lcom/unisound/jni/Uni4micHalJNI;->set4MicOneShotReady(I)I

    :goto_27
    return-void

    :cond_28
    const-string v0, "setOneshotReady error not 4mic"

    invoke-direct {p0, v0}, Lcom/unisound/common/s;->c(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public o(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->z:Z

    return v0
.end method

.method public p()Lcom/unisound/jni/Uni4micHalJNI;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    return-object v0
.end method

.method public p(I)V
    .registers 3

    iget v0, p0, Lcom/unisound/common/s;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/unisound/common/s;->y:I

    return-void
.end method

.method public q()I
    .registers 6

    const/4 v4, 0x1

    invoke-static {}, Lcom/unisound/jni/Uni4micHalJNI;->getInstance()Lcom/unisound/jni/Uni4micHalJNI;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0, v4}, Lcom/unisound/jni/Uni4micHalJNI;->init(I)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FourMicUtil"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFourMic status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    return v0
.end method

.method public r()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/common/s;->u:Lcom/unisound/jni/Uni4micHalJNI;

    invoke-virtual {v0}, Lcom/unisound/jni/Uni4micHalJNI;->release()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->v:Z

    return v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/s;->w:Z

    return v0
.end method
