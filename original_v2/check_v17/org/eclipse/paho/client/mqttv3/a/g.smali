.class public Lorg/eclipse/paho/client/mqttv3/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lorg/eclipse/paho/client/mqttv3/a/e;

.field private g:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

.field private i:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private j:Ljava/lang/Thread;

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.a.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->a:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/InputStream;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/a/b/f;-><init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "850"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_39

    move-result v0

    if-nez v0, :cond_29

    :try_start_24
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_3c
    .catchall {:try_start_24 .. :try_end_29} :catchall_39

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_39

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catch_3c
    move-exception v0

    goto :goto_29
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "855"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    return v0
.end method

.method public run()V
    .registers 9

    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    :goto_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    if-nez v0, :cond_17

    :cond_b
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    :try_start_17
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "852"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/f;->available()I

    move-result v0

    if-lez v0, :cond_50

    const/4 v0, 0x1

    :goto_2b
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->h:Lorg/eclipse/paho/client/mqttv3/a/b/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/f;->a()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    instance-of v2, v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v2, :cond_99

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v1

    if-eqz v1, :cond_6d

    monitor-enter v1
    :try_end_43
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_17 .. :try_end_43} :catch_55
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_43} :catch_74
    .catchall {:try_start_17 .. :try_end_43} :catchall_a0

    :try_start_43
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/b;)V

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_52

    move-object v0, v1

    :goto_4c
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    move-object v1, v0

    goto :goto_3

    :cond_50
    move v0, v7

    goto :goto_2b

    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v0
    :try_end_55
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_54 .. :try_end_55} :catch_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_74
    .catchall {:try_start_54 .. :try_end_55} :catchall_a0

    :catch_55
    move-exception v5

    move-object v6, v1

    :try_start_57
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "856"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, v6, v5}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_6b
    .catchall {:try_start_57 .. :try_end_6b} :catchall_a0

    move-object v0, v6

    goto :goto_4c

    :cond_6d
    :try_start_6d
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0
    :try_end_74
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_6d .. :try_end_74} :catch_55
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_74} :catch_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_a0

    :catch_74
    move-exception v0

    :try_start_75
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/g;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "853"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->d:Z

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v2

    if-nez v2, :cond_a4

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v4, 0x7d6d

    invoke-direct {v3, v4, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_97
    .catchall {:try_start_75 .. :try_end_97} :catchall_a0

    move-object v0, v1

    goto :goto_4c

    :cond_99
    :try_start_99
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    :try_end_9e
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_99 .. :try_end_9e} :catch_55
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9e} :catch_74
    .catchall {:try_start_99 .. :try_end_9e} :catchall_a0

    move-object v0, v1

    goto :goto_4c

    :catchall_a0
    move-exception v0

    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/g;->k:Z

    throw v0

    :cond_a4
    move-object v0, v1

    goto :goto_4c
.end method
