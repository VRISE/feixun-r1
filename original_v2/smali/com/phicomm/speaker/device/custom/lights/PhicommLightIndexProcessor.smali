.class public Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;
.super Ljava/lang/Object;
.source "PhicommLightIndexProcessor.java"


# static fields
.field private static final WHITE_LIGHT_NUMBER:I = 0x18

.field private static final WHITE_LIGHT_TAG:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndex(I)I
    .registers 2
    .param p0, "angle"    # I

    .prologue
    .line 8
    invoke-static {p0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->perHandleAngle(I)I

    move-result v0

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/lights/PhicommLightIndexProcessor;->getIndexFromAngle(I)I

    move-result v0

    return v0
.end method

.method private static getIndexFromAngle(I)I
    .registers 4
    .param p0, "angle"    # I

    .prologue
    .line 24
    rem-int/lit8 v1, p0, 0xf

    const/4 v2, 0x7

    if-le v1, v2, :cond_12

    .line 25
    div-int/lit8 v1, p0, 0xf

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, 0x1

    .line 29
    .local v0, "lightsIndex":I
    :goto_b
    const/16 v1, 0x18

    if-le v0, v1, :cond_11

    .line 30
    add-int/lit8 v0, v0, -0x18

    .line 32
    .end local v0    # "lightsIndex":I
    :cond_11
    return v0

    .line 27
    :cond_12
    div-int/lit8 v1, p0, 0xf

    add-int/lit8 v0, v1, 0x1

    .restart local v0    # "lightsIndex":I
    goto :goto_b
.end method

.method private static perHandleAngle(I)I
    .registers 4
    .param p0, "angle"    # I

    .prologue
    const/16 v2, 0x168

    .line 12
    if-ltz p0, :cond_6

    if-lt p0, v2, :cond_7

    .line 13
    :cond_6
    const/4 p0, 0x0

    .line 15
    :cond_7
    add-int/lit16 v1, p0, -0x168

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit16 v0, v1, 0x10e

    .line 16
    .local v0, "angle2":I
    if-lt v0, v2, :cond_13

    .line 17
    add-int/lit16 v0, v0, -0x168

    .line 19
    .end local v0    # "angle2":I
    :cond_13
    return v0
.end method
