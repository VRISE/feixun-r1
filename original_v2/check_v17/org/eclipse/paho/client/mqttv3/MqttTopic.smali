.class public Lorg/eclipse/paho/client/mqttv3/MqttTopic;
.super Ljava/lang/Object;


# static fields
.field public static final MULTI_LEVEL_WILDCARD:Ljava/lang/String; = "#"

.field public static final MULTI_LEVEL_WILDCARD_PATTERN:Ljava/lang/String; = "/#"

.field public static final SINGLE_LEVEL_WILDCARD:Ljava/lang/String; = "+"

.field public static final TOPIC_LEVEL_SEPARATOR:Ljava/lang/String; = "/"

.field public static final TOPIC_WILDCARDS:Ljava/lang/String; = "#+"

.field private static final a:I = 0x1

.field private static final b:I = 0xffff

.field private static final c:C


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/a/a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/a/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->d:Lorg/eclipse/paho/client/mqttv3/a/a;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/a/b/o;
    .registers 4

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/a/b/o;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/a/b/o;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const-string v0, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v0, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v3, v1

    :goto_13
    if-lt v3, v7, :cond_16

    return-void

    :cond_16
    add-int/lit8 v0, v3, -0x1

    if-ltz v0, :cond_44

    add-int/lit8 v0, v3, -0x1

    aget-char v0, v6, v0

    move v2, v0

    :goto_1f
    add-int/lit8 v0, v3, 0x1

    if-ge v0, v7, :cond_46

    add-int/lit8 v0, v3, 0x1

    aget-char v0, v6, v0

    :goto_27
    aget-char v8, v6, v3

    if-ne v8, v4, :cond_48

    if-eq v2, v5, :cond_2f

    if-nez v2, :cond_33

    :cond_2f
    if-eq v0, v5, :cond_48

    if-eqz v0, :cond_48

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid usage of single-level wildcard in topic string \'%s\'!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    move v2, v1

    goto :goto_1f

    :cond_46
    move v0, v1

    goto :goto_27

    :cond_48
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_13
.end method

.method public static validate(Ljava/lang/String;Z)V
    .registers 9

    const v6, 0xffff

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_6
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_d} :catch_2d

    if-lt v0, v4, :cond_11

    if-le v0, v6, :cond_34

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid topic length, should be in range[%d, %d]!"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_34
    if-eqz p1, :cond_78

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v5

    const-string v1, "+"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_46
    :goto_46
    return-void

    :cond_47
    const-string v0, "#"

    invoke-static {p0, v0}, Lorg/eclipse/paho/client/mqttv3/c/b;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-gt v0, v4, :cond_5f

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "/#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Invalid usage of multi-level wildcard in topic string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->a(Ljava/lang/String;)V

    goto :goto_46

    :cond_78
    const-string v0, "#+"

    invoke-static {p0, v0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The topic name MUST NOT contain any wildcard characters (#+)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->e:Ljava/lang/String;

    return-object v0
.end method

.method public publish(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 5

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->d:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/a;->k()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->d:Lorg/eclipse/paho/client/mqttv3/a/a;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->a(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/a/b/o;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(Lorg/eclipse/paho/client/mqttv3/a/b/u;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    iget-object v1, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/a/u;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/a/u;->k()V

    return-object v0
.end method

.method public publish([BIZ)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    .registers 5

    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    invoke-virtual {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->publish(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
