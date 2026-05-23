.class public Lorg/eclipse/paho/client/mqttv3/a/b/g;
.super Ljava/io/OutputStream;


# static fields
.field static a:Ljava/lang/Class;

.field private static final b:Ljava/lang/String;

.field private static final c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private d:Lorg/eclipse/paho/client/mqttv3/a/e;

.field private e:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.a.b.g"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->a:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->b:Ljava/lang/String;

    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/a/b/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/a/e;Ljava/io/OutputStream;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public a(Lorg/eclipse/paho/client/mqttv3/a/b/u;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->j()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/a/b/u;->f()[B

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    array-length v4, v0

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    array-length v0, v0

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(I)V

    const/16 v3, 0x400

    move v0, v1

    :goto_18
    array-length v4, v2

    if-lt v0, v4, :cond_2c

    sget-object v0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->c:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/a/b/g;->b:Ljava/lang/String;

    const-string v3, "write"

    const-string v4, "500"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-interface {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2c
    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v2, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v0, v3

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v5, v4}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(I)V

    goto :goto_18
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 3

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 4

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(I)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->e:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/b/g;->d:Lorg/eclipse/paho/client/mqttv3/a/e;

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/a/e;->a(I)V

    return-void
.end method
