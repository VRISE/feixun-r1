.class public Lcom/baidu/location/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/b/a/c;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/a/j;


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/j;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/a/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/a/j;->c:I

    iput-object v2, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/a/j;->e:J

    iput-object v2, p0, Lcom/baidu/location/a/j;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/baidu/location/a/j;
    .registers 2

    sget-object v1, Lcom/baidu/location/a/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/a/j;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/a/j;

    invoke-direct {v0}, Lcom/baidu/location/a/j;-><init>()V

    sput-object v0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/a/j;

    :cond_e
    sget-object v0, Lcom/baidu/location/a/j;->b:Lcom/baidu/location/a/j;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;)Lcom/baidu/b/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/b/a/b;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;)Lcom/baidu/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/b/a/b;->a()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 6

    iput p1, p0, Lcom/baidu/location/a/j;->c:I

    iget v0, p0, Lcom/baidu/location/a/j;->c:I

    if-nez v0, :cond_27

    sget-object v0, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    const-string v1, "LocationAuthManager Authentication AUTHENTICATE_SUCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    if-eqz p2, :cond_26

    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_26

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/j;->f:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_26} :catch_4a

    :cond_26
    :goto_26
    return-void

    :cond_27
    sget-object v0, Lcom/baidu/location/d/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationAuthManager Authentication Error errorcode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public a(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;)Lcom/baidu/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lbs_locsdk"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/baidu/b/a/b;->a(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/b/a/c;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/a/j;->e:J

    return-void
.end method

.method public b()Z
    .registers 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/baidu/location/a/j;->c:I

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/baidu/location/a/j;->c:I

    const/16 v3, 0x25a

    if-eq v2, v3, :cond_20

    iget v2, p0, Lcom/baidu/location/a/j;->c:I

    const/16 v3, 0x259

    if-eq v2, v3, :cond_20

    iget v2, p0, Lcom/baidu/location/a/j;->c:I

    const/16 v3, -0xa

    if-eq v2, v3, :cond_20

    iget v2, p0, Lcom/baidu/location/a/j;->c:I

    const/16 v3, -0xb

    if-eq v2, v3, :cond_20

    move v0, v1

    :cond_20
    iget-object v2, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    if-eqz v2, :cond_45

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/location/a/j;->e:J

    sub-long/2addr v2, v4

    if-eqz v0, :cond_46

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_45

    iget-object v2, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;)Lcom/baidu/b/a/b;

    move-result-object v2

    const-string v3, "lbs_locsdk"

    invoke-virtual {v2, v1, v3, v6, p0}, Lcom/baidu/b/a/b;->a(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/b/a/c;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/j;->e:J

    :cond_45
    :goto_45
    return v0

    :cond_46
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_52

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_45

    :cond_52
    iget-object v2, p0, Lcom/baidu/location/a/j;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/b/a/b;->a(Landroid/content/Context;)Lcom/baidu/b/a/b;

    move-result-object v2

    const-string v3, "lbs_locsdk"

    invoke-virtual {v2, v1, v3, v6, p0}, Lcom/baidu/b/a/b;->a(ZLjava/lang/String;Ljava/util/Hashtable;Lcom/baidu/b/a/c;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/a/j;->e:J

    goto :goto_45
.end method
