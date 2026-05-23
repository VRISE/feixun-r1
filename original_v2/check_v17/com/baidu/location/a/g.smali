.class public Lcom/baidu/location/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/baidu/location/a/g;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/io/File;

.field private static d:Ljava/lang/StringBuffer;

.field private static e:Z

.field private static f:I

.field private static g:I

.field private static h:J

.field private static i:J

.field private static j:J

.field private static k:D

.field private static l:D

.field private static m:I

.field private static n:I

.field private static o:I


# instance fields
.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    sput-object v8, Lcom/baidu/location/a/g;->a:Lcom/baidu/location/a/g;

    const-string v0, "Temp_in.dat"

    sput-object v0, Lcom/baidu/location/a/g;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/d/i;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/location/a/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    sput-object v8, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/a/g;->e:Z

    sput v3, Lcom/baidu/location/a/g;->f:I

    sput v3, Lcom/baidu/location/a/g;->g:I

    sput-wide v4, Lcom/baidu/location/a/g;->h:J

    sput-wide v4, Lcom/baidu/location/a/g;->i:J

    sput-wide v4, Lcom/baidu/location/a/g;->j:J

    sput-wide v6, Lcom/baidu/location/a/g;->k:D

    sput-wide v6, Lcom/baidu/location/a/g;->l:D

    sput v3, Lcom/baidu/location/a/g;->m:I

    sput v3, Lcom/baidu/location/a/g;->n:I

    sput v3, Lcom/baidu/location/a/g;->o:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/g;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/g;->q:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_18
    :goto_18
    iput-object p1, p0, Lcom/baidu/location/a/g;->p:Ljava/lang/String;

    return-void

    :cond_1b
    const-string p1, ""

    goto :goto_18
.end method

.method public static a()Lcom/baidu/location/a/g;
    .registers 2

    sget-object v0, Lcom/baidu/location/a/g;->a:Lcom/baidu/location/a/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/baidu/location/a/g;

    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/d/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/a/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/a/g;->a:Lcom/baidu/location/a/g;

    :cond_13
    sget-object v0, Lcom/baidu/location/a/g;->a:Lcom/baidu/location/a/g;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    :try_start_c
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/baidu/location/a/g;->a(III)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/a/g;->d()Z

    goto :goto_b

    :catch_33
    move-exception v1

    goto :goto_b

    :cond_35
    if-eqz p1, :cond_3b

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v1, :cond_3f

    :cond_3b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_b

    :cond_3f
    const-wide/16 v4, 0xc

    add-long/2addr v4, v6

    add-int/lit8 v1, p1, -0x1

    mul-int/lit16 v1, v1, 0x400

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-array v6, v3, [B

    const-wide/16 v8, 0x4

    add-long/2addr v4, v8

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    :goto_58
    if-ge v1, v3, :cond_63

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    aput-byte v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_63
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6b} :catch_33

    move-object v0, v1

    goto :goto_b
.end method

.method private static a(III)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_8

    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-le p0, v2, :cond_a

    :cond_8
    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-ltz p1, :cond_10

    add-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_12

    :cond_10
    move v0, v1

    goto :goto_9

    :cond_12
    if-lt p2, v0, :cond_1c

    add-int/lit8 v2, p0, 0x1

    if-gt p2, v2, :cond_1c

    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-le p2, v2, :cond_9

    :cond_1c
    move v0, v1

    goto :goto_9
.end method

.method private a(Landroid/location/Location;II)Z
    .registers 16

    if-eqz p1, :cond_a

    sget-boolean v0, Lcom/baidu/location/d/j;->Z:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/baidu/location/a/g;->q:Z

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    sget v0, Lcom/baidu/location/d/j;->ab:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_9a

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/d/j;->ab:I

    :cond_14
    :goto_14
    sget v0, Lcom/baidu/location/d/j;->ac:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_a6

    const/4 v0, 0x5

    sput v0, Lcom/baidu/location/d/j;->ac:I

    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    sget-boolean v4, Lcom/baidu/location/a/g;->e:Z

    if-eqz v4, :cond_b2

    const/4 v4, 0x1

    sput v4, Lcom/baidu/location/a/g;->f:I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&nr=%s&traj=%d,%.5f,%.5f|"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/baidu/location/a/g;->p:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sput v4, Lcom/baidu/location/a/g;->g:I

    sput-wide v10, Lcom/baidu/location/a/g;->h:J

    sput-wide v2, Lcom/baidu/location/a/g;->k:D

    sput-wide v0, Lcom/baidu/location/a/g;->l:D

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/a/g;->i:J

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/baidu/location/a/g;->j:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/a/g;->e:Z

    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_9a
    sget v0, Lcom/baidu/location/d/j;->ab:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_14

    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/location/d/j;->ab:I

    goto/16 :goto_14

    :cond_a6
    sget v0, Lcom/baidu/location/d/j;->ac:I

    const/16 v1, 0xe10

    if-le v0, v1, :cond_1c

    const/16 v0, 0xe10

    sput v0, Lcom/baidu/location/d/j;->ac:I

    goto/16 :goto_1c

    :cond_b2
    const/4 v4, 0x1

    new-array v8, v4, [F

    sget-wide v4, Lcom/baidu/location/a/g;->l:D

    sget-wide v6, Lcom/baidu/location/a/g;->k:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    sget-wide v4, Lcom/baidu/location/a/g;->h:J

    sub-long v4, v10, v4

    const/4 v6, 0x0

    aget v6, v8, v6

    sget v7, Lcom/baidu/location/d/j;->ab:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_d4

    sget v6, Lcom/baidu/location/d/j;->ac:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_d4

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_d4
    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    if-nez v4, :cond_162

    sget v4, Lcom/baidu/location/a/g;->f:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/baidu/location/a/g;->f:I

    const/4 v4, 0x0

    sput v4, Lcom/baidu/location/a/g;->g:I

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "&nr=%s&traj=%d,%.5f,%.5f|"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/baidu/location/a/g;->p:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sput v4, Lcom/baidu/location/a/g;->g:I

    sput-wide v10, Lcom/baidu/location/a/g;->h:J

    sput-wide v2, Lcom/baidu/location/a/g;->k:D

    sput-wide v0, Lcom/baidu/location/a/g;->l:D

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sput-wide v2, Lcom/baidu/location/a/g;->i:J

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/baidu/location/a/g;->j:J

    :goto_142
    sget v0, Lcom/baidu/location/a/g;->g:I

    add-int/lit8 v0, v0, 0xf

    const/16 v1, 0x2ee

    if-le v0, v1, :cond_156

    sget-object v0, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/g;->a(Ljava/lang/String;)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    :cond_156
    sget v0, Lcom/baidu/location/a/g;->f:I

    sget v1, Lcom/baidu/location/d/j;->ad:I

    if-lt v0, v1, :cond_15f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/g;->q:Z

    :cond_15f
    const/4 v0, 0x1

    goto/16 :goto_b

    :cond_162
    sput-wide v2, Lcom/baidu/location/a/g;->k:D

    sput-wide v0, Lcom/baidu/location/a/g;->l:D

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide v4, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    sget-wide v4, Lcom/baidu/location/a/g;->h:J

    sub-long v4, v10, v4

    long-to-int v4, v4

    sput v4, Lcom/baidu/location/a/g;->m:I

    sget-wide v4, Lcom/baidu/location/a/g;->i:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    sput v4, Lcom/baidu/location/a/g;->n:I

    sget-wide v4, Lcom/baidu/location/a/g;->j:J

    sub-long v4, v0, v4

    long-to-int v4, v4

    sput v4, Lcom/baidu/location/a/g;->o:I

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v6, "%d,%d,%d|"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget v9, Lcom/baidu/location/a/g;->m:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget v9, Lcom/baidu/location/a/g;->n:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget v9, Lcom/baidu/location/a/g;->o:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sput v4, Lcom/baidu/location/a/g;->g:I

    sput-wide v10, Lcom/baidu/location/a/g;->h:J

    sput-wide v2, Lcom/baidu/location/a/g;->i:J

    sput-wide v0, Lcom/baidu/location/a/g;->j:J

    goto/16 :goto_142
.end method

.method private a(Ljava/lang/String;)Z
    .registers 14

    const-wide/16 v10, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    const-string v2, "&nr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    sget-object v2, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-static {}, Lcom/baidu/location/a/g;->d()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_1d
    :try_start_1d
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v4, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/baidu/location/a/g;->a(III)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/a/g;->d()Z

    goto :goto_e

    :catch_44
    move-exception v1

    goto :goto_e

    :cond_46
    sget-boolean v2, Lcom/baidu/location/d/j;->aa:Z

    if-eqz v2, :cond_75

    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-eq v3, v2, :cond_60

    if-le v6, v1, :cond_75

    add-int/lit8 v2, v6, -0x1

    invoke-direct {p0, v2}, Lcom/baidu/location/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_e

    :cond_60
    if-ne v6, v1, :cond_72

    sget v2, Lcom/baidu/location/d/j;->ad:I

    :goto_64
    invoke-direct {p0, v2}, Lcom/baidu/location/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_e

    :cond_72
    add-int/lit8 v2, v6, -0x1

    goto :goto_64

    :cond_75
    add-int/lit8 v2, v6, -0x1

    mul-int/lit16 v2, v2, 0x400

    add-int/lit8 v2, v2, 0xc

    int-to-long v8, v2

    add-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v7, 0x2ee

    if-le v2, v7, :cond_8c

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_e

    :cond_8c
    invoke-static {p1}, Lcom/baidu/location/Jni;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x3fc

    if-le v7, v8, :cond_9d

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_e

    :cond_9d
    invoke-virtual {v4, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    if-nez v3, :cond_bc

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_b6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    move v0, v1

    goto/16 :goto_e

    :cond_bc
    sget v2, Lcom/baidu/location/d/j;->ad:I

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_d7

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v6, 0x8

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_b6

    :cond_d7
    sget v2, Lcom/baidu/location/d/j;->ad:I

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_f9

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sget v2, Lcom/baidu/location/d/j;->ad:I

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-eqz v5, :cond_eb

    if-ne v5, v1, :cond_ef

    :cond_eb
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_ef
    const-wide/16 v2, 0x8

    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_b6

    :cond_f9
    if-ne v6, v5, :cond_118

    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-ne v6, v2, :cond_111

    move v3, v1

    :goto_100
    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-ne v3, v2, :cond_115

    move v2, v1

    :goto_105
    const-wide/16 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_b6

    :cond_111
    add-int/lit8 v2, v6, 0x1

    move v3, v2

    goto :goto_100

    :cond_115
    add-int/lit8 v2, v3, 0x1

    goto :goto_105

    :cond_118
    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-ne v6, v2, :cond_135

    move v3, v1

    :goto_11d
    if-ne v3, v5, :cond_12c

    sget v2, Lcom/baidu/location/d/j;->ad:I

    if-ne v3, v2, :cond_139

    move v2, v1

    :goto_124
    const-wide/16 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_12c
    const-wide/16 v6, 0x8

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_134} :catch_44

    goto :goto_b6

    :cond_135
    add-int/lit8 v2, v6, 0x1

    move v3, v2

    goto :goto_11d

    :cond_139
    add-int/lit8 v2, v3, 0x1

    goto :goto_124
.end method

.method public static b()Ljava/lang/String;
    .registers 12

    const-wide/16 v10, 0x4

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    move-object v0, v1

    goto :goto_8

    :cond_13
    :try_start_13
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v3, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v6, v7, v0}, Lcom/baidu/location/a/g;->a(III)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/a/g;->d()Z

    move-object v0, v1

    goto :goto_8

    :cond_3b
    if-eqz v7, :cond_3f

    if-ne v7, v0, :cond_44

    :cond_3f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v0, v1

    goto :goto_8

    :cond_44
    add-int/lit8 v0, v7, -0x1

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0xc

    int-to-long v8, v0

    add-long/2addr v4, v8

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v8, v2, [B

    add-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    :goto_5a
    if-ge v0, v2, :cond_65

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    aput-byte v4, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_65
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    sget v0, Lcom/baidu/location/d/j;->ad:I

    if-ge v6, v0, :cond_7d

    add-int/lit8 v0, v7, 0x1

    :goto_70
    const-wide/16 v4, 0x4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    move-object v0, v2

    goto :goto_8

    :cond_7d
    sget v0, Lcom/baidu/location/d/j;->ad:I
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_7f} :catch_86

    if-ne v7, v0, :cond_83

    const/4 v0, 0x1

    goto :goto_70

    :cond_83
    add-int/lit8 v0, v7, 0x1

    goto :goto_70

    :catch_86
    move-exception v0

    move-object v0, v1

    goto :goto_8
.end method

.method private static c()V
    .registers 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/a/g;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/g;->d:Ljava/lang/StringBuffer;

    sput v1, Lcom/baidu/location/a/g;->f:I

    sput v1, Lcom/baidu/location/a/g;->g:I

    sput-wide v2, Lcom/baidu/location/a/g;->h:J

    sput-wide v2, Lcom/baidu/location/a/g;->i:J

    sput-wide v2, Lcom/baidu/location/a/g;->j:J

    sput-wide v4, Lcom/baidu/location/a/g;->k:D

    sput-wide v4, Lcom/baidu/location/a/g;->l:D

    sput v1, Lcom/baidu/location/a/g;->m:I

    sput v1, Lcom/baidu/location/a/g;->n:I

    sput v1, Lcom/baidu/location/a/g;->o:I

    return-void
.end method

.method private static d()Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_23
    :try_start_23
    sget-object v1, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {}, Lcom/baidu/location/a/g;->c()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_48} :catch_4f

    sget-object v0, Lcom/baidu/location/a/g;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_4e
    return v0

    :catch_4f
    move-exception v1

    goto :goto_4e
.end method


# virtual methods
.method public a(Landroid/location/Location;)Z
    .registers 4

    sget v0, Lcom/baidu/location/d/j;->ab:I

    sget v1, Lcom/baidu/location/d/j;->ac:I

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/location/a/g;->a(Landroid/location/Location;II)Z

    move-result v0

    return v0
.end method
