.class Lcom/unisound/common/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unisound/common/l;


# direct methods
.method constructor <init>(Lcom/unisound/common/l;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    invoke-static {v0}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_e

    monitor-exit v1

    :goto_d
    return-object v3

    :cond_e
    iget-object v0, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    invoke-static {v0}, Lcom/unisound/common/l;->b(Lcom/unisound/common/l;)V

    iget-object v0, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    invoke-static {v0}, Lcom/unisound/common/l;->c(Lcom/unisound/common/l;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    invoke-static {v0}, Lcom/unisound/common/l;->d(Lcom/unisound/common/l;)V

    iget-object v0, p0, Lcom/unisound/common/m;->a:Lcom/unisound/common/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/unisound/common/l;->a(Lcom/unisound/common/l;I)I

    :cond_26
    monitor-exit v1

    goto :goto_d

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/unisound/common/m;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
