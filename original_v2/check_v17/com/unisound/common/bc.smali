.class Lcom/unisound/common/bc;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/unisound/common/ba;


# direct methods
.method constructor <init>(Lcom/unisound/common/ba;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iput-object p2, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WakeupWordCacheAndUpload uploadCacheWakeupContent"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/unisound/common/ba;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/common/ba;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iget-object v3, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/unisound/common/ba;->a(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/unisound/common/bd;

    move-result-object v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iget-object v3, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/unisound/common/ba;->b(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_42} :catch_43

    goto :goto_25

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_47
    :goto_47
    return-void

    :cond_48
    :try_start_48
    iget-object v3, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/unisound/common/ba;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v2, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iget-object v3, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/unisound/common/ba;->b(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    :cond_5c
    iget-object v4, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iget-object v5, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v4, v5, v2, v3}, Lcom/unisound/common/ba;->a(Lcom/unisound/common/ba;Landroid/content/Context;Lcom/unisound/common/bd;Ljava/util/concurrent/BlockingQueue;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/unisound/common/bc;->b:Lcom/unisound/common/ba;

    iget-object v3, p0, Lcom/unisound/common/bc;->a:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/unisound/common/ba;->b(Lcom/unisound/common/ba;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    :cond_6e
    const-string v0, "WakeupWordCacheAndUpload network is not available, do nothing!"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_73} :catch_43

    goto :goto_47
.end method
