.class Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;
.super Ljava/lang/Object;
.source "NetEaseMusicClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field final expireAt:J

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "expireAt"    # J

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;->url:Ljava/lang/String;

    .line 518
    iput-wide p2, p0, Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$CacheEntry;->expireAt:J

    .line 519
    return-void
.end method
