.class public Lorg/eclipse/paho/client/mqttv3/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;


# static fields
.field private static final a:Ljava/lang/String; = ".msg"

.field private static final b:Ljava/lang/String; = ".bup"

.field private static final c:Ljava/lang/String; = ".lck"

.field private static final g:Ljava/io/FilenameFilter;


# instance fields
.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private f:Lorg/eclipse/paho/client/mqttv3/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/b/c;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/b/c;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/b/b;->g:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->f:Lorg/eclipse/paho/client/mqttv3/a/m;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    if-nez v0, :cond_a

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/b/d;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/client/mqttv3/b/d;-><init>(Lorg/eclipse/paho/client/mqttv3/b/b;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_12

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_12
    move v0, v1

    :goto_13
    array-length v3, v2

    if-lt v0, v3, :cond_17

    return-void

    :cond_17
    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".bup"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    aget-object v4, v2, v0

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private a(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private b()[Ljava/io/File;
    .registers 3

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/b/b;->g:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_13
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->b()[Ljava/io/File;

    move-result-object v1

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-lt v0, v2, :cond_c

    return-void

    :cond_c
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->f:Lorg/eclipse/paho/client/mqttv3/a/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->f:Lorg/eclipse/paho/client/mqttv3/a/m;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/m;->a()V

    :cond_a
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->b()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    :try_start_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ".msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    :goto_29
    if-lt v0, v1, :cond_3a

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/p;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/client/mqttv3/a/p;-><init>(Ljava/lang/String;[BII[BII)V

    return-object v0

    :cond_3a
    sub-int v4, v1, v0

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3f} :catch_42

    move-result v4

    add-int/2addr v0, v4

    goto :goto_29

    :catch_42
    move-exception v0

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->b()[Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/Vector;-><init>(I)V

    move v0, v1

    :goto_f
    array-length v4, v2

    if-lt v0, v4, :cond_17

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0

    :cond_17
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ".msg"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_17
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_2d
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    :cond_3b
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_83

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_93

    monitor-enter p0

    :try_start_53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    if-nez v0, :cond_71

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->d:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_ac

    :cond_71
    :try_start_71
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/m;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    const-string v2, ".lck"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/m;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->f:Lorg/eclipse/paho/client/mqttv3/a/m;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_a3
    .catchall {:try_start_71 .. :try_end_7c} :catchall_ac

    :try_start_7c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a(Ljava/io/File;)V

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_ac

    return-void

    :cond_83
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/eclipse/paho/client/mqttv3/b/b;->a(C)Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_90
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_93
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a(C)Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :catch_a3
    move-exception v0

    :try_start_a4
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    const/16 v1, 0x7dc8

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(I)V

    throw v0

    :catchall_ac
    move-exception v0

    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_ac

    throw v0
.end method

.method public put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    .registers 9

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ".msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ".bup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_4f
    :try_start_4f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderBytes()[B

    move-result-object v3

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderOffset()I

    move-result v4

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderLength()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v3

    if-eqz v3, :cond_78

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v3

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadOffset()I

    move-result v4

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadLength()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_78
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_8b} :catch_9e
    .catchall {:try_start_4f .. :try_end_8b} :catchall_a5

    :cond_8b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9d

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_9d
    return-void

    :catch_9e
    move-exception v0

    :try_start_9f
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v3, v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b8

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_b8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_b8
    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/b/b;->a()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/b/b;->e:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_26
    return-void
.end method
