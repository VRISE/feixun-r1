.class public Lcom/unisound/vui/common/a/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/a/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/vui/common/a/c;->b:[B

    return-void
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/a/c;->b:[B

    return-object v0
.end method
