.class final enum Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
.super Ljava/lang/Enum;
.source "PersonaConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/device/custom/persona/PersonaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

.field public static final enum ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

.field public static final enum PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;


# direct methods
.method private static synthetic $values()[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .registers 3

    .prologue
    .line 273
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const/4 v1, 0x0

    sget-object v2, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 274
    new-instance v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const-string v1, "PASSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->PASSIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 275
    new-instance v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->ACTIVE:Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    .line 273
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->$values()[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->$VALUES:[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

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
    .line 273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 273
    const-class v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;
    .registers 1

    .prologue
    .line 273
    sget-object v0, Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->$VALUES:[Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/device/custom/persona/PersonaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/device/custom/persona/PersonaMode;

    return-object v0
.end method
