.class public final Lcom/tencent/bugly/proguard/aa;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static a(I)Lcom/tencent/bugly/proguard/ab;
    .registers 3

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    const/4 v1, 0x1

    if-ne p0, v1, :cond_a

    .line 16
    new-instance v0, Lcom/tencent/bugly/proguard/ad;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ad;-><init>()V

    .line 22
    :cond_9
    :goto_9
    return-object v0

    .line 17
    :cond_a
    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    .line 19
    new-instance v0, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ac;-><init>()V

    goto :goto_9
.end method
