.class public Lcom/baidu/location/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static c:Lcom/baidu/location/a/m;


# instance fields
.field private a:[F

.field private b:Landroid/hardware/SensorManager;

.field private d:F

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->f:Z

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/a/m;
    .registers 2

    const-class v1, Lcom/baidu/location/a/m;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/a/m;

    invoke-direct {v0}, Lcom/baidu/location/a/m;-><init>()V

    sput-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;

    :cond_e
    sget-object v0, Lcom/baidu/location/a/m;->c:Lcom/baidu/location/a/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/m;->e:Z

    return-void
.end method

.method public declared-synchronized b()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_39

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/baidu/location/f;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    :cond_1d
    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-boolean v1, p0, Lcom/baidu/location/a/m;->e:Z

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_39

    goto :goto_5

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/m;->b:Landroid/hardware/SensorManager;

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/m;->g:Z
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_17

    goto :goto_5

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/m;->e:Z

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/baidu/location/a/m;->a:[F

    iget-object v0, p0, Lcom/baidu/location/a/m;->a:[F

    if-eqz v0, :cond_a

    const/16 v0, 0x9

    new-array v0, v0, [F

    :try_start_1d
    iget-object v1, p0, Lcom/baidu/location/a/m;->a:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/m;->d:F

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_48

    iget v0, p0, Lcom/baidu/location/a/m;->d:F

    float-to-double v0, v0

    :goto_3c
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/location/a/m;->d:F
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_43} :catch_44

    goto :goto_a

    :catch_44
    move-exception v0

    iput v2, p0, Lcom/baidu/location/a/m;->d:F

    goto :goto_a

    :cond_48
    :try_start_48
    iget v0, p0, Lcom/baidu/location/a/m;->d:F
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4a} :catch_44

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_3c

    nop

    :pswitch_data_50
    .packed-switch 0xb
        :pswitch_b
    .end packed-switch
.end method
