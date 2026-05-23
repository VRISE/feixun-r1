.class public Lcom/unisound/sdk/cb;
.super Lcom/unisound/common/ab;


# static fields
.field private static final a:I = 0x64

.field private static final b:I = 0x65

.field private static final c:I = 0x66


# instance fields
.field private d:Lcom/unisound/client/TextUnderstanderListener;

.field private e:Lcom/unisound/sdk/cm;

.field private f:Lcom/unisound/sdk/cl;

.field private g:Landroid/content/Context;

.field private h:Lcom/unisound/sdk/ck;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    new-instance v0, Lcom/unisound/sdk/cc;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/cc;-><init>(Lcom/unisound/sdk/cb;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->h:Lcom/unisound/sdk/ck;

    iput-object p1, p0, Lcom/unisound/sdk/cb;->g:Landroid/content/Context;

    new-instance v0, Lcom/unisound/sdk/cl;

    invoke-direct {v0, p2, p3}, Lcom/unisound/sdk/cl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    sget-object v1, Lcom/unisound/c/a;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->c()V

    :cond_9
    new-instance v0, Lcom/unisound/sdk/cm;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cm;-><init>(Lcom/unisound/sdk/cl;)V

    iput-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cm;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->h:Lcom/unisound/sdk/ck;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cm;->a(Lcom/unisound/sdk/ck;)V

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->start()V

    return-void
.end method


# virtual methods
.method protected cancel()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/cb;->e:Lcom/unisound/sdk/cm;

    :cond_c
    return-void
.end method

.method protected getOption(I)Ljava/lang/Object;
    .registers 3

    packed-switch p1, :pswitch_data_42

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_1a
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_21
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_28
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_2f
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->x()Lcom/unisound/sdk/cl;

    move-result-object v0

    goto :goto_4

    :pswitch_36
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v0}, Lcom/unisound/sdk/cl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    nop

    :pswitch_data_42
    .packed-switch 0x3fd
        :pswitch_c
        :pswitch_5
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1a
        :pswitch_21
        :pswitch_28
        :pswitch_13
        :pswitch_3
        :pswitch_3
        :pswitch_36
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    const/16 v2, 0x3e8

    invoke-interface {v1, v2, v0}, Lcom/unisound/client/TextUnderstanderListener;->onResult(ILjava/lang/String;)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    invoke-interface {v1, v0}, Lcom/unisound/client/TextUnderstanderListener;->onEvent(I)V

    goto :goto_5

    :pswitch_28
    iget-object v0, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/unisound/client/TextUnderstanderListener;->onError(ILjava/lang/String;)V

    goto :goto_5

    :pswitch_data_3e
    .packed-switch 0x64
        :pswitch_6
        :pswitch_16
        :pswitch_28
    .end packed-switch
.end method

.method protected init(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/unisound/sdk/cb;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/c/a;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    :goto_5
    const/4 v0, 0x0

    return v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    if-eqz v1, :cond_18

    const/16 v1, 0x66

    const v2, -0x109a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method protected setListener(Lcom/unisound/client/TextUnderstanderListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/cb;->d:Lcom/unisound/client/TextUnderstanderListener;

    return-void
.end method

.method protected setOption(ILjava/lang/Object;)V
    .registers 6

    packed-switch p1, :pswitch_data_be

    :goto_3
    :pswitch_3
    return-void

    :pswitch_4
    :try_start_4
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->k(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_3

    :catch_c
    move-exception v0

    const-string v0, "set nlu_scenario Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_13
    :try_start_13
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_43

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_3c

    const/4 v2, 0x1

    :try_start_29
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-virtual {v2, v1, v0}, Lcom/unisound/sdk/cl;->a(Ljava/lang/String;I)Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_34} :catch_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_34} :catch_3c

    goto :goto_3

    :catch_35
    move-exception v0

    :try_start_36
    const-string v0, "nlu server set Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3b} :catch_3c

    goto :goto_3

    :catch_3c
    move-exception v0

    const-string v0, "set nlu_server_address Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_43
    :try_start_43
    const-string v0, "nlu server set Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_48} :catch_3c

    goto :goto_3

    :pswitch_49
    :try_start_49
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->e(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_50} :catch_51

    goto :goto_3

    :catch_51
    move-exception v0

    const-string v0, "set gps Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_58
    :try_start_58
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->h(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_3

    :catch_60
    move-exception v0

    const-string v0, "set history Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_67
    :try_start_67
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->i(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_6f

    goto :goto_3

    :catch_6f
    move-exception v0

    const-string v0, "set city Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_76
    :try_start_76
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->j(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7d} :catch_7e

    goto :goto_3

    :catch_7e
    move-exception v0

    const-string v0, "set voiceID Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_86
    :try_start_86
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    check-cast p2, Lcom/unisound/sdk/cl;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/cl;->a(Lcom/unisound/sdk/cl;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_8f

    goto/16 :goto_3

    :catch_8f
    move-exception v0

    const-string v0, "set nlu_params Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_97
    :try_start_97
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->d(Ljava/lang/String;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a0} :catch_a2

    goto/16 :goto_3

    :catch_a2
    move-exception v0

    const-string v0, "set nlu_ver Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_aa
    :try_start_aa
    iget-object v0, p0, Lcom/unisound/sdk/cb;->f:Lcom/unisound/sdk/cl;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/cl;->f(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b3} :catch_b5

    goto/16 :goto_3

    :catch_b5
    move-exception v0

    const-string v0, "set nlu_appver Error."

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    nop

    :pswitch_data_be
    .packed-switch 0x3fd
        :pswitch_4
        :pswitch_13
        :pswitch_86
        :pswitch_97
        :pswitch_aa
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_58
        :pswitch_67
        :pswitch_76
        :pswitch_49
    .end packed-switch
.end method

.method protected setText(Ljava/lang/String;)V
    .registers 4

    const/16 v1, 0x64

    if-nez p1, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lcom/unisound/sdk/cb;->sendMessage(ILjava/lang/Object;)V

    goto :goto_9

    :cond_16
    invoke-direct {p0, p1}, Lcom/unisound/sdk/cb;->a(Ljava/lang/String;)V

    goto :goto_9
.end method
