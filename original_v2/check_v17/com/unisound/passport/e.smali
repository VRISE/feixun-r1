.class Lcom/unisound/passport/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/passport/j;


# instance fields
.field final synthetic a:Lcom/unisound/passport/d;


# direct methods
.method constructor <init>(Lcom/unisound/passport/d;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/passport/e;->a:Lcom/unisound/passport/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/passport/e;->a:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->a(Lcom/unisound/passport/d;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/unisound/passport/e;->a:Lcom/unisound/passport/d;

    invoke-static {v0}, Lcom/unisound/passport/d;->b(Lcom/unisound/passport/d;)V

    :cond_d
    return-void
.end method
