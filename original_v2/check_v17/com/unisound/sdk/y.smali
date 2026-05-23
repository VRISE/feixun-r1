.class public Lcom/unisound/sdk/y;
.super Lcom/unisound/sdk/z;


# static fields
.field private static final f:I = 0x32


# instance fields
.field private e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/unisound/sdk/z;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/au;Z)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected c()[B
    .registers 6

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/y;->e()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/unisound/sdk/y;->f()Z

    move-result v0

    if-nez v0, :cond_25

    :try_start_d
    iget-object v0, p0, Lcom/unisound/sdk/y;->e:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x32

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_19} :catch_1f

    :goto_19
    if-eqz v0, :cond_1

    array-length v1, v0

    new-array v1, v1, [B

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    goto :goto_19

    :cond_25
    move-object v0, v1

    goto :goto_1e
.end method
