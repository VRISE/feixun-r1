.class public Lorg/eclipse/paho/client/mqttv3/a/u;
.super Ljava/lang/Object;


# static fields
.field static b:Ljava/lang/Class;

.field private static final c:Ljava/lang/String;

.field private static final d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field protected a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

.field private volatile e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

.field private k:Lorg/eclipse/paho/client/mqttv3/MqttException;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

.field private o:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private p:Ljava/lang/Object;

.field private q:I

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->b:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.a.u"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->b:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->l:[Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->n:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->o:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->p:Ljava/lang/Object;

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->q:I

    iput-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->r:Z

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->q:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->q:I

    return-void
.end method

.method public a(J)V
    .registers 12

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForCompletion"

    const-string v3, "407"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v4, v7

    aput-object p0, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/u;->b(J)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    if-nez v0, :cond_4b

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    if-nez v0, :cond_4b

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForCompletion"

    const-string v3, "406"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p0, v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d00

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :cond_4b
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->b()Z

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->p:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->o:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->n:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 11

    const/4 v7, 0x1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "markComplete"

    const-string v3, "404"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v7

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1e
    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/b;

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    monitor-exit v1

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->r:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->l:[Ljava/lang/String;

    return-void
.end method

.method protected b(J)Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .registers 12

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForResponse"

    const-string v3, "400"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/lang/Boolean;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v5

    const/4 v5, 0x3

    new-instance v7, Ljava/lang/Boolean;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    invoke-direct {v7, v8}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v4, v5

    const/4 v7, 0x4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v5, :cond_69

    const-string v5, "false"

    :goto_38
    aput-object v5, v4, v7

    const/4 v5, 0x5

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    aput-object v7, v4, v5

    const/4 v5, 0x6

    aput-object p0, v4, v5

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_47
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    if-eqz v0, :cond_6c

    :goto_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_b1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForResponse"

    const-string v3, "402"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    return-object v0

    :cond_69
    :try_start_69
    const-string v5, "true"

    goto :goto_38

    :cond_6c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_b1

    if-nez v0, :cond_98

    :try_start_70
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForResponse"

    const-string v3, "408"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v7, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_b4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_70 .. :try_end_98} :catch_ba
    .catchall {:try_start_70 .. :try_end_98} :catchall_b1

    :cond_98
    :goto_98
    :try_start_98
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v0, :cond_c3

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "waitForResponse"

    const-string v3, "401"

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :catchall_b1
    move-exception v0

    monitor-exit v6
    :try_end_b3
    .catchall {:try_start_98 .. :try_end_b3} :catchall_b1

    throw v0

    :cond_b4
    :try_start_b4
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_b9
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_b9} :catch_ba
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_b1

    goto :goto_98

    :catch_ba
    move-exception v0

    :try_start_bb
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_b1

    goto :goto_98

    :cond_c3
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_47

    goto :goto_4b
.end method

.method public b()Z
    .registers 2

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lorg/eclipse/paho/client/mqttv3/MqttException;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    return v0
.end method

.method protected e()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    return v0
.end method

.method protected f()Z
    .registers 2

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->m()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->d()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public g()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->o:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    return-object v0
.end method

.method public h()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(J)V

    return-void
.end method

.method protected i()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .registers 3

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->b(J)Lorg/eclipse/paho/client/mqttv3/a/b/u;

    move-result-object v0

    return-object v0
.end method

.method protected j()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "notifyComplete"

    const-string v3, "404"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_22
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    :goto_30
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_47

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_3a
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_4a

    return-void

    :cond_43
    const/4 v0, 0x0

    :try_start_44
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->f:Z

    goto :goto_30

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_47

    throw v0

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public k()V
    .registers 9

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    :try_start_6
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    :try_start_f
    throw v0

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_10

    throw v0

    :cond_13
    :try_start_13
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_d

    :goto_14
    :try_start_14
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_43

    const/4 v0, 0x6

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_10

    :cond_26
    :try_start_26
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v3, "waitUntilSent"

    const-string v4, "409"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_40} :catch_41
    .catchall {:try_start_26 .. :try_end_40} :catchall_10

    goto :goto_14

    :catch_41
    move-exception v0

    goto :goto_14

    :cond_43
    :try_start_43
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    throw v0

    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_10

    return-void
.end method

.method protected l()V
    .registers 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "notifySent"

    const-string v3, "403"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_19
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2c

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_23
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2f

    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public m()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->n:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    return-object v0
.end method

.method public n()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7dc9

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_10
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/u;->d:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/u;->c:Ljava/lang/String;

    const-string v2, "reset"

    const-string v3, "410"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->n:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->e:Z

    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->g:Z

    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->k:Lorg/eclipse/paho/client/mqttv3/MqttException;

    iput-object v6, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->p:Ljava/lang/Object;

    return-void
.end method

.method public o()Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->a:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    return-object v0
.end method

.method public p()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->p:Ljava/lang/Object;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->r:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " ,topics="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->q()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->q()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_6b

    :cond_25
    const-string v0, " ,usercontext="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->r()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " ,isComplete="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, " ,isNotified="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->t()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, " ,exception="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->c()Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, " ,actioncallback="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->g()Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6b
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/u;->q()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e
.end method

.method public u()[I
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/a/b/q;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/q;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/q;->b()[I

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public v()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    if-eqz v1, :cond_f

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/a/b/c;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/c;->a_()Z

    move-result v0

    :cond_f
    return v0
.end method

.method public w()Lorg/eclipse/paho/client/mqttv3/a/b/u;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/u;->j:Lorg/eclipse/paho/client/mqttv3/a/b/u;

    return-object v0
.end method
