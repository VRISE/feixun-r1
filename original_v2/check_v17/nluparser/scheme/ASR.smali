.class public Lnluparser/scheme/ASR;
.super Ljava/lang/Object;


# static fields
.field public static final FULL:Ljava/lang/String; = "full"

.field public static final LOCAL:Ljava/lang/String; = "local"

.field public static final LOCAL_ASR:Ljava/lang/String; = "local_asr"

.field public static final MIX:Ljava/lang/String; = "mix"

.field public static final NET:Ljava/lang/String; = "net"

.field public static final NET_ASR:Ljava/lang/String; = "net_asr"

.field public static final PARTIAL:Ljava/lang/String; = "partial"


# instance fields
.field engineMode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "engine_mode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "engine_mode"
    .end annotation
.end field

.field recognitionResult:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "recognition_result"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recognition_result"
    .end annotation
.end field

.field resultType:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "result_type"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/ASR;->engineMode:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognitionResult()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lnluparser/scheme/ASR;->recognitionResult:Ljava/lang/String;

    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResultType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/ASR;->resultType:Ljava/lang/String;

    return-object v0
.end method

.method public isLocalMode()Z
    .registers 3

    const-string v0, "local"

    iget-object v1, p0, Lnluparser/scheme/ASR;->engineMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMixMode()Z
    .registers 3

    const-string v0, "mix"

    iget-object v1, p0, Lnluparser/scheme/ASR;->engineMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNetMode()Z
    .registers 3

    const-string v0, "net"

    iget-object v1, p0, Lnluparser/scheme/ASR;->engineMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEngineMode(Ljava/lang/String;)V
    .registers 2
    .param p1, "engineMode"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ASR;->engineMode:Ljava/lang/String;

    return-void
.end method

.method public setRecognitionResult(Ljava/lang/String;)V
    .registers 2
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ASR;->recognitionResult:Ljava/lang/String;

    return-void
.end method

.method public setResultType(Ljava/lang/String;)V
    .registers 2
    .param p1, "resultType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/ASR;->resultType:Ljava/lang/String;

    return-void
.end method
