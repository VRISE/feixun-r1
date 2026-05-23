.class Lcom/unisound/sdk/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/common/ah;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/o;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/o;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/p;->a:Lcom/unisound/sdk/o;

    invoke-virtual {v0}, Lcom/unisound/sdk/o;->postRecordingStartStatus()V

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method
