.class public final enum Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
.super Ljava/lang/Enum;
.source "PhicommXController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/ipc/PhicommXController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

.field public static final enum Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;


# direct methods
.method private static synthetic $values()[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    .registers 3

    .prologue
    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const/4 v1, 0x0

    sget-object v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Speech"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Speech:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Music"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Music:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 15
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "ConnectNet"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->ConnectNet:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 16
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "BlueTooth"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->BlueTooth:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 17
    new-instance v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    const-string v1, "Dormant"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->Dormant:Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    .line 12
    invoke-static {}, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->$values()[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->$VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    return-object v0
.end method

.method public static values()[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->$VALUES:[Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    invoke-virtual {v0}, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/phicomm/speaker/device/custom/ipc/PhicommXController$DeviceStatus;

    return-object v0
.end method
