.class Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Endpoint;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Endpoint"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field model:Ljava/lang/String;

.field name:Ljava/lang/String;

.field slot:I

.field topicUser:Ljava/lang/String;

.field url:Ljava/lang/String;

.field wantAudio:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Endpoint;-><init>()V

    return-void
.end method
