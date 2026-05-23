.class public Lcom/baidu/location/b/b;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/b$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field private static c:Lcom/baidu/location/b/b;

.field private static k:Ljava/lang/reflect/Method;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/telephony/TelephonyManager;

.field private e:Ljava/lang/Object;

.field private f:Lcom/baidu/location/b/a;

.field private g:Lcom/baidu/location/b/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/location/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/baidu/location/b/b$a;

.field private j:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    sput-object v0, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    sput v1, Lcom/baidu/location/b/b;->a:I

    sput v1, Lcom/baidu/location/b/b;->b:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    new-instance v0, Lcom/baidu/location/b/a;

    invoke-direct {v0}, Lcom/baidu/location/b/a;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iput-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    iput-boolean v2, p0, Lcom/baidu/location/b/b;->j:Z

    iput-boolean v2, p0, Lcom/baidu/location/b/b;->q:Z

    return-void
.end method

.method private a(I)I
    .registers 3

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_6

    const/4 p1, -0x1

    :cond_6
    return p1
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v0, v1

    move-object v1, v2

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_124

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    :goto_21
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_15

    :cond_25
    :try_start_25
    const-string v3, "android.telephony.CellInfoGsm"

    invoke-virtual {v9, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "android.telephony.CellInfoWcdma"

    invoke-virtual {v9, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "android.telephony.CellInfoLte"

    invoke-virtual {v9, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v7, "android.telephony.CellInfoCdma"

    invoke-virtual {v9, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_40} :catch_10e

    move-result v7

    if-eqz v7, :cond_5b

    const/4 v7, 0x1

    :goto_44
    if-lez v7, :cond_10b

    const/4 v0, 0x0

    const/4 v11, 0x1

    if-ne v7, v11, :cond_75

    :try_start_4a
    invoke-virtual {v3, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_4e
    :goto_4e
    const-string v2, "getCellIdentity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_56} :catch_111

    move-result-object v2

    if-nez v2, :cond_8d

    move v0, v7

    goto :goto_21

    :cond_5b
    :try_start_5b
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    const/4 v7, 0x2

    goto :goto_44

    :cond_63
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    const/4 v7, 0x3

    goto :goto_44

    :cond_6b
    invoke-virtual {v10, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6e} :catch_10e

    move-result v0

    if-eqz v0, :cond_73

    const/4 v7, 0x4

    goto :goto_44

    :cond_73
    const/4 v7, 0x0

    goto :goto_44

    :cond_75
    const/4 v3, 0x2

    if-ne v7, v3, :cond_7d

    :try_start_78
    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :cond_7d
    const/4 v3, 0x3

    if-ne v7, v3, :cond_85

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :cond_85
    const/4 v3, 0x4

    if-ne v7, v3, :cond_4e

    invoke-virtual {v10, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4e

    :cond_8d
    const/4 v0, 0x4

    if-ne v7, v0, :cond_cc

    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_95} :catch_111

    :try_start_95
    const-string v1, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v4

    const-string v1, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    const-string v1, "getBasestationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const-string v3, "getLongitude"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v3, v10}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v10, "getLatitude"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_c5} :catch_115

    move-object v1, v6

    :goto_c6
    const/4 v2, 0x4

    if-eq v7, v2, :cond_9

    move-object v0, v1

    goto/16 :goto_9

    :cond_cc
    const/4 v0, 0x3

    if-ne v7, v0, :cond_ed

    :try_start_cf
    const-string v0, "getTac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCi"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_e6} :catch_111

    :try_start_e6
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_e9} :catch_11a

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_c6

    :cond_ed
    :try_start_ed
    const-string v0, "getLac"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const-string v0, "getCid"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/baidu/location/d/j;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_104} :catch_111

    :try_start_104
    invoke-virtual {v0, v3, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_107} :catch_11f

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_c6

    :cond_10b
    move v0, v7

    goto/16 :goto_21

    :catch_10e
    move-exception v2

    goto/16 :goto_21

    :catch_111
    move-exception v0

    move v0, v7

    goto/16 :goto_21

    :catch_115
    move-exception v1

    move-object v1, v0

    move v0, v7

    goto/16 :goto_21

    :catch_11a
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_21

    :catch_11f
    move-exception v2

    move-object v6, v0

    move v0, v7

    goto/16 :goto_21

    :cond_124
    move v7, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_c6
.end method

.method private a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v8, 0x67

    const/4 v5, 0x1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v4, 0x11

    if-ge v6, v4, :cond_16

    const/4 v2, 0x0

    :goto_15
    return-object v2

    :cond_16
    new-instance v4, Lcom/baidu/location/b/a;

    invoke-direct {v4}, Lcom/baidu/location/b/a;-><init>()V

    instance-of v7, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_c2

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    iput-char v8, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v2}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    move v2, v5

    :cond_5e
    :goto_5e
    const/16 v3, 0x12

    if-lt v6, v3, :cond_aa

    if-nez v2, :cond_aa

    :try_start_64
    instance-of v2, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_aa

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x67

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    move-object v0, p1

    check-cast v0, Landroid/telephony/CellInfoWcdma;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_aa} :catch_194

    :cond_aa
    :goto_aa
    :try_start_aa
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getTimeStamp()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v2, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    iput-wide v2, v4, Lcom/baidu/location/b/a;->g:J
    :try_end_bf
    .catch Ljava/lang/Error; {:try_start_aa .. :try_end_bf} :catch_18b

    :goto_bf
    move-object v2, v4

    goto/16 :goto_15

    :cond_c2
    instance-of v7, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_146

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->e:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->f:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/b;->a(I)I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/baidu/location/b/b;->a(I)I

    move-result v7

    iput v7, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x63

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v2}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v2, :cond_11b

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->c:I

    if-lez v2, :cond_11b

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->c:I

    iput v2, v4, Lcom/baidu/location/b/a;->c:I

    :cond_118
    :goto_118
    move v2, v5

    goto/16 :goto_5e

    :cond_11b
    :try_start_11b
    iget-object v2, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_141

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_141

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_141

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_13c} :catch_197

    move-result v2

    if-gez v2, :cond_140

    move v2, v3

    :cond_140
    move v3, v2

    :cond_141
    :goto_141
    if-lez v3, :cond_118

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    goto :goto_118

    :cond_146
    instance-of v3, p1, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_5e

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/baidu/location/b/b;->a(I)I

    move-result v3

    iput v3, v4, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/baidu/location/b/b;->a(I)I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    iput-char v8, v4, Lcom/baidu/location/b/a;->i:C

    move-object v2, p1

    check-cast v2, Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->h:I

    move v2, v5

    goto/16 :goto_5e

    :catch_18b
    move-exception v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v4, Lcom/baidu/location/b/a;->g:J

    goto/16 :goto_bf

    :catch_194
    move-exception v2

    goto/16 :goto_aa

    :catch_197
    move-exception v2

    goto :goto_141
.end method

.method private a(Landroid/telephony/CellLocation;)Lcom/baidu/location/b/a;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;
    .registers 13

    const/4 v2, 0x0

    const v9, 0x7fffffff

    const/4 v8, 0x3

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_d

    :cond_c
    :goto_c
    return-object v2

    :cond_d
    new-instance v4, Lcom/baidu/location/b/a;

    invoke-direct {v4}, Lcom/baidu/location/b/a;-><init>()V

    if-eqz p2, :cond_17

    invoke-virtual {v4}, Lcom/baidu/location/b/a;->f()V

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/location/b/a;->g:J

    :try_start_1d
    iget-object v5, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_72

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_47

    const/4 v5, 0x0

    const/4 v7, 0x3

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_45

    iget-object v5, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v5, v5, Lcom/baidu/location/b/a;->c:I

    :cond_45
    iput v5, v4, Lcom/baidu/location/b/a;->c:I

    :cond_47
    const/4 v5, 0x3

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    :goto_52
    array-length v7, v6

    if-ge v3, v7, :cond_5d

    aget-char v7, v6, v3

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_99

    :cond_5d
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_70

    iget-object v3, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v3, v3, Lcom/baidu/location/b/a;->d:I

    :cond_70
    iput v3, v4, Lcom/baidu/location/b/a;->d:I

    :cond_72
    iget-object v3, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    sput v3, Lcom/baidu/location/b/b;->a:I
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7a} :catch_9c

    :goto_7a
    instance-of v3, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_a1

    move-object v2, p1

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->a:I

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    const/16 v2, 0x67

    iput-char v2, v4, Lcom/baidu/location/b/a;->i:C

    :cond_93
    :goto_93
    invoke-direct {p0, v4}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/a;)V

    move-object v2, v4

    goto/16 :goto_c

    :cond_99
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :catch_9c
    move-exception v3

    const/4 v3, 0x1

    sput v3, Lcom/baidu/location/b/b;->b:I

    goto :goto_7a

    :cond_a1
    instance-of v3, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_93

    const/16 v3, 0x63

    iput-char v3, v4, Lcom/baidu/location/b/a;->i:C

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v5, :cond_b9

    move-object v2, v4

    goto/16 :goto_c

    :cond_b9
    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    if-nez v3, :cond_106

    :try_start_bd
    const-string v3, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getNetworkId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getSystemId"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationLatitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const-string v5, "getBaseStationLongitude"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_106} :catch_189

    :cond_106
    sget-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    if-eqz v2, :cond_93

    sget-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    :try_start_112
    sget-object v2, Lcom/baidu/location/b/b;->m:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_127

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->d:I

    :cond_127
    iput v2, v4, Lcom/baidu/location/b/a;->d:I

    sget-object v2, Lcom/baidu/location/b/b;->k:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->b:I

    sget-object v2, Lcom/baidu/location/b/b;->l:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->a:I

    sget-object v2, Lcom/baidu/location/b/b;->n:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_166

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->e:I

    :cond_166
    sget-object v2, Lcom/baidu/location/b/b;->o:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_93

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v4, Lcom/baidu/location/b/a;->f:I
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_181} :catch_183

    goto/16 :goto_93

    :catch_183
    move-exception v2

    sput v8, Lcom/baidu/location/b/b;->b:I

    move-object v2, v4

    goto/16 :goto_c

    :catch_189
    move-exception v3

    sput-object v2, Lcom/baidu/location/b/b;->p:Ljava/lang/Class;

    const/4 v2, 0x2

    sput v2, Lcom/baidu/location/b/b;->b:I

    move-object v2, v4

    goto/16 :goto_c
.end method

.method public static declared-synchronized a()Lcom/baidu/location/b/b;
    .registers 2

    const-class v1, Lcom/baidu/location/b/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/b/b;

    invoke-direct {v0}, Lcom/baidu/location/b/b;-><init>()V

    sput-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;

    :cond_e
    sget-object v0, Lcom/baidu/location/b/b;->c:Lcom/baidu/location/b/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/baidu/location/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/b/b;->k()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/b/b;)Lcom/baidu/location/b/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    return-object v0
.end method

.method private c(Lcom/baidu/location/b/a;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->a(Lcom/baidu/location/b/a;)Z

    move-result v0

    if-nez v0, :cond_50

    :cond_13
    iput-object p1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {p1}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_51

    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_36

    iget v1, v0, Lcom/baidu/location/b/a;->b:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->b:I

    if-ne v1, v2, :cond_36

    iget v0, v0, Lcom/baidu/location/b/a;->a:I

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->a:I

    if-eq v0, v1, :cond_50

    :cond_36
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4b

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4b
    invoke-direct {p0}, Lcom/baidu/location/b/b;->j()V

    iput-boolean v3, p0, Lcom/baidu/location/b/b;->q:Z

    :cond_50
    :goto_50
    return-void

    :cond_51
    iget-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    goto :goto_24

    :cond_5c
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_50
.end method

.method private d(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v5, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_83

    :try_start_14
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_83

    const-string v2, "&nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2b
    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget v3, v0, Lcom/baidu/location/b/a;->a:I

    if-eq v3, v5, :cond_2b

    iget v3, v0, Lcom/baidu/location/b/a;->b:I

    if-eq v3, v5, :cond_2b

    iget v3, p1, Lcom/baidu/location/b/a;->a:I

    iget v4, v0, Lcom/baidu/location/b/a;->a:I

    if-eq v3, v4, :cond_88

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/baidu/location/b/a;->h:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_81} :catch_82

    goto :goto_2b

    :catch_82
    move-exception v0

    :cond_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_88
    :try_start_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/baidu/location/b/a;->h:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_b2} :catch_82

    goto/16 :goto_2b
.end method

.method private i()V
    .registers 15

    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lcvif.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_2b
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v9, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_54

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4e} :catch_4f

    goto :goto_6

    :catch_4f
    move-exception v0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_6

    :cond_54
    :try_start_54
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    const/4 v0, 0x0

    move v7, v0

    :goto_59
    const/4 v0, 0x3

    if-ge v7, v0, :cond_a0

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_7a

    const/16 v6, 0x67

    :cond_7a
    const/4 v5, 0x2

    if-ne v0, v5, :cond_7f

    const/16 v6, 0x63

    :cond_7f
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-nez v0, :cond_89

    :cond_85
    :goto_85
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_59

    :cond_89
    new-instance v0, Lcom/baidu/location/b/a;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b/a;-><init>(IIIIIC)V

    iput-wide v10, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_85

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/location/b/b;->q:Z

    iget-object v1, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_a0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_a3} :catch_4f

    goto/16 :goto_6
.end method

.method private j()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-nez v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_20

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-static {}, Lcom/baidu/location/d/j;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lcvif.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :try_start_4a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_53
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-wide v6, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move v0, v1

    :goto_75
    rsub-int/lit8 v2, v3, 0x3

    if-ge v0, v2, :cond_95

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_75

    :cond_95
    :goto_95
    if-ge v1, v3, :cond_109

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-wide v6, v0, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v0, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v2, 0x67

    if-ne v0, v2, :cond_ee

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_ea
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_95

    :cond_ee
    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v2, 0x63

    if-ne v0, v2, :cond_104

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_ea

    :catch_101
    move-exception v0

    goto/16 :goto_9

    :cond_104
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_ea

    :cond_109
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_10c} :catch_101

    goto/16 :goto_9
.end method

.method private k()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/baidu/location/b/b;->n()Lcom/baidu/location/b/a;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-direct {p0, v1}, Lcom/baidu/location/b/b;->c(Lcom/baidu/location/b/a;)V

    :cond_a
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->b()Z

    move-result v1

    if-nez v1, :cond_30

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_31

    move-result-object v1

    :goto_18
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;)Lcom/baidu/location/b/a;

    move-result-object v0

    :cond_1e
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_30

    :cond_26
    invoke-direct {p0}, Lcom/baidu/location/b/b;->l()Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellLocation;Z)Lcom/baidu/location/b/a;

    :cond_30
    return-void

    :catch_31
    move-exception v1

    move-object v1, v0

    goto :goto_18
.end method

.method private l()Landroid/telephony/CellLocation;
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    if-nez v0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    :try_start_6
    invoke-direct {p0}, Lcom/baidu/location/b/b;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "getCellLocation"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_16} :catch_66

    const/4 v0, 0x0

    :try_start_17
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_17 .. :try_end_1c} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_5d

    move-result-object v0

    :goto_1d
    if-nez v0, :cond_2e

    const/4 v4, 0x1

    :try_start_20
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20 .. :try_end_2d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2d} :catch_6d

    move-result-object v0

    :cond_2e
    :goto_2e
    if-nez v0, :cond_41

    :try_start_30
    const-string v3, "getCellLocationGemini"
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_66

    const/4 v4, 0x1

    :try_start_33
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_40} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_69

    move-result-object v0

    :cond_41
    :goto_41
    if-nez v0, :cond_54

    :try_start_43
    const-string v0, "getAllCellInfo"
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_45} :catch_66

    const/4 v3, 0x0

    :try_start_46
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/baidu/location/d/j;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_4e} :catch_60
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4e} :catch_63

    :goto_4e
    :try_start_4e
    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object v0

    if-eqz v0, :cond_54

    :cond_54
    :goto_54
    if-eqz v0, :cond_71

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_66

    :goto_58
    move-object v1, v0

    goto :goto_5

    :catch_5a
    move-exception v0

    move-object v0, v1

    goto :goto_1d

    :catch_5d
    move-exception v0

    move-object v0, v1

    goto :goto_1d

    :catch_60
    move-exception v0

    move-object v0, v1

    goto :goto_4e

    :catch_63
    move-exception v0

    move-object v0, v1

    goto :goto_4e

    :catch_66
    move-exception v0

    move-object v0, v1

    goto :goto_58

    :catch_69
    move-exception v3

    goto :goto_41

    :catch_6b
    move-exception v3

    goto :goto_41

    :catch_6d
    move-exception v3

    goto :goto_2e

    :catch_6f
    move-exception v3

    goto :goto_2e

    :cond_71
    move-object v0, v1

    goto :goto_58

    :cond_73
    move-object v0, v1

    goto :goto_54
.end method

.method private m()Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0}, Lcom/baidu/location/b/b;->o()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    move-object v0, v1

    :goto_d
    :try_start_d
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_1b

    move-result-object v1

    :goto_11
    return-object v1

    :pswitch_12
    const-string v0, "android.telephony.MSimTelephonyManager"

    goto :goto_d

    :pswitch_15
    const-string v0, "android.telephony.TelephonyManager2"

    goto :goto_d

    :pswitch_18
    const-string v0, "android.telephony.TelephonyManager"

    goto :goto_d

    :catch_1b
    move-exception v0

    goto :goto_11

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method private n()Lcom/baidu/location/b/a;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_11

    move-object v1, v2

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_59

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    invoke-direct {p0, v0}, Lcom/baidu/location/b/b;->a(Landroid/telephony/CellInfo;)Lcom/baidu/location/b/a;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v5

    if-nez v5, :cond_4b

    move-object v0, v2

    :cond_47
    if-nez v1, :cond_57

    :goto_49
    move-object v1, v0

    goto :goto_24

    :cond_4b
    if-eqz v3, :cond_47

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_53} :catch_54

    goto :goto_10

    :catch_54
    move-exception v0

    move-object v1, v2

    goto :goto_10

    :cond_57
    move-object v0, v1

    goto :goto_49

    :cond_59
    move-object v1, v2

    goto :goto_10
.end method

.method private o()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.telephony.MSimTelephonyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_12

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_f

    :try_start_9
    const-string v1, "android.telephony.TelephonyManager2"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    const/4 v0, 0x2

    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f

    :catch_12
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public a(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .registers 9

    const/4 v6, -0x1

    const-string v0, ""

    :try_start_3
    invoke-direct {p0, p1}, Lcom/baidu/location/b/b;->d(Lcom/baidu/location/b/a;)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v0, :cond_24

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "&nc="

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    :goto_23
    return-object v0

    :cond_24
    const/16 v2, 0x11

    if-ge v1, v2, :cond_23

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_94

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    const-string v1, "&nc="

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v4

    if-eq v4, v6, :cond_dc

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    if-eq v5, v6, :cond_dc

    iget v5, p1, Lcom/baidu/location/b/a;->a:I

    if-eq v5, v4, :cond_a0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8c} :catch_d5

    move-result-object v1

    move-object v0, v1

    :goto_8e
    add-int/lit8 v1, v2, 0x1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_d1

    :cond_94
    :goto_94
    if-eqz v0, :cond_23

    const-string v1, "&nc="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v0, 0x0

    goto :goto_23

    :cond_a0
    :try_start_a0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_ce} :catch_d5

    move-result-object v1

    move-object v0, v1

    goto :goto_8e

    :cond_d1
    move v2, v1

    move-object v1, v0

    goto/16 :goto_3e

    :catch_d5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_94

    :cond_dc
    move-object v0, v1

    goto :goto_8e

    :cond_de
    move-object v0, v1

    goto :goto_94
.end method

.method public b(Lcom/baidu/location/b/a;)Ljava/lang/String;
    .registers 14

    const v11, 0x7fffffff

    const/4 v7, 0x2

    const/4 v10, 0x1

    const-wide v8, 0x40cc200000000000L    # 14400.0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v0, "&nw="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-char v0, p1, Lcom/baidu/location/b/a;->i:C

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "&cl=%d|%d|%d|%d&cl_s=%d"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/baidu/location/b/a;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p1, Lcom/baidu/location/b/a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    iget v5, p1, Lcom/baidu/location/b/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget v6, p1, Lcom/baidu/location/b/a;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, p1, Lcom/baidu/location/b/a;->h:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lcom/baidu/location/b/a;->e:I

    if-ge v0, v11, :cond_7d

    iget v0, p1, Lcom/baidu/location/b/a;->f:I

    if-ge v0, v11, :cond_7d

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "&cdmall=%.6f|%.6f"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Lcom/baidu/location/b/a;->f:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p1, Lcom/baidu/location/b/a;->e:I

    int-to-double v6, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7d
    const-string v0, "&cl_t="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v0, p1, Lcom/baidu/location/b/a;->g:J

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    if-eqz v0, :cond_ff

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ff

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "&clt="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_9f
    if-ge v1, v4, :cond_ff

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b/a;

    iget v5, v0, Lcom/baidu/location/b/a;->c:I

    iget v6, p1, Lcom/baidu/location/b/a;->c:I

    if-eq v5, v6, :cond_b4

    iget v5, v0, Lcom/baidu/location/b/a;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_b4
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->d:I

    iget v6, p1, Lcom/baidu/location/b/a;->d:I

    if-eq v5, v6, :cond_c4

    iget v5, v0, Lcom/baidu/location/b/a;->d:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_c4
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->a:I

    iget v6, p1, Lcom/baidu/location/b/a;->a:I

    if-eq v5, v6, :cond_d4

    iget v5, v0, Lcom/baidu/location/b/a;->a:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_d4
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v0, Lcom/baidu/location/b/a;->b:I

    iget v6, p1, Lcom/baidu/location/b/a;->b:I

    if-eq v5, v6, :cond_e4

    iget v5, v0, Lcom/baidu/location/b/a;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_e4
    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/baidu/location/b/a;->g:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9f

    :cond_ff
    sget v0, Lcom/baidu/location/b/b;->a:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_107

    sput v2, Lcom/baidu/location/b/b;->a:I

    :cond_107
    sget v0, Lcom/baidu/location/b/b;->b:I

    shl-int/lit8 v0, v0, 0x8

    sget v1, Lcom/baidu/location/b/b;->a:I

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    if-eqz v0, :cond_12d

    iget-object v0, p1, Lcom/baidu/location/b/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12d
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_47

    if-ne v0, v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    sget-boolean v0, Lcom/baidu/location/f;->f:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    new-instance v0, Lcom/baidu/location/b/b$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/b$a;-><init>(Lcom/baidu/location/b/b;)V

    iput-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    invoke-direct {p0}, Lcom/baidu/location/b/b;->i()V

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_47

    if-eqz v0, :cond_6

    :try_start_33
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/16 v2, 0x110

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3c} :catch_76
    .catchall {:try_start_33 .. :try_end_3c} :catchall_47

    :goto_3c
    :try_start_3c
    invoke-direct {p0}, Lcom/baidu/location/b/b;->o()I
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_57
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    move-result v0

    packed-switch v0, :pswitch_data_78

    :goto_43
    const/4 v0, 0x1

    :try_start_44
    iput-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_47

    goto :goto_6

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_4a
    :try_start_4a
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone_msim"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_56} :catch_57
    .catchall {:try_start_4a .. :try_end_56} :catchall_47

    goto :goto_43

    :catch_57
    move-exception v0

    const/4 v0, 0x0

    :try_start_59
    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_47

    goto :goto_43

    :pswitch_5c
    :try_start_5c
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;

    goto :goto_43

    :pswitch_69
    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone2"

    invoke-static {v0, v1}, Lcom/baidu/location/d/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/b;->e:Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_75} :catch_57
    .catchall {:try_start_5c .. :try_end_75} :catchall_47

    goto :goto_43

    :catch_76
    move-exception v0

    goto :goto_3c

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_69
        :pswitch_4a
        :pswitch_5c
    .end packed-switch
.end method

.method public declared-synchronized c()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->i:Lcom/baidu/location/b/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->h:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/location/b/b;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/b;->j:Z
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_5

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/b/b;->q:Z

    return v0
.end method

.method public e()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_5

    :catch_d
    move-exception v1

    goto :goto_5
.end method

.method public f()Lcom/baidu/location/b/a;
    .registers 8

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_14
    iget-object v0, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1b

    :try_start_18
    invoke-direct {p0}, Lcom/baidu/location/b/b;->k()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_6c

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    new-instance v0, Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->a:I

    iget-object v2, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v2, v2, Lcom/baidu/location/b/a;->b:I

    iget-object v3, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v3, v3, Lcom/baidu/location/b/a;->c:I

    iget-object v4, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v4, v4, Lcom/baidu/location/b/a;->d:I

    iget-object v5, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget v5, v5, Lcom/baidu/location/b/a;->h:I

    iget-object v6, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-char v6, v6, Lcom/baidu/location/b/a;->i:C

    invoke-direct/range {v0 .. v6}, Lcom/baidu/location/b/a;-><init>(IIIIIC)V

    iput-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    :cond_45
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-char v0, v0, Lcom/baidu/location/b/a;->i:C

    const/16 v1, 0x67

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->d:I

    iput v1, v0, Lcom/baidu/location/b/a;->d:I

    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    iget-object v1, p0, Lcom/baidu/location/b/b;->g:Lcom/baidu/location/b/a;

    iget v1, v1, Lcom/baidu/location/b/a;->c:I

    iput v1, v0, Lcom/baidu/location/b/a;->c:I

    :cond_69
    iget-object v0, p0, Lcom/baidu/location/b/b;->f:Lcom/baidu/location/b/a;

    return-object v0

    :catch_6c
    move-exception v0

    goto :goto_1b
.end method

.method public g()Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/location/b/b;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_1f

    move-result v0

    :cond_b
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&sim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v1

    goto :goto_b
.end method

.method public h()I
    .registers 3

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_2c

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_43

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :catch_2c
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10

    :cond_2f
    const-string v1, "46001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v0, 0x2

    goto :goto_2b

    :cond_39
    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/4 v0, 0x3

    goto :goto_2b

    :cond_43
    const/4 v0, 0x0

    goto :goto_2b
.end method
