.class public Lcom/unisound/passport/PassportManager;
.super Lcom/unisound/passport/d;


# instance fields
.field d:Lcom/unisound/passport/PassportListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/passport/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/passport/PassportManager;->d:Lcom/unisound/passport/PassportListener;

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/passport/d;->closeConnection()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1}, Lcom/unisound/passport/d;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/passport/d;->init()V

    return-void
.end method

.method public openConnection()V
    .registers 1

    invoke-super {p0}, Lcom/unisound/passport/d;->openConnection()V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/unisound/passport/d;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setPassportListener(Lcom/unisound/passport/PassportListener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/passport/d;->setPassportListener(Lcom/unisound/passport/PassportListener;)V

    return-void
.end method
