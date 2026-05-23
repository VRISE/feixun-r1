.class public Lcom/unisound/common/ak;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1


# instance fields
.field b:I

.field c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/ak;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/common/ak;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    iput p1, p0, Lcom/unisound/common/ak;->b:I

    iput-object p2, p0, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/common/ak;)V
    .registers 3

    iget v0, p1, Lcom/unisound/common/ak;->b:I

    iput v0, p0, Lcom/unisound/common/ak;->b:I

    iget-object v0, p1, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/unisound/common/ak;->d:Z

    iput-boolean v0, p0, Lcom/unisound/common/ak;->d:Z

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/common/ak;->d:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/common/ak;->d:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/ak;->b:I

    return v0
.end method
