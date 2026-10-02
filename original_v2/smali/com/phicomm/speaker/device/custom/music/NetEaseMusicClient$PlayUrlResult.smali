.class public Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient$PlayUrlResult;
.super Ljava/lang/Object;
.source "NetEaseMusicClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/music/NetEaseMusicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayUrlResult"
.end annotation


# instance fields
.field public captchaRequired:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
