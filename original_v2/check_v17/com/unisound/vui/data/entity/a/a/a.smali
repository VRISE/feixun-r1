.class public Lcom/unisound/vui/data/entity/a/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/Long;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/a;->a:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/a;->b:Ljava/lang/String;

    sput-object v0, Lcom/unisound/vui/data/entity/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->d:Ljava/lang/Long;

    iput-object p2, p0, Lcom/unisound/vui/data/entity/a/a/a;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/vui/data/entity/a/a/a;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/unisound/vui/data/entity/a/a/a;->g:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/unisound/vui/data/entity/a/a/a;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/unisound/vui/data/entity/a/a/a;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/unisound/vui/data/entity/a/a/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->g:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->d:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->i:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/data/entity/a/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/data/entity/a/a/a;->j:Ljava/lang/String;

    return-object v0
.end method
