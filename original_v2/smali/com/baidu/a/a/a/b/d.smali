.class Lcom/baidu/a/a/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/a/a/a/b/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/a/a/a/b/c;


# direct methods
.method constructor <init>(Lcom/baidu/a/a/a/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/a/a/a/b/d;->a:Lcom/baidu/a/a/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/a/a/a/b/c$a;Lcom/baidu/a/a/a/b/c$a;)I
    .registers 5

    iget v0, p2, Lcom/baidu/a/a/a/b/c$a;->b:I

    iget v1, p1, Lcom/baidu/a/a/a/b/c$a;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_10

    iget-boolean v1, p1, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p2, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-boolean v1, p1, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v1, :cond_17

    const/4 v0, -0x1

    goto :goto_10

    :cond_17
    iget-boolean v1, p2, Lcom/baidu/a/a/a/b/c$a;->d:Z

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_10
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/a/a/a/b/c$a;

    check-cast p2, Lcom/baidu/a/a/a/b/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/a/a/a/b/d;->a(Lcom/baidu/a/a/a/b/c$a;Lcom/baidu/a/a/a/b/c$a;)I

    move-result v0

    return v0
.end method
