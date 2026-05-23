.class public Lorg/eclipse/paho/client/mqttv3/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static b:Ljava/lang/Class; = null

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final e:I = 0xa


# instance fields
.field public a:Z

.field private f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

.field private g:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Thread;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Lorg/eclipse/paho/client/mqttv3/a/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->b:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.a.f"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->b:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/a;)V
    .registers 4

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "handleMessage"

    const-string v4, "713"

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->i()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    aput-object v0, v5, v9

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v9, :cond_52

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b/k;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/k;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;->g()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v0

    if-ne v0, v10, :cond_51

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/l;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/l;-><init>(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    goto :goto_51
.end method

.method private c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 10

    monitor-enter p1

    :try_start_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "handleActionComplete"

    const-string v4, "705"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->j()V

    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->t()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v1, :cond_3c

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    move-object v0, p1

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-object v1, v0

    invoke-interface {v2, v1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V

    :cond_3c
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_3f
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_57

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    if-nez v1, :cond_51

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v1

    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v1, :cond_57

    :cond_51
    iget-object v1, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Z)V

    :cond_57
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_62
    monitor-exit p1

    return-void

    :catchall_64
    move-exception v1

    monitor-exit p1
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_64

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_3a

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "700"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_4f

    move-result v0

    if-nez v0, :cond_3a

    :try_start_21
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_4d
    .catchall {:try_start_21 .. :try_end_24} :catchall_4f

    :try_start_24
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "701"

    invoke-interface {v0, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_4a

    :try_start_35
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3a} :catch_4d
    .catchall {:try_start_35 .. :try_end_3a} :catchall_4f

    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    :try_start_3b
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "703"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_3b .. :try_end_49} :catchall_4f

    return-void

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4d} :catch_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4f

    :catch_4d
    move-exception v0

    goto :goto_3a

    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "connectionLost"

    const-string v3, "708"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttCallback;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "connectionLost"

    const-string v4, "720"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getActionCallback()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    if-nez v1, :cond_29

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "fireActionEvent"

    const-string v4, "716"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "fireActionEvent"

    const-string v4, "716"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v6}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getException()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .registers 7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->f:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :goto_7
    :try_start_7
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_38

    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_4d

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_26
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "710"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_50

    :cond_37
    return-void

    :cond_38
    :try_start_38
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "709"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_4a} :catch_4b
    .catchall {:try_start_38 .. :try_end_4a} :catchall_4d

    goto :goto_7

    :catch_4b
    move-exception v0

    goto :goto_7

    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/e;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    return-void
.end method

.method public b()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "711"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 10

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "715"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v7}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_2a
    return-void

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    :try_start_2e
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/f;->c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_2a

    :catch_32
    move-exception v5

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "asyncOperationComplete"

    const-string v3, "719"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v4, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    goto :goto_2a
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected d()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->l:Ljava/lang/Thread;

    return-object v0
.end method

.method public run()V
    .registers 8

    const/4 v6, 0x0

    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-nez v0, :cond_6

    return-void

    :cond_6
    :try_start_6
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_97
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_9c
    .catchall {:try_start_6 .. :try_end_9} :catchall_b8

    :try_start_9
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "704"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_94

    :goto_2e
    :try_start_2e
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    if-eqz v0, :cond_72

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    monitor-enter v1
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_9c
    .catchall {:try_start_2e .. :try_end_35} :catchall_b8

    :try_start_35
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->i:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_35 .. :try_end_4d} :catchall_99

    if-eqz v0, :cond_52

    :try_start_4f
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->c(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_52
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    monitor-enter v1
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_55} :catch_9c
    .catchall {:try_start_4f .. :try_end_55} :catchall_b8

    :try_start_55
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->h:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    :goto_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_ce

    if-eqz v0, :cond_72

    :try_start_6f
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    :cond_72
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->j:Z

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->o:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->f()Z
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7b} :catch_9c
    .catchall {:try_start_6f .. :try_end_7b} :catchall_b8

    :cond_7b
    :goto_7b
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7e
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v3, "run"

    const-string v4, "706"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_1

    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_7e .. :try_end_93} :catchall_91

    throw v0

    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_97} :catch_97
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_97} :catch_9c
    .catchall {:try_start_96 .. :try_end_97} :catchall_b8

    :catch_97
    move-exception v0

    goto :goto_2e

    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v0
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9c} :catch_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_b8

    :catch_9c
    move-exception v5

    :try_start_9d
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "714"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->a:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->g:Lorg/eclipse/paho/client/mqttv3/a/a;

    const/4 v1, 0x0

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v2, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_b7
    .catchall {:try_start_9d .. :try_end_b7} :catchall_b8

    goto :goto_7b

    :catchall_b8
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_bc
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/f;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/f;->c:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/f;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_bc .. :try_end_cd} :catchall_d1

    throw v0

    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit v1
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v0
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d1} :catch_9c
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_b8

    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v1
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    :cond_d4
    move-object v0, v6

    goto :goto_6c

    :cond_d6
    move-object v0, v6

    goto/16 :goto_4c
.end method
