.class public Lcom/unisound/common/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/unisound/common/a;)V
    .registers 5

    const/16 v2, 0x50

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "117.121.55.35"

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/common/a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    const-string v0, "117.121.55.35"

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/common/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    iput-boolean v1, p0, Lcom/unisound/common/a;->g:Z

    iget-object v0, p1, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iget v0, p1, Lcom/unisound/common/a;->b:I

    iput v0, p0, Lcom/unisound/common/a;->b:I

    iget-object v0, p1, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iget v0, p1, Lcom/unisound/common/a;->e:I

    iput v0, p0, Lcom/unisound/common/a;->e:I

    iput-boolean v1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    const/16 v2, 0x50

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "117.121.55.35"

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/common/a;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    const-string v0, "117.121.55.35"

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/unisound/common/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    iput-boolean v1, p0, Lcom/unisound/common/a;->g:Z

    iput-object p1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/unisound/common/a;->b:I

    iput p4, p0, Lcom/unisound/common/a;->e:I

    iput-object p3, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method private f()V
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    if-nez v0, :cond_13

    :try_start_4
    iget-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z
    :try_end_13
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v0, "InetAddress.getByName fail"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_13
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/unisound/common/a;->f()V

    iget-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/unisound/common/a;->c:Ljava/lang/String;

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    goto :goto_9
.end method

.method public a(I)V
    .registers 3

    iput p1, p0, Lcom/unisound/common/a;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Lcom/unisound/common/a;)V
    .registers 3

    iget-object v0, p1, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    iget v0, p1, Lcom/unisound/common/a;->b:I

    iput v0, p0, Lcom/unisound/common/a;->b:I

    iget-object v0, p1, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iget v0, p1, Lcom/unisound/common/a;->e:I

    iput v0, p0, Lcom/unisound/common/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/a;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/a;->b:I

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :try_start_18
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    iput v3, p0, Lcom/unisound/common/a;->b:I

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, p0, Lcom/unisound/common/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/unisound/common/a;->d:Ljava/lang/String;

    iget v2, p0, Lcom/unisound/common/a;->b:I

    iput v2, p0, Lcom/unisound/common/a;->e:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unisound/common/a;->g:Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_36} :catch_38

    move v0, v1

    goto :goto_4

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/a;->g:Z

    return v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/a;->f:Z

    return-void
.end method
