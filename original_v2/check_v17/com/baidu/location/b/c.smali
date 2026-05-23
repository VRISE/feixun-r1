.class public final Lcom/baidu/location/b/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "WIFI"

    :goto_8
    return-object v0

    :cond_9
    packed-switch p0, :pswitch_data_18

    const-string v0, "unknown"

    goto :goto_8

    :pswitch_f
    const-string v0, "2G"

    goto :goto_8

    :pswitch_12
    const-string v0, "3G"

    goto :goto_8

    :pswitch_15
    const-string v0, "4G"

    goto :goto_8

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
