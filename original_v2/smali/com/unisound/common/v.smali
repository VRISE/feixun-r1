.class public Lcom/unisound/common/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "partial"

.field public static final b:Ljava/lang/String; = "full"

.field public static final c:Ljava/lang/String; = "change"

.field private static final d:Ljava/lang/String; = "asr_recongize"

.field private static final e:Ljava/lang/String; = "retTag"

.field private static final f:Ljava/lang/String; = "nlu"

.field private static g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/unisound/sdk/w;)Lcom/unisound/sdk/cn;
    .registers 7

    :try_start_0
    const-string v0, "asr_recongize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "-changeable-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "-changeable-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retTag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "retTag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "nlu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "retTag"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asr_recongize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "asr_recongize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "nluProcessTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "nluProcessTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/sdk/w;->y(Ljava/lang/String;)V

    :goto_56
    new-instance v0, Lcom/unisound/sdk/cn;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\/"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cn;-><init>(Ljava/lang/String;)V

    :goto_67
    return-object v0

    :cond_68
    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/unisound/sdk/w;->y(Ljava/lang/String;)V
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_56

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_72
    new-instance v0, Lcom/unisound/sdk/cn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cn;-><init>(Ljava/lang/String;)V

    goto :goto_67

    :cond_79
    if-nez p1, :cond_72

    :try_start_7b
    const-string v0, "asr_recongize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "asr_recongize"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "nluProcessTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string v0, "nluProcessTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/sdk/w;->y(Ljava/lang/String;)V

    :goto_99
    new-instance v0, Lcom/unisound/sdk/cn;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\/"

    const-string v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/sdk/cn;-><init>(Ljava/lang/String;)V

    goto :goto_67

    :cond_ab
    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/unisound/sdk/w;->y(Ljava/lang/String;)V
    :try_end_b0
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_b0} :catch_6e

    goto :goto_99
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 14

    if-eqz p2, :cond_8a

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_64

    :try_start_a
    const-string v0, "engine_mode"

    const-string v2, "net"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    :goto_11
    if-eqz p1, :cond_18

    const-string v0, "result_type"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    if-eqz p4, :cond_1f

    const-string v0, "last_result"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1f
    if-eqz p2, :cond_26

    const-string v0, "recognition_result"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26
    if-eqz p3, :cond_2d

    const-string v0, "sessionID"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    if-eqz p5, :cond_34

    const-string v0, "score"

    invoke-virtual {v1, v0, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_34
    if-eqz p6, :cond_3b

    const-string v0, "utteranceTime"

    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b
    if-eqz p7, :cond_42

    const-string v0, "outRecordingTime"

    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_42
    if-eqz p8, :cond_49

    const-string v0, "delayTime"

    invoke-virtual {v1, v0, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_49
    if-eqz p9, :cond_50

    const-string v0, "utteranceStartTime"

    invoke-virtual {v1, v0, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_50
    if-eqz p10, :cond_57

    const-string v0, "utteranceEndTime"

    invoke-virtual {v1, v0, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_57} :catch_6e

    :cond_57
    :goto_57
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    return-object v0

    :cond_64
    if-nez p0, :cond_73

    :try_start_66
    const-string v0, "engine_mode"

    const-string v2, "mix"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_11

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_57

    :cond_73
    const/4 v0, 0x2

    if-ne p0, v0, :cond_7e

    :try_start_76
    const-string v0, "engine_mode"

    const-string v2, "local"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_11

    :cond_7e
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_11

    const-string v0, "engine_mode"

    const-string v2, "wakeup"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_89} :catch_6e

    goto :goto_11

    :cond_8a
    const-string v0, ""

    goto :goto_63
.end method

.method public static a(Lcom/unisound/sdk/b;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->a()Lcom/unisound/sdk/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->e()Lcom/unisound/sdk/am;

    move-result-object v0

    sget-object v1, Lcom/unisound/sdk/am;->b:Lcom/unisound/sdk/am;

    if-ne v0, v1, :cond_11

    invoke-static {p0}, Lcom/unisound/common/v;->b(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    sget-object v1, Lcom/unisound/sdk/am;->a:Lcom/unisound/sdk/am;

    if-ne v0, v1, :cond_1a

    invoke-static {p0}, Lcom/unisound/common/v;->c(Lcom/unisound/sdk/b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_1a
    const-string v0, ""

    goto :goto_10
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "asr_recongize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "retTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "-changeable-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "-changeable-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retTag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "retTag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nlu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "asr_recongize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const-string v1, "asr_recongize"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_48} :catch_4a

    move-result-object v0

    :goto_49
    return-object v0

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4e
    const-string v0, ""

    goto :goto_49
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1a} :catch_1d

    goto :goto_17

    :cond_1b
    move-object v0, p0

    goto :goto_17

    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method

.method public static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_30

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    :goto_13
    :try_start_13
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2b

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_2b
    const-string v0, "local_asr"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_30} :catch_55

    :cond_30
    :goto_30
    if-eqz p1, :cond_5f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v2, v1

    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5a

    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_51} :catch_8f

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3d

    :catch_55
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_30

    :cond_5a
    :try_start_5a
    const-string v0, "net_asr"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_5f} :catch_8f

    :cond_5f
    :goto_5f
    if-eqz p2, :cond_99

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_99

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_71
    :try_start_71
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_94

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8b

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_8b} :catch_a6

    :cond_8b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_71

    :catch_8f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5f

    :cond_94
    :try_start_94
    const-string v0, "net_nlu"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_99
    .catch Lorg/json/JSONException; {:try_start_94 .. :try_end_99} :catch_a6

    :cond_99
    :goto_99
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_a6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_99
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_12

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_30
    return-object v2
.end method

.method public static a()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "clearTotalASRResult"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_14
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    :goto_27
    return-object v0

    :cond_28
    const-string v0, ""

    goto :goto_27
.end method

.method private static b(Lcom/unisound/sdk/b;)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->a()Lcom/unisound/sdk/al;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->c()Z

    move-result v2

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->d()Z

    move-result v4

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->h()F

    move-result v5

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->i()I

    move-result v6

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->f()I

    move-result v7

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->g()I

    move-result v8

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->k()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/unisound/sdk/al;->j()J

    move-result-wide v12

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_75

    :try_start_34
    const-string v0, "engine_mode"

    const-string v1, "net"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b
    :goto_3b
    if-eqz v2, :cond_9b

    const-string v0, "result_type"

    const-string v1, "full"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_44
    const-string v0, "recognition_result"

    invoke-virtual {v9, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "score"

    float-to-double v2, v5

    invoke-virtual {v9, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "utteranceTime"

    invoke-virtual {v9, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "outRecordingTime"

    invoke-virtual {v9, v0, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "delayTime"

    invoke-virtual {v9, v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "utteranceStartTime"

    invoke-virtual {v9, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "utteranceEndTime"

    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_68} :catch_7f

    :goto_68
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_75
    if-nez v1, :cond_84

    :try_start_77
    const-string v0, "engine_mode"

    const-string v1, "mix"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7e} :catch_7f

    goto :goto_3b

    :catch_7f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_68

    :cond_84
    const/4 v0, 0x2

    if-ne v1, v0, :cond_8f

    :try_start_87
    const-string v0, "engine_mode"

    const-string v1, "local"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    :cond_8f
    const/16 v0, 0x3e8

    if-ne v1, v0, :cond_3b

    const-string v0, "engine_mode"

    const-string v1, "wakeup"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3b

    :cond_9b
    if-eqz v4, :cond_a5

    const-string v0, "result_type"

    const-string v1, "change"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_44

    :cond_a5
    const-string v0, "result_type"

    const-string v1, "partial"

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_ac} :catch_7f

    goto :goto_44
.end method

.method private static b(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addToTotalASRResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/unisound/common/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method private static c(Lcom/unisound/sdk/b;)Ljava/lang/String;
    .registers 11

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->a()Lcom/unisound/sdk/al;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcom/unisound/sdk/b;->d()Z

    move-result v4

    invoke-virtual {v1}, Lcom/unisound/sdk/al;->b()Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    invoke-virtual {v1}, Lcom/unisound/sdk/al;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_65

    new-array v4, v8, [Ljava/lang/Object;

    const-string v6, "originFormat onResult -> result = "

    aput-object v6, v4, v9

    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    :goto_2a
    invoke-virtual {v1}, Lcom/unisound/sdk/al;->d()Z

    move-result v4

    invoke-virtual {v1}, Lcom/unisound/sdk/al;->c()Z

    move-result v1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    if-ne v2, v7, :cond_80

    :try_start_39
    const-string v2, "engine_mode"

    const-string v7, "net"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_40
    :goto_40
    if-eqz v3, :cond_a5

    const-string v2, "result_type"

    const-string v3, "full"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_49
    const-string v2, "last_result"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "recognition_result"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sessionID"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_58} :catch_8a

    :goto_58
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_65
    const-string v4, "asr_recongize"

    invoke-static {v0, v4}, Lcom/unisound/common/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/unisound/sdk/al;->d()Z

    move-result v4

    if-nez v4, :cond_74

    invoke-static {v0}, Lcom/unisound/common/v;->b(Ljava/lang/String;)V

    :cond_74
    new-array v4, v8, [Ljava/lang/Object;

    const-string v6, "format onResult -> result = "

    aput-object v6, v4, v9

    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    goto :goto_2a

    :cond_80
    if-nez v2, :cond_8f

    :try_start_82
    const-string v2, "engine_mode"

    const-string v7, "mix"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_82 .. :try_end_89} :catch_8a

    goto :goto_40

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58

    :cond_8f
    if-ne v2, v8, :cond_99

    :try_start_91
    const-string v2, "engine_mode"

    const-string v7, "local"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_40

    :cond_99
    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_40

    const-string v2, "engine_mode"

    const-string v7, "wakeup"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_40

    :cond_a5
    if-eqz v4, :cond_af

    const-string v2, "result_type"

    const-string v3, "change"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_49

    :cond_af
    const-string v2, "result_type"

    const-string v3, "partial"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_91 .. :try_end_b6} :catch_8a

    goto :goto_49
.end method
