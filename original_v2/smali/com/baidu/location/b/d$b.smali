.class Lcom/baidu/location/b/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcom/baidu/location/b/d;

.field private c:J

.field private final d:I

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/d;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/baidu/location/b/d$b;->a:J

    iput-wide v2, p0, Lcom/baidu/location/b/d$b;->c:J

    const/16 v0, 0x190

    iput v0, p0, Lcom/baidu/location/b/d$b;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/d$b;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/d$b;->f:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/b/d$b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/b/d$b;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/b/d$b;->i:Ljava/lang/String;

    iput-wide v2, p0, Lcom/baidu/location/b/d$b;->j:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/d;Lcom/baidu/location/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/d$b;-><init>(Lcom/baidu/location/b/d;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->c(Lcom/baidu/location/b/d;)Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    packed-switch p1, :pswitch_data_120

    :pswitch_e
    goto :goto_a

    :pswitch_f
    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0, v2}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    invoke-static {v1}, Lcom/baidu/location/b/d;->a(I)I

    invoke-static {v1}, Lcom/baidu/location/b/d;->b(I)I

    goto :goto_a

    :pswitch_20
    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;)Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_28
    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->e(Lcom/baidu/location/b/d;)Landroid/location/GpsStatus;

    move-result-object v0

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    iget-object v2, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v2}, Lcom/baidu/location/b/d;->c(Lcom/baidu/location/b/d;)Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :goto_40
    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->e(Lcom/baidu/location/b/d;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;I)I

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;I)I

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->d(Lcom/baidu/location/b/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v4, v1

    :cond_66
    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ef

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v7

    if-eqz v7, :cond_66

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v7

    const/16 v8, 0x41

    if-gt v7, v8, :cond_c1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    float-to-double v8, v7

    add-double/2addr v2, v8

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c1
    iget-object v7, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v7}, Lcom/baidu/location/b/d;->d(Lcom/baidu/location/b/d;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    sget v6, Lcom/baidu/location/d/j;->G:I

    int-to-float v6, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_66

    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->f(Lcom/baidu/location/b/d;)I

    goto :goto_66

    :catch_db
    move-exception v0

    goto/16 :goto_a

    :cond_de
    iget-object v0, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v0}, Lcom/baidu/location/b/d;->c(Lcom/baidu/location/b/d;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/b/d$b;->b:Lcom/baidu/location/b/d;

    invoke-static {v2}, Lcom/baidu/location/b/d;->e(Lcom/baidu/location/b/d;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto/16 :goto_40

    :cond_ef
    if-lez v1, :cond_fa

    invoke-static {v1}, Lcom/baidu/location/b/d;->b(I)I

    int-to-double v0, v1

    div-double v0, v2, v0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(D)D

    :cond_fa
    if-lez v4, :cond_107

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/d$b;->j:J

    invoke-static {v4}, Lcom/baidu/location/b/d;->a(I)I

    goto/16 :goto_a

    :cond_107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/d$b;->j:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/d$b;->j:J

    invoke-static {v4}, Lcom/baidu/location/b/d;->a(I)I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_11d} :catch_db

    goto/16 :goto_a

    nop

    :pswitch_data_120
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_20
    .end packed-switch
.end method
