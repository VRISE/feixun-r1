.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ObjectPool;


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;)V
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 7

    .prologue
    .line 113
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v1

    .line 114
    .local v1, "size":I
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->minSize:I
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$100(Lrx/internal/util/ObjectPool;)I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 115
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->maxSize:I
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$200(Lrx/internal/util/ObjectPool;)I

    move-result v4

    sub-int v2, v4, v1

    .line 116
    .local v2, "sizeToBeAdded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_4e

    .line 117
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    iget-object v5, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-virtual {v5}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 119
    .end local v0    # "i":I
    .end local v2    # "sizeToBeAdded":I
    :cond_2f
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->maxSize:I
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$200(Lrx/internal/util/ObjectPool;)I

    move-result v4

    if-le v1, v4, :cond_4e

    .line 120
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->maxSize:I
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$200(Lrx/internal/util/ObjectPool;)I

    move-result v4

    sub-int v3, v1, v4

    .line 121
    .local v3, "sizeToBeRemoved":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_40
    if-ge v0, v3, :cond_4e

    .line 123
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 126
    .end local v0    # "i":I
    .end local v3    # "sizeToBeRemoved":I
    :cond_4e
    return-void
.end method
