.class public Lcom/phicomm/speaker/device/custom/ai/OpenAIClient$Reply;
.super Ljava/lang/Object;
.source "OpenAIClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ai/OpenAIClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reply"
.end annotation


# instance fields
.field public audio:[B

.field public audioFormat:Ljava/lang/String;

.field public audioUrl:Ljava/lang/String;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
