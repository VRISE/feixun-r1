.class public Lcom/unisound/vui/data/entity/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Double;

.field private i:Ljava/lang/Double;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/d;->a:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/d;->b:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/d;->c:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/d;->d:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/d;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->f:Ljava/lang/Long;

    iput-object p2, p0, Lcom/unisound/vui/data/entity/a/a/d;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/a/a/d;->h:Ljava/lang/Double;

    iput-object p4, p0, Lcom/unisound/vui/data/entity/a/a/d;->i:Ljava/lang/Double;

    iput-object p5, p0, Lcom/unisound/vui/data/entity/a/a/d;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/unisound/vui/data/entity/a/a/d;->k:Ljava/lang/String;

    iput-object p7, p0, Lcom/unisound/vui/data/entity/a/a/d;->l:Ljava/lang/String;

    iput-object p8, p0, Lcom/unisound/vui/data/entity/a/a/d;->m:Ljava/lang/String;

    iput-object p9, p0, Lcom/unisound/vui/data/entity/a/a/d;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->f:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->h:Ljava/lang/Double;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->f:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->g:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Double;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->i:Ljava/lang/Double;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->h:Ljava/lang/Double;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->k:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->i:Ljava/lang/Double;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->l:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->m:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/d;->n:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/d;->n:Ljava/lang/String;

    return-object v0
.end method
