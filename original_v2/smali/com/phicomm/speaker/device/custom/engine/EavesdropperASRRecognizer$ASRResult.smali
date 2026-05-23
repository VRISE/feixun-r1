.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;
.super Ljava/lang/Object;
.source "EavesdropperASRRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ASRResult"
.end annotation


# instance fields
.field confidence:F

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "confidence"    # F

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->text:Ljava/lang/String;

    .line 526
    iput p2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$ASRResult;->confidence:F

    .line 527
    return-void
.end method
