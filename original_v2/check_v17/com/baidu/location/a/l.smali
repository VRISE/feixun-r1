.class public Lcom/baidu/location/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/baidu/location/a/l;


# instance fields
.field private c:[F

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/l;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/baidu/location/a/l;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->g:Z

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->h:Z

    :try_start_18
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    :cond_2a
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->h:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    iput-boolean v2, p0, Lcom/baidu/location/a/l;->h:Z

    goto :goto_36
.end method

.method public static a()Lcom/baidu/location/a/l;
    .registers 2

    sget-object v1, Lcom/baidu/location/a/l;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/a/l;

    invoke-direct {v0}, Lcom/baidu/location/a/l;-><init>()V

    sput-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    :cond_e
    sget-object v0, Lcom/baidu/location/a/l;->b:Lcom/baidu/location/a/l;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public b()V
    .registers 4

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->h:Z

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_a
    iput v0, p0, Lcom/baidu/location/a/l;->d:I

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-nez v0, :cond_28

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    :cond_28
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3f

    :cond_3b
    :goto_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    goto :goto_4

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public c()V
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/l;->i:Landroid/hardware/SensorManager;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_15

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    goto :goto_4

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public d()F
    .registers 9

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    monitor-enter v2

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    iget v3, p0, Lcom/baidu/location/a/l;->d:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_3a

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_37

    move-result v0

    if-lez v0, :cond_3a

    :try_start_1e
    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_31} :catch_34
    .catchall {:try_start_1e .. :try_end_31} :catchall_37

    move-result v0

    :goto_32
    :try_start_32
    monitor-exit v2

    return v0

    :catch_34
    move-exception v0

    move v0, v1

    goto :goto_32

    :catchall_37
    move-exception v0

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    move v0, v1

    goto :goto_32
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_92

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-boolean v0, p0, Lcom/baidu/location/a/l;->g:Z

    if-eqz v0, :cond_a

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/l;->c:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/baidu/location/a/l;->d:I

    if-eq v0, v1, :cond_82

    iput v0, p0, Lcom/baidu/location/a/l;->d:I

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_3d

    :cond_50
    int-to-float v0, v2

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_56
    iget-object v2, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_6e

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6e} :catch_75
    .catchall {:try_start_56 .. :try_end_6e} :catchall_7f

    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_7f

    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_a

    :catch_75
    move-exception v0

    :try_start_76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/baidu/location/a/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_6e

    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_7f

    throw v0

    :cond_82
    iget-object v0, p0, Lcom/baidu/location/a/l;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/baidu/location/a/l;->c:[F

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    nop

    :pswitch_data_92
    .packed-switch 0x6
        :pswitch_b
    .end packed-switch
.end method
