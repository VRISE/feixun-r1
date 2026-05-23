.class Lcom/baidu/location/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/n;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/n;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/q;->a:Lcom/baidu/location/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/q;->a:Lcom/baidu/location/a/n;

    invoke-static {v0}, Lcom/baidu/location/a/n;->a(Lcom/baidu/location/a/n;)V

    return-void
.end method
