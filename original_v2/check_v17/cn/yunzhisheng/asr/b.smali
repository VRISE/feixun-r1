.class public Lcn/yunzhisheng/asr/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Lcn/yunzhisheng/asr/a;


# direct methods
.method public constructor <init>(Lcn/yunzhisheng/asr/a;I)V
    .registers 4

    iput-object p1, p0, Lcn/yunzhisheng/asr/b;->c:Lcn/yunzhisheng/asr/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/yunzhisheng/asr/b;->b:I

    iput p2, p0, Lcn/yunzhisheng/asr/b;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-virtual {p0}, Lcn/yunzhisheng/asr/b;->b()V

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/asr/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/yunzhisheng/asr/b;->a:Ljava/lang/String;

    return-object v0
.end method
