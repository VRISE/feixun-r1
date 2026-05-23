.class public final enum Lcom/unisound/vui/util/entity/ExoAsrTag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/util/entity/ExoAsrTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/util/entity/ExoAsrTag;

.field private static final CONFIRM:Ljava/lang/String; = "confirm"

.field private static final PHONE:Ljava/lang/String; = "phone"

.field public static final enum TAG_CONFIRM:Lcom/unisound/vui/util/entity/ExoAsrTag;

.field public static final enum TAG_PHONE:Lcom/unisound/vui/util/entity/ExoAsrTag;

.field public static final enum TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

.field private static final UNIDRIVE_MAIN:Ljava/lang/String; = "unidrive_main"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/vui/util/entity/ExoAsrTag;

    const-string v1, "TAG_UNIDRIVE_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/util/entity/ExoAsrTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    new-instance v0, Lcom/unisound/vui/util/entity/ExoAsrTag;

    const-string v1, "TAG_PHONE"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/util/entity/ExoAsrTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_PHONE:Lcom/unisound/vui/util/entity/ExoAsrTag;

    new-instance v0, Lcom/unisound/vui/util/entity/ExoAsrTag;

    const-string v1, "TAG_CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/util/entity/ExoAsrTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_CONFIRM:Lcom/unisound/vui/util/entity/ExoAsrTag;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unisound/vui/util/entity/ExoAsrTag;

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_UNIDRIVE_MAIN:Lcom/unisound/vui/util/entity/ExoAsrTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_PHONE:Lcom/unisound/vui/util/entity/ExoAsrTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag;->TAG_CONFIRM:Lcom/unisound/vui/util/entity/ExoAsrTag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unisound/vui/util/entity/ExoAsrTag;->$VALUES:[Lcom/unisound/vui/util/entity/ExoAsrTag;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMainTag(Lcom/unisound/vui/util/entity/ExoAsrTag;)Ljava/lang/String;
    .registers 4
    .param p0, "asrTag"    # Lcom/unisound/vui/util/entity/ExoAsrTag;

    .prologue
    const-string v0, "unidrive_main"

    sget-object v1, Lcom/unisound/vui/util/entity/ExoAsrTag$1;->a:[I

    invoke-virtual {p0}, Lcom/unisound/vui/util/entity/ExoAsrTag;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_18

    :goto_d
    return-object v0

    :pswitch_e
    const-string v0, "unidrive_main"

    goto :goto_d

    :pswitch_11
    const-string v0, "confirm"

    goto :goto_d

    :pswitch_14
    const-string v0, "phone"

    goto :goto_d

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/util/entity/ExoAsrTag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/util/entity/ExoAsrTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/entity/ExoAsrTag;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/util/entity/ExoAsrTag;
    .registers 1

    sget-object v0, Lcom/unisound/vui/util/entity/ExoAsrTag;->$VALUES:[Lcom/unisound/vui/util/entity/ExoAsrTag;

    invoke-virtual {v0}, [Lcom/unisound/vui/util/entity/ExoAsrTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/util/entity/ExoAsrTag;

    return-object v0
.end method
