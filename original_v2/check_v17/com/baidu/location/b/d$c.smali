.class Lcom/baidu/location/b/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/d;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/d;Lcom/baidu/location/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/d$c;-><init>(Lcom/baidu/location/b/d;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;J)J

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, p1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_2c

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    goto :goto_4

    :pswitch_11
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;J)J

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Z)V

    goto :goto_4

    :pswitch_26
    iget-object v0, p0, Lcom/baidu/location/b/d$c;->a:Lcom/baidu/location/b/d;

    invoke-static {v0, v4}, Lcom/baidu/location/b/d;->b(Lcom/baidu/location/b/d;Z)Z

    goto :goto_4

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_11
        :pswitch_26
    .end packed-switch
.end method
