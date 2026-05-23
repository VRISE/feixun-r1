.class public Lcom/baidu/location/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/d$a;
    }
.end annotation


# static fields
.field public static f:Ljava/lang/String;

.field private static j:Lcom/baidu/location/a/d;


# instance fields
.field private A:Lcom/baidu/location/a/d$a;

.field private B:Z

.field private C:Z

.field private D:I

.field private E:F

.field private F:F

.field private G:J

.field private H:I

.field private I:Landroid/os/Handler;

.field private J:[B

.field private K:[B

.field private L:I

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private N:Z

.field a:J

.field b:Landroid/location/Location;

.field c:Landroid/location/Location;

.field d:Ljava/lang/StringBuilder;

.field e:J

.field g:I

.field h:D

.field i:D

.field private k:I

.field private l:D

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:D

.field private s:D

.field private t:D

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/d;->j:Lcom/baidu/location/a/d;

    const-string v0, "0"

    sput-object v0, Lcom/baidu/location/a/d;->f:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/baidu/location/a/d;->k:I

    const-wide v0, 0x3fe6666660000000L    # 0.699999988079071

    iput-wide v0, p0, Lcom/baidu/location/a/d;->l:D

    const-string v0, "3G|4G"

    iput-object v0, p0, Lcom/baidu/location/a/d;->m:Ljava/lang/String;

    iput v6, p0, Lcom/baidu/location/a/d;->n:I

    const v0, 0x4b000

    iput v0, p0, Lcom/baidu/location/a/d;->o:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/baidu/location/a/d;->p:I

    iput v6, p0, Lcom/baidu/location/a/d;->q:I

    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    iput-wide v0, p0, Lcom/baidu/location/a/d;->r:D

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/baidu/location/a/d;->s:D

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/baidu/location/a/d;->t:D

    const/16 v0, 0x12c

    iput v0, p0, Lcom/baidu/location/a/d;->u:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/a/d;->v:I

    iput v2, p0, Lcom/baidu/location/a/d;->w:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/baidu/location/a/d;->x:I

    iput v2, p0, Lcom/baidu/location/a/d;->y:I

    iput-wide v4, p0, Lcom/baidu/location/a/d;->z:J

    iput-object v3, p0, Lcom/baidu/location/a/d;->A:Lcom/baidu/location/a/d$a;

    iput-boolean v2, p0, Lcom/baidu/location/a/d;->B:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/d;->C:Z

    iput v2, p0, Lcom/baidu/location/a/d;->D:I

    iput v7, p0, Lcom/baidu/location/a/d;->E:F

    iput v7, p0, Lcom/baidu/location/a/d;->F:F

    iput-wide v4, p0, Lcom/baidu/location/a/d;->G:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/baidu/location/a/d;->H:I

    iput-wide v4, p0, Lcom/baidu/location/a/d;->a:J

    iput-object v3, p0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    iput-object v3, p0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    iput-object v3, p0, Lcom/baidu/location/a/d;->d:Ljava/lang/StringBuilder;

    iput-wide v4, p0, Lcom/baidu/location/a/d;->e:J

    iput-object v3, p0, Lcom/baidu/location/a/d;->I:Landroid/os/Handler;

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/location/a/d;->J:[B

    iput-object v3, p0, Lcom/baidu/location/a/d;->K:[B

    iput v2, p0, Lcom/baidu/location/a/d;->L:I

    iput-object v3, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/d;->N:Z

    iput v2, p0, Lcom/baidu/location/a/d;->g:I

    const-wide v0, 0x405d0e4d1816773bL    # 116.22345545

    iput-wide v0, p0, Lcom/baidu/location/a/d;->h:D

    const-wide v0, 0x40441f7206defd8dL    # 40.245667323

    iput-wide v0, p0, Lcom/baidu/location/a/d;->i:D

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/d;->I:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/baidu/location/a/d;
    .registers 1

    sget-object v0, Lcom/baidu/location/a/d;->j:Lcom/baidu/location/a/d;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/location/a/d;

    invoke-direct {v0}, Lcom/baidu/location/a/d;-><init>()V

    sput-object v0, Lcom/baidu/location/a/d;->j:Lcom/baidu/location/a/d;

    :cond_b
    sget-object v0, Lcom/baidu/location/a/d;->j:Lcom/baidu/location/a/d;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/a/d;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/a/d;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "--"

    const-string v3, "\r\n"

    const-string v4, "multipart/form-data"

    :try_start_e
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v5, "POST"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v5, "Charset"

    const-string v6, "utf-8"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "connection"

    const-string v6, "close"

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";boundary="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_db

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Disposition: form-data; name=\"location_dat\"; filename=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    new-array v7, v7, [B

    :goto_ce
    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_de

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_d9
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_d9} :catch_da
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_d9} :catch_12a

    goto :goto_ce

    :catch_da
    move-exception v0

    :cond_db
    :goto_db
    const-string v0, "0"

    :goto_dd
    return-object v0

    :cond_de
    :try_start_de
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget v0, p0, Lcom/baidu/location/a/d;->y:I

    add-int/lit16 v0, v0, 0x190

    iput v0, p0, Lcom/baidu/location/a/d;->y:I

    iget v0, p0, Lcom/baidu/location/a/d;->y:I

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->c(I)V

    const/16 v0, 0xc8

    if-ne v1, v0, :cond_db

    const-string v0, "1"
    :try_end_129
    .catch Ljava/net/MalformedURLException; {:try_start_de .. :try_end_129} :catch_da
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_129} :catch_12a

    goto :goto_dd

    :catch_12a
    move-exception v0

    goto :goto_db
.end method

.method static synthetic a(Lcom/baidu/location/a/d;Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_34

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_31

    const/16 v3, 0x64

    if-ne v0, v3, :cond_36

    :cond_31
    const/4 v0, 0x1

    :goto_32
    move v1, v0

    goto :goto_13

    :catch_34
    move-exception v0

    :cond_35
    return v1

    :cond_36
    move v0, v1

    goto :goto_32
.end method

.method private a(I)[B
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .registers 11

    const/16 v2, 0xff

    const/4 v1, 0x0

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v5, v0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-byte v6, v0

    array-length v0, v4

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v7, v4

    move v2, v1

    :goto_26
    if-ge v1, v7, :cond_34

    aget-byte v8, v4, v1

    add-int/lit8 v3, v2, 0x1

    xor-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_26

    :cond_34
    add-int/lit8 v1, v2, 0x1

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x1

    aput-byte v6, v0, v1

    goto :goto_6
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->a(I)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    const/4 v2, 0x4

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    aget-byte v3, v1, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    return-void
.end method

.method private b(Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->c(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/baidu/location/a/d;->h()V

    return-void
.end method

.method private c()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/d;->N:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/d;->N:Z

    sget-object v0, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/location/a/d;->j()V

    invoke-direct {p0}, Lcom/baidu/location/a/d;->d()V

    goto :goto_4
.end method

.method private c(I)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_70

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_33
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v2, "1980_01_01:0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_70
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d_%02d_%02d"

    invoke-direct {p0, v2}, Lcom/baidu/location/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_a7} :catch_a9

    goto/16 :goto_2

    :catch_a9
    move-exception v0

    goto/16 :goto_2
.end method

.method private c(Landroid/location/Location;)V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/d;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/baidu/location/a/d;->H:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10

    if-nez p1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iget v1, p0, Lcom/baidu/location/a/d;->E:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Lcom/baidu/location/a/d;->E:F

    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    if-nez v0, :cond_41

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/a/d;->i()V

    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->d(Landroid/location/Location;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_45

    :goto_3a
    iget v0, p0, Lcom/baidu/location/a/d;->L:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/d;->L:I

    goto :goto_10

    :cond_41
    :try_start_41
    invoke-direct {p0, p1}, Lcom/baidu/location/a/d;->e(Landroid/location/Location;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_3a

    :catch_45
    move-exception v0

    goto :goto_3a
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_fa

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->k:I

    :cond_17
    const-string v1, "bash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "bash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/d;->l:D

    :cond_27
    const-string v1, "net"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "net"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/location/a/d;->m:Ljava/lang/String;

    :cond_37
    const-string v1, "tcon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "tcon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->n:I

    :cond_47
    const-string v1, "tcsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "tcsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->o:I

    :cond_57
    const-string v1, "per"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v1, "per"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->p:I

    :cond_67
    const-string v1, "chdron"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    const-string v1, "chdron"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->q:I

    :cond_77
    const-string v1, "spsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "spsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/d;->r:D

    :cond_87
    const-string v1, "acsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string v1, "acsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/d;->s:D

    :cond_97
    const-string v1, "stspsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a7

    const-string v1, "stspsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/d;->t:D

    :cond_a7
    const-string v1, "drstsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    const-string v1, "drstsh"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->u:I

    :cond_b7
    const-string v1, "stper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    const-string v1, "stper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->v:I

    :cond_c7
    const-string v1, "nondron"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const-string v1, "nondron"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->w:I

    :cond_d7
    const-string v1, "nondrper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e7

    const-string v1, "nondrper"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/baidu/location/a/d;->x:I

    :cond_e7
    const-string v1, "uptime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    const-string v1, "uptime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/d;->z:J

    :cond_f7
    invoke-direct {p0}, Lcom/baidu/location/a/d;->k()V
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_fa} :catch_fb

    :cond_fa
    :goto_fa
    return-void

    :catch_fb
    move-exception v0

    goto :goto_fa
.end method

.method private d()V
    .registers 7

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_7

    const-string v0, "7.3.2"

    :cond_7
    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    iget-object v4, p0, Lcom/baidu/location/a/d;->J:[B

    aput-byte v2, v4, v2

    iget-object v4, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v5, 0x1

    aput-byte v2, v4, v5

    iget-object v4, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    iget-object v4, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v5, 0x3

    aput-byte v2, v4, v5

    if-lt v0, v1, :cond_24

    move v0, v1

    :cond_24
    move v1, v2

    :goto_25
    if-ge v1, v0, :cond_3c

    :try_start_27
    iget-object v2, p0, Lcom/baidu/location/a/d;->J:[B

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_38} :catch_3b

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_3b
    move-exception v0

    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v1

    iget-object v1, v1, Lcom/baidu/location/d/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/d;->K:[B

    return-void
.end method

.method private d(Landroid/location/Location;)V
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/location/a/d;->e:J

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v8

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/baidu/location/a/d;->b(I)V

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    :goto_31
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_56

    :goto_37
    if-lez v0, :cond_58

    const/16 v0, 0x20

    iget-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    if-lez v1, :cond_70

    const/16 v0, -0x80

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_51
    iput-object p1, p0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    return-void

    :cond_54
    move v0, v2

    goto :goto_31

    :cond_56
    move v1, v2

    goto :goto_37

    :cond_58
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v2, 0x41700000    # 15.0f

    div-float/2addr v0, v2

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, -0x21

    int-to-byte v0, v0

    iget-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_70
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51
.end method

.method private d(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/grtcf.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_16
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_94

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "%d_%02d_%02d"

    invoke-direct {p0, v4}, Lcom/baidu/location/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6f

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_56} :catch_98

    move-result v4

    if-eqz v4, :cond_6f

    :try_start_59
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v0, :cond_6f

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/baidu/location/a/d;->y:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6f} :catch_9a

    :cond_6f
    :goto_6f
    if-gt v0, v2, :cond_91

    mul-int/lit16 v3, v0, 0x800

    int-to-long v4, v3

    :try_start_74
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    if-eqz p1, :cond_95

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-direct {p0, v3}, Lcom/baidu/location/a/d;->c(Ljava/lang/String;)V

    :cond_91
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_94} :catch_98

    :cond_94
    :goto_94
    return-void

    :cond_95
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :catch_98
    move-exception v0

    goto :goto_94

    :catch_9a
    move-exception v3

    goto :goto_6f
.end method

.method private e(Landroid/location/Location;)V
    .registers 22

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, v4

    double-to-int v3, v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_167

    const/4 v2, 0x0

    move v11, v2

    :goto_33
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_16b

    const/4 v2, 0x0

    move v14, v2

    :goto_3b
    if-lez v3, :cond_16f

    const/4 v2, 0x0

    move v12, v2

    :goto_3f
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-lez v4, :cond_173

    const/4 v2, 0x0

    move v13, v2

    :goto_47
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/location/a/d;->L:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_5f

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    :cond_5f
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    if-eqz v2, :cond_fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    if-eqz v2, :cond_fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_fa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long v18, v2, v4

    const/4 v2, 0x2

    new-array v10, v2, [F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    aget v3, v10, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v4

    move-wide/from16 v0, v18

    long-to-float v5, v0

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-long v4, v18, v18

    long-to-float v3, v4

    div-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/baidu/location/a/d;->F:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_fa

    double-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/location/a/d;->F:F

    :cond_fa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    and-int/lit16 v3, v15, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const v3, 0xff00

    and-int/2addr v3, v15

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const v3, 0xff00

    and-int v3, v3, v16

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lez v11, :cond_177

    const/16 v2, 0x20

    if-lez v13, :cond_146

    const/16 v2, 0x60

    int-to-byte v2, v2

    :cond_146
    if-lez v12, :cond_14b

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    :cond_14b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_156
    if-lez v14, :cond_19b

    const/16 v2, -0x80

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_167
    const/4 v2, 0x1

    move v11, v2

    goto/16 :goto_33

    :cond_16b
    const/4 v2, 0x1

    move v14, v2

    goto/16 :goto_3b

    :cond_16f
    const/4 v2, 0x1

    move v12, v2

    goto/16 :goto_3f

    :cond_173
    const/4 v2, 0x1

    move v13, v2

    goto/16 :goto_47

    :cond_177
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v2

    const/high16 v3, 0x41700000    # 15.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    if-lez v13, :cond_18a

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    :cond_18a
    if-lez v12, :cond_18f

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    :cond_18f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_156

    :cond_19b
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method private e(Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/grtcf.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6d

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_30
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string v2, "1980_01_01:0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_6d
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const/4 v0, 0x1

    :goto_7e
    if-gt v0, v1, :cond_9d

    mul-int/lit16 v3, v0, 0x800

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    sget-object v4, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_bc

    :cond_9d
    if-lt v0, v1, :cond_a7

    const-wide/16 v4, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_a7
    mul-int/lit16 v0, v0, 0x800

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_bb} :catch_bf

    :cond_bb
    :goto_bb
    return-void

    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :catch_bf
    move-exception v0

    goto :goto_bb
.end method

.method private e()Z
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_4
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "gflk.dat"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_2f
    if-nez v2, :cond_85

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v1, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_53
    .catchall {:try_start_4 .. :try_end_38} :catchall_67

    :try_start_38
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_81
    .catchall {:try_start_38 .. :try_end_3b} :catchall_7c

    move-result-object v3

    :try_start_3c
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_50
    .catchall {:try_start_3c .. :try_end_3f} :catchall_7f

    move-result-object v2

    :goto_40
    if-eqz v2, :cond_45

    :try_start_42
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    :cond_45
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4a
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4f} :catch_83

    :cond_4f
    :goto_4f
    return v0

    :catch_50
    move-exception v0

    const/4 v0, 0x1

    goto :goto_40

    :catch_53
    move-exception v1

    move-object v1, v2

    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_5a
    if-eqz v2, :cond_5f

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5f
    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_4f

    :catch_65
    move-exception v1

    goto :goto_4f

    :catchall_67
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_6a
    if-eqz v2, :cond_6f

    :try_start_6c
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V

    :cond_6f
    if-eqz v3, :cond_74

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_74
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_7a

    :cond_79
    :goto_79
    throw v0

    :catch_7a
    move-exception v1

    goto :goto_79

    :catchall_7c
    move-exception v0

    move-object v3, v2

    goto :goto_6a

    :catchall_7f
    move-exception v0

    goto :goto_6a

    :catch_81
    move-exception v5

    goto :goto_55

    :catch_83
    move-exception v1

    goto :goto_4f

    :cond_85
    move-object v1, v2

    move-object v3, v2

    goto :goto_40
.end method

.method private f()Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/baidu/location/a/d;->B:Z

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Lcom/baidu/location/a/d;->C:Z

    if-eqz v2, :cond_36

    iget v2, p0, Lcom/baidu/location/a/d;->E:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->t:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_31

    iget v2, p0, Lcom/baidu/location/a/d;->D:I

    iget v3, p0, Lcom/baidu/location/a/d;->p:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/location/a/d;->D:I

    iget v2, p0, Lcom/baidu/location/a/d;->D:I

    iget v3, p0, Lcom/baidu/location/a/d;->u:I

    if-le v2, v3, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->G:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/baidu/location/a/d;->v:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_74

    :cond_30
    :goto_30
    return v0

    :cond_31
    iput v1, p0, Lcom/baidu/location/a/d;->D:I

    iput-boolean v1, p0, Lcom/baidu/location/a/d;->C:Z

    goto :goto_30

    :cond_36
    iget v2, p0, Lcom/baidu/location/a/d;->E:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->t:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_30

    iput-boolean v0, p0, Lcom/baidu/location/a/d;->C:Z

    iput v1, p0, Lcom/baidu/location/a/d;->D:I

    iget v1, p0, Lcom/baidu/location/a/d;->D:I

    iget v2, p0, Lcom/baidu/location/a/d;->p:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/baidu/location/a/d;->D:I

    goto :goto_30

    :cond_4b
    iget v2, p0, Lcom/baidu/location/a/d;->E:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->r:D

    cmpl-double v2, v2, v4

    if-gez v2, :cond_5d

    iget v2, p0, Lcom/baidu/location/a/d;->F:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->s:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_60

    :cond_5d
    iput-boolean v0, p0, Lcom/baidu/location/a/d;->B:Z

    goto :goto_30

    :cond_60
    iget v2, p0, Lcom/baidu/location/a/d;->w:I

    if-ne v2, v0, :cond_74

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->G:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/baidu/location/a/d;->x:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_30

    :cond_74
    move v0, v1

    goto :goto_30
.end method

.method private g()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/d;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/d;->L:I

    iput-object v2, p0, Lcom/baidu/location/a/d;->b:Landroid/location/Location;

    iput-object v2, p0, Lcom/baidu/location/a/d;->c:Landroid/location/Location;

    iput v3, p0, Lcom/baidu/location/a/d;->E:F

    iput v3, p0, Lcom/baidu/location/a/d;->F:F

    return-void
.end method

.method private h()V
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/baidu/location/a/d;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/d;->e:J

    sub-long/2addr v2, v4

    iget v1, p0, Lcom/baidu/location/a/d;->p:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_1b

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "loc_navi_mode"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "is_navi_on"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    goto :goto_1a

    :cond_32
    iget v1, p0, Lcom/baidu/location/a/d;->n:I

    if-ne v1, v6, :cond_40

    invoke-direct {p0}, Lcom/baidu/location/a/d;->f()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    goto :goto_1a

    :cond_40
    sget-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    const-string v2, "com.ubercab.driver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    sget-object v1, Lcom/baidu/location/d/b;->d:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/location/a/d;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_64

    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    goto :goto_1a

    :cond_5a
    invoke-direct {p0}, Lcom/baidu/location/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    goto :goto_1a

    :cond_64
    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const/4 v3, 0x3

    iget v4, p0, Lcom/baidu/location/a/d;->L:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [B

    move v1, v0

    :goto_9c
    if-ge v1, v2, :cond_b0

    iget-object v0, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9c

    :cond_b0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "baidu/tempdata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_d0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_101

    const-string v0, "intime.dat"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_e6
    :try_start_e6
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    new-instance v0, Lcom/baidu/location/a/f;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/f;-><init>(Lcom/baidu/location/a/d;)V

    invoke-virtual {v0}, Lcom/baidu/location/a/f;->start()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_101} :catch_10c

    :cond_101
    :goto_101
    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/d;->G:J

    goto/16 :goto_1a

    :catch_10c
    move-exception v0

    goto :goto_101
.end method

.method private i()V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/baidu/location/a/d;->f:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const/16 v2, -0x52

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_28
    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/a/d;->J:[B

    aget-byte v2, v2, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/a/d;->J:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/baidu/location/a/d;->K:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_79
    if-ge v0, v1, :cond_97

    iget-object v2, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/location/a/d;->K:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_8b
    iget-object v1, p0, Lcom/baidu/location/a/d;->M:Ljava/util/List;

    const/16 v2, -0x42

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_97
    return-void
.end method

.method private j()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/a/d;->z:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/baidu/location/a/d;->A:Lcom/baidu/location/a/d$a;

    if-nez v0, :cond_19

    new-instance v0, Lcom/baidu/location/a/d$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/d$a;-><init>(Lcom/baidu/location/a/d;)V

    iput-object v0, p0, Lcom/baidu/location/a/d;->A:Lcom/baidu/location/a/d$a;

    :cond_19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/location/d/b;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/a/d;->A:Lcom/baidu/location/a/d$a;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/location/a/d$a;->a(Ljava/lang/String;)V

    :cond_3e
    invoke-direct {p0}, Lcom/baidu/location/a/d;->k()V

    return-void
.end method

.method private k()V
    .registers 1

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .registers 5

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/a/d;->N:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/baidu/location/a/d;->c()V

    :cond_8
    iget v0, p0, Lcom/baidu/location/a/d;->k:I

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/baidu/location/a/d;->m:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/b;->e()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/location/b/c;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/baidu/location/a/d;->n:I

    if-ne v0, v2, :cond_2b

    iget v0, p0, Lcom/baidu/location/a/d;->y:I

    iget v1, p0, Lcom/baidu/location/a/d;->o:I

    if-le v0, v1, :cond_2b

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/baidu/location/a/d;->I:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/location/a/e;

    invoke-direct {v1, p0, p1}, Lcom/baidu/location/a/e;-><init>(Lcom/baidu/location/a/d;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/d;->N:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/d;->N:Z

    invoke-direct {p0}, Lcom/baidu/location/a/d;->g()V

    goto :goto_4
.end method
