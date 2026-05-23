.class public Lcom/unisound/passport/d;
.super Ljava/lang/Object;


# static fields
.field public static MQTT_TOPIC:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence; = null

.field private static h:Z = false

.field private static i:S = 0x0s

.field private static j:[I = null

.field private static k:Z = false

.field private static l:Z = false

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/String; = null

.field private static final t:I = 0x2710


# instance fields
.field a:Lcom/unisound/passport/PassportListener;

.field b:Lcom/unisound/passport/i;

.field c:Lcom/unisound/passport/h;

.field private o:Landroid/net/ConnectivityManager;

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:J

.field private s:Landroid/os/Looper;

.field private u:Landroid/content/Context;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "push.passport.hivoice.cn"

    sput-object v0, Lcom/unisound/passport/d;->d:Ljava/lang/String;

    const/16 v0, 0x75b

    sput v0, Lcom/unisound/passport/d;->e:I

    const/16 v0, 0x22b3

    sput v0, Lcom/unisound/passport/d;->f:I

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/passport/d;->g:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    sput-boolean v1, Lcom/unisound/passport/d;->h:Z

    const/16 v0, 0x1e

    sput-short v0, Lcom/unisound/passport/d;->i:S

    new-array v0, v2, [I

    aput v1, v0, v1

    sput-object v0, Lcom/unisound/passport/d;->j:[I

    sput-boolean v1, Lcom/unisound/passport/d;->k:Z

    sput-boolean v2, Lcom/unisound/passport/d;->l:Z

    const-string v0, "passportuser"

    sput-object v0, Lcom/unisound/passport/d;->m:Ljava/lang/String;

    const-string v0, "PZs5J8tc9qL12ocy"

    sput-object v0, Lcom/unisound/passport/d;->n:Ljava/lang/String;

    const-string v0, "sensors/temperature"

    sput-object v0, Lcom/unisound/passport/d;->MQTT_TOPIC:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    new-instance v0, Lcom/unisound/passport/f;

    invoke-direct {v0, p0}, Lcom/unisound/passport/f;-><init>(Lcom/unisound/passport/d;)V

    iput-object v0, p0, Lcom/unisound/passport/d;->x:Landroid/content/BroadcastReceiver;

    const-string v0, "PassportInterface"

    invoke-static {v0}, Lcom/unisound/passport/b;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    iget-object v0, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/unisound/passport/d;->o:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/passport/d;->s:Landroid/os/Looper;

    new-instance v0, Lcom/unisound/passport/g;

    iget-object v1, p0, Lcom/unisound/passport/d;->s:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/unisound/passport/g;-><init>(Lcom/unisound/passport/d;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisound/passport/d;->r:J

    iput-object p2, p0, Lcom/unisound/passport/d;->v:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/passport/d;->w:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/unisound/passport/d;J)J
    .registers 4

    iput-wide p1, p0, Lcom/unisound/passport/d;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/unisound/passport/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/unisound/passport/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/passport/d;->p:Z

    return-void
.end method

.method static synthetic a()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/passport/d;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/unisound/passport/d;)Z
    .registers 2

    invoke-direct {p0}, Lcom/unisound/passport/d;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/unisound/passport/d;->f:I

    return v0
.end method

.method static synthetic b(Lcom/unisound/passport/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/passport/d;->o()V

    return-void
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/unisound/passport/d;->e:I

    return v0
.end method

.method static synthetic c(Lcom/unisound/passport/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/passport/d;->n()V

    return-void
.end method

.method static synthetic d(Lcom/unisound/passport/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unisound/passport/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/unisound/passport/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .registers 1

    sget-object v0, Lcom/unisound/passport/d;->g:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    return-object v0
.end method

.method static synthetic f()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/passport/d;->h:Z

    return v0
.end method

.method static synthetic g()S
    .registers 1

    sget-short v0, Lcom/unisound/passport/d;->i:S

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unisound/passport/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unisound/passport/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()[I
    .registers 1

    sget-object v0, Lcom/unisound/passport/d;->j:[I

    return-object v0
.end method

.method static synthetic k()Z
    .registers 1

    sget-boolean v0, Lcom/unisound/passport/d;->k:Z

    return v0
.end method

.method private l()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/passport/d;->o:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_9
.end method

.method private m()V
    .registers 7

    const/16 v5, 0x579

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    if-nez v0, :cond_25

    const-string v0, "Connecting..."

    invoke-direct {p0, v0}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/d;->v:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/unisound/passport/d;->w:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_20
    const/16 v0, 0x5dd

    invoke-virtual {p0, v5, v0}, Lcom/unisound/passport/d;->a(II)V

    :cond_25
    :goto_25
    invoke-direct {p0, v4}, Lcom/unisound/passport/d;->a(Z)V

    return-void

    :cond_29
    const/4 v0, 0x1

    :try_start_2a
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passport/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/passport/d;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/passport/d;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/unisound/passport/h;

    sget-object v2, Lcom/unisound/passport/d;->d:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Lcom/unisound/passport/h;-><init>(Lcom/unisound/passport/d;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;
    :try_end_59
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2a .. :try_end_59} :catch_5a

    goto :goto_25

    :catch_5a
    move-exception v0

    const-string v1, "connect error occur!"

    invoke-static {v1}, Lcom/unisound/passport/b;->e(Ljava/lang/String;)V

    const/16 v1, 0x5de

    invoke-virtual {p0, v5, v1}, Lcom/unisound/passport/d;->a(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MqttException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_91

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_7a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/passport/d;->l()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lcom/unisound/passport/d;->r:J

    invoke-virtual {p0, v0, v1}, Lcom/unisound/passport/d;->scheduleReconnect(J)V

    goto :goto_25

    :cond_91
    const-string v0, "NULL"

    goto :goto_7a
.end method

.method private n()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    invoke-virtual {v0}, Lcom/unisound/passport/i;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    :cond_c
    return-void
.end method

.method private declared-synchronized o()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/unisound/passport/d;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    if-nez v0, :cond_12

    const-string v0, "Reconnecting..."

    invoke-direct {p0, v0}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/passport/d;->m()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a(I)V
    .registers 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(II)V
    .registers 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected declared-synchronized closeConnection()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/unisound/passport/d;->p:Z

    if-nez v0, :cond_13

    const-string v0, "Attempt to stop connection not active."

    invoke-static {v0}, Lcom/unisound/passport/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    const/16 v1, 0x4b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2e

    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    const/4 v0, 0x0

    :try_start_14
    invoke-direct {p0, v0}, Lcom/unisound/passport/d;->a(Z)V

    iget-object v0, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/passport/d;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/unisound/passport/d;->n()V

    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    invoke-virtual {v0}, Lcom/unisound/passport/h;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2e

    goto :goto_11

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected init()V
    .registers 1

    return-void
.end method

.method protected declared-synchronized openConnection()V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "Starting service..."

    invoke-direct {p0, v0}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/passport/d;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    const-string v0, "Attempt to start connection that is already active"

    invoke-static {v0}, Lcom/unisound/passport/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/passport/d;->q:Landroid/os/Handler;

    const/16 v1, 0x4b5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2b

    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    invoke-direct {p0}, Lcom/unisound/passport/d;->m()V

    iget-object v0, p0, Lcom/unisound/passport/d;->u:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisound/passport/d;->x:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_2b

    goto :goto_17

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public publishToTopic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/unisound/passport/d;->c:Lcom/unisound/passport/h;

    invoke-static {v0, p1, p2}, Lcom/unisound/passport/h;->a(Lcom/unisound/passport/h;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_9
.end method

.method public scheduleReconnect(J)V
    .registers 7

    const/16 v0, 0x2710

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rescheduling connection in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/passport/d;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    if-nez v1, :cond_30

    new-instance v1, Lcom/unisound/passport/i;

    new-instance v2, Lcom/unisound/passport/e;

    invoke-direct {v2, p0}, Lcom/unisound/passport/e;-><init>(Lcom/unisound/passport/d;)V

    iget-object v3, p0, Lcom/unisound/passport/d;->s:Landroid/os/Looper;

    invoke-direct {v1, v2, v3}, Lcom/unisound/passport/i;-><init>(Lcom/unisound/passport/j;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    :cond_30
    iget-object v1, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    invoke-virtual {v1, v0}, Lcom/unisound/passport/i;->a(I)V

    iget-object v0, p0, Lcom/unisound/passport/d;->b:Lcom/unisound/passport/i;

    invoke-virtual {v0}, Lcom/unisound/passport/i;->c()V

    return-void
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method protected setPassportListener(Lcom/unisound/passport/PassportListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/passport/d;->a:Lcom/unisound/passport/PassportListener;

    return-void
.end method
