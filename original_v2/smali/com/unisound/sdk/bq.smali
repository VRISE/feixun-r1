.class Lcom/unisound/sdk/bq;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bg;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bg;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->a(Lcom/unisound/sdk/bg;Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-static {v0}, Lcom/unisound/sdk/bg;->i(Lcom/unisound/sdk/bg;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_74

    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_23
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10108

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_2c
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10109

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_35
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010a

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_3e
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010b

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_47
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010c

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_50
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010d

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_59
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010e

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_62
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x1010f

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_6b
    iget-object v0, p0, Lcom/unisound/sdk/bq;->a:Lcom/unisound/sdk/bg;

    const v1, -0x10110

    invoke-static {v0, v1}, Lcom/unisound/sdk/bg;->b(Lcom/unisound/sdk/bg;I)V

    goto :goto_11

    :pswitch_data_74
    .packed-switch 0x320
        :pswitch_23
        :pswitch_2c
        :pswitch_35
        :pswitch_3e
        :pswitch_47
        :pswitch_50
        :pswitch_59
        :pswitch_62
        :pswitch_6b
    .end packed-switch
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bq;->a([Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bq;->a(Ljava/lang/Integer;)V

    return-void
.end method
