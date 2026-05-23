.class public Lcom/baidu/location/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/a$a;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/location/a$a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a$a;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/baidu/location/a;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/a$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/baidu/location/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    iget-object v1, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    iget-object v1, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    iget-object v1, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_45
    :goto_45
    iget-object v1, p0, Lcom/baidu/location/a$a;->g:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/baidu/location/a$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4e
    iget-object v1, p0, Lcom/baidu/location/a$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/baidu/location/a$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_63

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a$a;->i:Ljava/lang/String;

    :cond_63
    new-instance v0, Lcom/baidu/location/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/a;-><init>(Lcom/baidu/location/a$a;Lcom/baidu/location/a$1;)V

    return-object v0

    :cond_6a
    iget-object v1, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/baidu/location/a$a;
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a$a;->h:Ljava/lang/String;

    return-object p0
.end method
