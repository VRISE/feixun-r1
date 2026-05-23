.class Lcom/baidu/location/g$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method constructor <init>(Lcom/baidu/location/g;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_180

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_a
    :goto_a
    return-void

    :sswitch_b
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_11
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->b(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_17
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_1d
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_23
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, p1}, Lcom/baidu/location/g;->e(Lcom/baidu/location/g;Landroid/os/Message;)V

    goto :goto_a

    :sswitch_29
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->o(Lcom/baidu/location/g;)V

    goto :goto_a

    :sswitch_2f
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->p(Lcom/baidu/location/g;)V

    goto :goto_a

    :sswitch_35
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->q(Lcom/baidu/location/g;)V

    goto :goto_a

    :sswitch_3b
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Z)Z

    goto :goto_a

    :sswitch_4b
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/location/h;->h:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v1}, Lcom/baidu/location/g;->c(Lcom/baidu/location/g;Z)Z

    goto :goto_a

    :sswitch_5b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/c;

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1}, Lcom/baidu/location/g;->s(Lcom/baidu/location/g;)Z

    move-result v1

    if-ne v1, v2, :cond_88

    invoke-virtual {v0}, Lcom/baidu/location/c;->h()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_a

    :cond_88
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->s(Lcom/baidu/location/g;)Z

    move-result v0

    if-ne v0, v2, :cond_9f

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Z)Z

    goto/16 :goto_a

    :cond_9f
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->r(Lcom/baidu/location/g;)Z

    move-result v0

    if-nez v0, :cond_ac

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0, v2}, Lcom/baidu/location/g;->d(Lcom/baidu/location/g;Z)Z

    :cond_ac
    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    const/16 v1, 0x15

    invoke-static {v0, p1, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Landroid/os/Message;I)V

    goto/16 :goto_a

    :sswitch_b5
    :try_start_b5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, "mac"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_17c

    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v0

    :goto_ca
    const-string v0, "hotspot"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/b;->onConnectHotSpotMessage(Ljava/lang/String;I)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_f2} :catch_f3

    goto :goto_e3

    :catch_f3
    move-exception v0

    goto/16 :goto_a

    :sswitch_f6
    :try_start_f6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loctype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "diagtype"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "diagmessage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-lez v1, :cond_a

    if-lez v2, :cond_a

    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->l(Lcom/baidu/location/g;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_124
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/b;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v5}, Lcom/baidu/location/b;->onLocDiagnosticMessage(IILjava/lang/String;)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_13a} :catch_13b

    goto :goto_124

    :catch_13b
    move-exception v0

    goto/16 :goto_a

    :sswitch_13e
    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/c;

    invoke-static {v1, v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Lcom/baidu/location/c;)V

    goto/16 :goto_a

    :sswitch_149
    :try_start_149
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_a

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    iget-object v2, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v2, v1, v0}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;ILandroid/app/Notification;)V
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_163} :catch_165

    goto/16 :goto_a

    :catch_165
    move-exception v0

    goto/16 :goto_a

    :sswitch_168
    :try_start_168
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "removenotify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/baidu/location/g$a;->a:Lcom/baidu/location/g;

    invoke-static {v1, v0}, Lcom/baidu/location/g;->e(Lcom/baidu/location/g;Z)V
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_177} :catch_179

    goto/16 :goto_a

    :catch_179
    move-exception v0

    goto/16 :goto_a

    :cond_17c
    move-object v1, v0

    goto/16 :goto_ca

    nop

    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_b
        0x4 -> :sswitch_35
        0x5 -> :sswitch_11
        0x6 -> :sswitch_17
        0x15 -> :sswitch_5b
        0x36 -> :sswitch_3b
        0x37 -> :sswitch_4b
        0x12f -> :sswitch_f6
        0x196 -> :sswitch_b5
        0x2bd -> :sswitch_13e
        0x2bf -> :sswitch_149
        0x2c0 -> :sswitch_168
        0x514 -> :sswitch_1d
        0x578 -> :sswitch_23
    .end sparse-switch
.end method
