.class public Lcom/unisound/common/f;
.super Ljava/lang/Thread;


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/f;->a:I

    if-eqz p1, :cond_13

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/unisound/common/f;->setPriority(I)V

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unisound/common/f;->setPriority(I)V

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_12
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/unisound/common/f;->a:I

    return-void
.end method

.method public run()V
    .registers 1

    return-void
.end method
