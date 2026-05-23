.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/SessionIdCreator;
.super Ljava/lang/Object;
.source "SessionIdCreator.java"


# static fields
.field private static sessionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/16 v0, 0x2710

    sput v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/SessionIdCreator;->sessionId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()I
    .registers 2

    .prologue
    .line 7
    sget v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/SessionIdCreator;->sessionId:I

    .line 8
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/phicomm/speaker/device/custom/keyevent/processor/SessionIdCreator;->sessionId:I

    .line 9
    return v0
.end method
