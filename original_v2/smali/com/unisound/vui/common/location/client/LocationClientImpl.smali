.class public Lcom/unisound/vui/common/location/client/LocationClientImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/location/client/LocationClient;


# instance fields
.field private mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/common/location/strategy/LocationStrategy;)V
    .registers 4
    .param p1, "locationStrategy"    # Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    return-void
.end method


# virtual methods
.method public onDestory()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->onDestory()V

    return-void
.end method

.method public registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .registers 4
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->registerLocationLinstener(Lcom/unisound/vui/common/location/listener/LocationListener;)V

    return-void
.end method

.method public startLocation()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->startLocation()V

    return-void
.end method

.method public stopLocation()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->stopLocation()V

    return-void
.end method

.method public unRegisterAllLocationListener()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->unRegisterAllLocationListener()V

    return-void
.end method

.method public unRegisterLocationListener(Lcom/unisound/vui/common/location/listener/LocationListener;)V
    .registers 4
    .param p1, "locationListener"    # Lcom/unisound/vui/common/location/listener/LocationListener;

    .prologue
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locationStrategy is null !!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/unisound/vui/common/location/client/LocationClientImpl;->mLocationStrategy:Lcom/unisound/vui/common/location/strategy/LocationStrategy;

    invoke-virtual {v0, p1}, Lcom/unisound/vui/common/location/strategy/LocationStrategy;->unRegisterLocationListener(Lcom/unisound/vui/common/location/listener/LocationListener;)V

    return-void
.end method
