.class public Lorg/eclipse/paho/client/mqttv3/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPersistable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BII[BII)V
    .registers 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->a:Ljava/lang/String;

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->b:[B

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->c:I

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->d:I

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->e:[B

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->f:I

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->g:I

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->b:[B

    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->c:I

    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->d:I

    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->e:[B

    iput p6, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->f:I

    iput p7, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->g:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderBytes()[B
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->b:[B

    return-object v0
.end method

.method public getHeaderLength()I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->d:I

    return v0
.end method

.method public getHeaderOffset()I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->c:I

    return v0
.end method

.method public getPayloadBytes()[B
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->e:[B

    return-object v0
.end method

.method public getPayloadLength()I
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->e:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->g:I

    goto :goto_5
.end method

.method public getPayloadOffset()I
    .registers 2

    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/a/p;->f:I

    return v0
.end method
