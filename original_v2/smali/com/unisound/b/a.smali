.class public Lcom/unisound/b/a;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/unisound/b/a/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "errorCode"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "registerCode"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    packed-switch p1, :pswitch_data_4e

    const-string v0, "message"

    const-string v2, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_28

    :goto_1b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_20
    :try_start_20
    const-string v0, "message"

    const-string v2, "\u6ca1\u6709\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_1b

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b

    :pswitch_2d
    :try_start_2d
    const-string v0, "message"

    const-string v2, "\u5f02\u5e38\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :pswitch_35
    const-string v0, "message"

    const-string v2, "\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a\u9519\u8bef"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :pswitch_3d
    const-string v0, "message"

    const-string v2, "\u65e0\u6548\u6fc0\u6d3b\u7c7b\u578b"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b

    :pswitch_45
    const-string v0, "message"

    const-string v2, "\u6fc0\u6d3b\u72b6\u6001\u9519\u8bef\uff0c\u5df2\u7ecf\u6709\u6fc0\u6d3b\u64cd\u4f5c\u6b63\u5728\u6267\u884c"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_28

    goto :goto_1b

    nop

    :pswitch_data_4e
    .packed-switch 0x3f3
        :pswitch_20
        :pswitch_2d
        :pswitch_35
        :pswitch_3d
        :pswitch_45
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/unisound/b/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    if-nez v0, :cond_a

    const-string v0, "ActivatorHandler listener == null"

    invoke-static {v0}, Lcom/unisound/b/i;->b(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_84

    goto :goto_9

    :sswitch_10
    const-string v0, "ActivatorHandler GET_RESULT"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_1f
    const-string v0, "ActivatorHandler NO_NETWORK_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f3

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_30
    const-string v0, "ActivatorHandler EXCEPTION_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f4

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_41
    const-string v0, "ActivatorHandler RESPONSE_IS_NULL_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f5

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_52
    const-string v0, "ActivatorHandler INVALID_URL_TYPE_ERROR"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f6

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_63
    const-string v0, "ActivatorHandler ACTIVATOR_STATUS_ERROR_MESSAGE"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    const/16 v1, 0x3f7

    invoke-direct {p0, v1}, Lcom/unisound/b/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_74
    const-string v0, "ActivatorHandler NO_READ_PHONE_STATE_PERMISSION"

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/b/a;->a:Lcom/unisound/b/a/c;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/unisound/b/a/c;->a(Ljava/lang/String;)V

    goto :goto_9

    nop

    :sswitch_data_84
    .sparse-switch
        0x66 -> :sswitch_10
        0x6a -> :sswitch_41
        0x6b -> :sswitch_30
        0x6c -> :sswitch_63
        0x6d -> :sswitch_1f
        0x6e -> :sswitch_52
        0x78 -> :sswitch_74
    .end sparse-switch
.end method
