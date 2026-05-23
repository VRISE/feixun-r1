.class public Lorg/eclipse/paho/client/mqttv3/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field static c:Ljava/lang/Class; = null

.field private static final d:Ljava/lang/String;

.field private static final e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static final f:B = 0x0t

.field private static final g:B = 0x1t

.field private static final h:B = 0x2t

.field private static final i:B = 0x3t

.field private static final j:B = 0x4t


# instance fields
.field private k:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

.field private l:I

.field private m:[Lorg/eclipse/paho/client/mqttv3/a/q;

.field private n:Lorg/eclipse/paho/client/mqttv3/a/g;

.field private o:Lorg/eclipse/paho/client/mqttv3/a/h;

.field private p:Lorg/eclipse/paho/client/mqttv3/a/f;

.field private q:Lorg/eclipse/paho/client/mqttv3/a/e;

.field private r:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

.field private u:Lorg/eclipse/paho/client/mqttv3/a/i;

.field private v:Z

.field private w:B

.field private x:Ljava/lang/Object;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "${project.version}"

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/lang/String;

    const-string v0, "L${build.level}"

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/lang/String;

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/lang/Class;

    if-nez v0, :cond_14

    :try_start_c
    const-string v0, "org.eclipse.paho.client.mqttv3.a.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_25

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/lang/Class;

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .registers 10

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->v:Z

    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    iput-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z

    iput-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->k:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v0, p0}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->init(Lorg/eclipse/paho/client/mqttv3/a/a;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/client/mqttv3/a/f;-><init>(Lorg/eclipse/paho/client/mqttv3/a/a;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/e;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/a/e;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/a/i;Lorg/eclipse/paho/client/mqttv3/a/f;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/a/e;)V

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/i;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 8

    const/4 v4, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-nez v0, :cond_1d

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    move-object p1, v0

    :goto_19
    invoke-virtual {p0, v4, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void

    :cond_1d
    check-cast p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_19
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/g;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    return-void
.end method

.method static a(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/h;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->o:Lorg/eclipse/paho/client/mqttv3/a/h;

    return-void
.end method

.method private b(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 8

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "handleOldTokens"

    const-string v3, "222"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    :try_start_e
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    iget-object v2, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_30} :catch_66

    move-result-object v2

    :goto_31
    :try_start_31
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_39

    move-object v0, v1

    :goto_38
    return-object v0

    :cond_39
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Disc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5b

    iget-object v3, v0, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Con"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_5b
    move-object v1, v0

    goto :goto_31

    :cond_5d
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_62} :catch_63

    goto :goto_31

    :catch_63
    move-exception v0

    move-object v0, v1

    goto :goto_38

    :catch_66
    move-exception v0

    move-object v0, v1

    goto :goto_38
.end method

.method static b(Lorg/eclipse/paho/client/mqttv3/a/a;)[Lorg/eclipse/paho/client/mqttv3/a/q;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    return-object v0
.end method

.method static c(Lorg/eclipse/paho/client/mqttv3/a/a;)I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->l:I

    return v0
.end method

.method static d(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/e;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    return-object v0
.end method

.method static e(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/g;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    return-object v0
.end method

.method static f(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/h;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->o:Lorg/eclipse/paho/client/mqttv3/a/h;

    return-object v0
.end method

.method static g(Lorg/eclipse/paho/client/mqttv3/a/a;)Lorg/eclipse/paho/client/mqttv3/a/f;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    return-object v0
.end method

.method static q()Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .registers 1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-object v0
.end method

.method static r()Ljava/lang/String;
    .registers 1

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .registers 3

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    invoke-direct {v0, p1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/a/a;)V

    return-object v0
.end method

.method a()Lorg/eclipse/paho/client/mqttv3/a/g;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->l:I

    return-void
.end method

.method public a(JJ)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/e;->c(J)V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->k:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    :try_start_11
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/a/b/e;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    invoke-virtual {v1, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->waitForCompletion(J)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_2f
    .catchall {:try_start_11 .. :try_end_1c} :catchall_25

    :goto_1c
    iget-object v0, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, v3, v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    return-void

    :catchall_25
    move-exception v0

    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v2, v3, v3}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    throw v0

    :catch_2f
    move-exception v0

    goto :goto_1c
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .registers 3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 13

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z

    if-nez v0, :cond_66

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "connect"

    const-string v3, "214"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->r:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/d;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->k:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v2

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v4

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v6

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillDestination()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/a/b/d;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(J)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Z)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/i;->a()V

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/b;

    invoke-direct {v1, p0, p0, p2, v0}, Lorg/eclipse/paho/client/mqttv3/a/b;-><init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/a/b/d;)V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/b;->a()V

    monitor-exit v9

    return-void

    :cond_66
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "connect"

    const-string v3, "207"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Byte;

    iget-byte v7, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    invoke-direct {v6, v7}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_88

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z

    if-eqz v0, :cond_93

    :cond_88
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :catchall_90
    move-exception v0

    monitor-exit v9
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw v0

    :cond_93
    :try_start_93
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_a1
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_af

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :cond_af
    const/16 v0, 0x7d64

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
    :try_end_b6
    .catchall {:try_start_93 .. :try_end_b6} :catchall_90
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->v:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z

    if-eqz v0, :cond_f

    :cond_d
    monitor-exit v4

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->v:Z

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v5, "shutdownConnection"

    const-string v6, "216"

    invoke-interface {v0, v3, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_cb

    move v3, v2

    :goto_2a
    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_ce

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->isComplete()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_3b
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/f;->a()V

    :cond_44
    :try_start_44
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    if-eqz v0, :cond_53

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->l:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_53

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/a/q;->d()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_de

    :cond_53
    :goto_53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/g;->a()V

    :cond_5c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v5, 0x7d66

    invoke-direct {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/a/i;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v4

    :try_start_6c
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_dc

    :goto_71
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->o:Lorg/eclipse/paho/client/mqttv3/a/h;

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->o:Lorg/eclipse/paho/client/mqttv3/a/h;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/h;->a()V

    :cond_7a
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPingSender;->stop()V

    :cond_83
    :try_start_83
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8c} :catch_da

    :cond_8c
    :goto_8c
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8f
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v7, "shutdownConnection"

    const-string v8, "217"

    invoke-interface {v0, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->v:Z

    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_d1

    if-eqz v4, :cond_d4

    move v0, v1

    :goto_a4
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    if-eqz v5, :cond_d6

    :goto_a8
    and-int/2addr v0, v1

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/a/f;->b(Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    :cond_b0
    if-eqz v3, :cond_bb

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/a/f;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_bb
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_be
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z
    :try_end_c0
    .catchall {:try_start_be .. :try_end_c0} :catchall_c8

    if-eqz v0, :cond_c5

    :try_start_c2
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b()V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c5} :catch_d8
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_c8

    :cond_c5
    :goto_c5
    :try_start_c5
    monitor-exit v1

    goto/16 :goto_e

    :catchall_c8
    move-exception v0

    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_c8

    throw v0

    :cond_cb
    move v3, v1

    goto/16 :goto_2a

    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit v4
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0

    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v5
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    :cond_d4
    move v0, v2

    goto :goto_a4

    :cond_d6
    move v1, v2

    goto :goto_a8

    :catch_d8
    move-exception v0

    goto :goto_c5

    :catch_da
    move-exception v0

    goto :goto_8c

    :catch_dc
    move-exception v0

    goto :goto_71

    :catch_de
    move-exception v0

    goto/16 :goto_53
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/c;Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/c;->b()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1a

    :try_start_a
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v3, "connectComplete"

    const-string v4, "215"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    monitor-exit v1

    return-void

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_31

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v3, "connectComplete"

    const-string v4, "204"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v7

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/e;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 13

    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "223"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d6f

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :catchall_1b
    move-exception v0

    monitor-exit v7
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "211"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d65

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_36
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "219"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d66

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_4e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/f;->d()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_6c

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "210"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d6b

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_6c
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "218"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/a/c;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/c;-><init>(Lorg/eclipse/paho/client/mqttv3/a/a;Lorg/eclipse/paho/client/mqttv3/a/b/e;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/c;->a()V

    monitor-exit v7
    :try_end_87
    .catchall {:try_start_1e .. :try_end_87} :catchall_1b

    return-void
.end method

.method protected a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V
    .registers 3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->b(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    return-void
.end method

.method a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 13

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "internalSend"

    const-string v3, "200"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->a(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    :try_start_2a
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_2f
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_2a .. :try_end_2f} :catch_4f

    return-void

    :cond_30
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "internalSend"

    const-string v3, "213"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    aput-object p2, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7dc9

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :catch_4f
    move-exception v0

    instance-of v1, p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(Lorg/eclipse/paho/client/mqttv3/a/b/o;)V

    :cond_5b
    throw v0
.end method

.method public a([Lorg/eclipse/paho/client/mqttv3/a/q;)V
    .registers 2

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    return-void
.end method

.method public b()V
    .registers 6

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_66

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->e()Z

    move-result v0

    if-nez v0, :cond_43

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v3, "close"

    const-string v4, "224"

    invoke-interface {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6e

    invoke-direct {v0, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x7d64

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    :cond_38
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->y:Z

    monitor-exit v1

    :goto_42
    return-void

    :cond_43
    const/4 v0, 0x4

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->s:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->o:Lorg/eclipse/paho/client/mqttv3/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->t:Lorg/eclipse/paho/client/mqttv3/MqttPingSender;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->n:Lorg/eclipse/paho/client/mqttv3/a/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->r:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_2b .. :try_end_67} :catchall_28

    goto :goto_42
.end method

.method public b(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    .registers 7

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_10

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/d;

    if-nez v0, :cond_1a

    :cond_10
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    instance-of v0, p1, Lorg/eclipse/paho/client/mqttv3/a/b/e;

    if-eqz v0, :cond_1e

    :cond_1a
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    return-void

    :cond_1e
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    const-string v2, "sendNoWait"

    const-string v3, "208"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d68

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/a/l;->a(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0
.end method

.method public c()Z
    .registers 3

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public d()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-byte v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    if-ne v2, v0, :cond_a

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public e()Z
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public f()Z
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public g()Z
    .registers 4

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->x:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public h()I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->l:I

    return v0
.end method

.method public i()[Lorg/eclipse/paho/client/mqttv3/a/q;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->m:[Lorg/eclipse/paho/client/mqttv3/a/q;

    return-object v0
.end method

.method public j()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->u:Lorg/eclipse/paho/client/mqttv3/a/i;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/i;->b()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->k:Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    return-object v0
.end method

.method public l()J
    .registers 3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Lorg/eclipse/paho/client/mqttv3/a/e;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    return-object v0
.end method

.method public n()Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->r:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    return-object v0
.end method

.method public o()Ljava/util/Properties;
    .registers 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "conState"

    new-instance v2, Ljava/lang/Integer;

    iget-byte v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->w:B

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serverURI"

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "callback"

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->p:Lorg/eclipse/paho/client/mqttv3/a/f;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stoppingComms"

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->v:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public p()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->q:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->d()Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :try_end_6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_d

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_7

    :catch_d
    move-exception v1

    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Ljava/lang/Exception;)V

    goto :goto_7
.end method
