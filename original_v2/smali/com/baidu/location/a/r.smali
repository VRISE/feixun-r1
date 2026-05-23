.class Lcom/baidu/location/a/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/n;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/n;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-static {v0}, Lcom/baidu/location/a/n;->b(Lcom/baidu/location/a/n;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-static {v0}, Lcom/baidu/location/a/n;->c(Lcom/baidu/location/a/n;)V

    :cond_d
    return-void
.end method
