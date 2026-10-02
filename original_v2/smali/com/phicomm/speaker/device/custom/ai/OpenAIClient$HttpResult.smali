.class Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpResult"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field retryable:Z

.field summary:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$HttpResult;-><init>()V

    return-void
.end method
