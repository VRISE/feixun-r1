.class public Lorg/eclipse/paho/client/mqttv3/a/h;
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

.field private g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

.field private h:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private i:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private j:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->a:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.a.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->a:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/e;Lorg/eclipse/paho/client/mqttv3/a/i;Ljava/io/OutputStream;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-direct {v0, p2, p4}, Lorg/eclipse/paho/client/mqttv3/a/b/g;-><init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V
    .registers 9

    const/4 v4, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    instance-of v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_22

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    move-object p2, v0

    :goto_19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->h:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, v4, p2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void

    :cond_22
    check-cast p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_19
.end method


# virtual methods
.method public a()V
    .registers 6

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "800"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3b

    move-result v0

    if-nez v0, :cond_2b

    :try_start_21
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->h()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_2b} :catch_3e
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3b

    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    :try_start_2c
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "801"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_2c .. :try_end_3d} :catchall_3b

    throw v0

    :catch_3e
    move-exception v0

    goto :goto_2b
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-nez v0, :cond_16

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public run()V
    .registers 9

    const/4 v0, 0x0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    if-nez v1, :cond_15

    :cond_9
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "805"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    :try_start_15
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->e()Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    if-eqz v0, :cond_71

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "802"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v1, v0, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->flush()V
    :try_end_43
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_15 .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_43} :catch_66

    goto :goto_1

    :catch_44
    move-exception v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/h;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_49
    :try_start_49
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->i:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v2

    if-eqz v2, :cond_1

    monitor-enter v2
    :try_end_52
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_49 .. :try_end_52} :catch_44
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_66

    :try_start_52
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_63

    :try_start_57
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->g:Lorg/eclipse/paho/client/mqttv3/a/b/g;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b/g;->flush()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_6b
    .catchall {:try_start_57 .. :try_end_5c} :catchall_63

    :cond_5c
    :try_start_5c
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->f:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V

    monitor-exit v2

    goto :goto_1

    :catchall_63
    move-exception v1

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    :try_start_65
    throw v1
    :try_end_66
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_65 .. :try_end_66} :catch_44
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    :catch_66
    move-exception v1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/h;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_6b
    move-exception v1

    :try_start_6c
    instance-of v3, v0, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    if-nez v3, :cond_5c

    throw v1
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_63

    :cond_71
    :try_start_71
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/h;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/h;->b:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "803"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/h;->d:Z
    :try_end_7f
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_71 .. :try_end_7f} :catch_44
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7f} :catch_66

    goto :goto_1
.end method
