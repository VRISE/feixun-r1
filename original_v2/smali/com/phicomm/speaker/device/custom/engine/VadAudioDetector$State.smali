.class public final enum Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
.super Ljava/lang/Enum;
.source "VadAudioDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field public static final enum IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field public static final enum SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field public static final enum SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field public static final enum STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

.field public static final enum TRIGGERED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;


# direct methods
.method private static synthetic $values()[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->TRIGGERED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->IDLE:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const-string v1, "SPEECH_DETECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SPEECH_DETECTED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const-string v1, "SILENCE_WAIT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->SILENCE_WAIT:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const-string v1, "TRIGGERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->TRIGGERED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    new-instance v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->STOPPED:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-static {}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->$values()[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->$VALUES:[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->$VALUES:[Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$State;

    return-object v0
.end method
