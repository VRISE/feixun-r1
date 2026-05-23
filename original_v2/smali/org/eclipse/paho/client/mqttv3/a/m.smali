.class public Lorg/eclipse/paho/client/mqttv3/a/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/io/RandomAccessFile;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    const-string v0, "java.nio.channels.FileLock"

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    :try_start_13
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getChannel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tryLock"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_4c} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_4c} :catch_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_4c} :catch_63

    :goto_4c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    if-nez v0, :cond_67

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/m;->a()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Problem obtaining file lock"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5b
    move-exception v0

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    goto :goto_4c

    :catch_5f
    move-exception v0

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    goto :goto_4c

    :catch_63
    move-exception v0

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    goto :goto_4c

    :cond_67
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "release"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->c:Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_40

    :cond_1f
    :goto_1f
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2a

    :try_start_23
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_3e

    :goto_28
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->b:Ljava/io/RandomAccessFile;

    :cond_2a
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3b
    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/m;->a:Ljava/io/File;

    return-void

    :catch_3e
    move-exception v0

    goto :goto_28

    :catch_40
    move-exception v0

    goto :goto_1f
.end method
