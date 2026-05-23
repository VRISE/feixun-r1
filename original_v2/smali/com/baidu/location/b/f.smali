.class public Lcom/baidu/location/b/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    iput-wide v2, p0, Lcom/baidu/location/b/f;->b:J

    iput-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/f;->d:Z

    iput-wide p2, p0, Lcom/baidu/location/b/f;->b:J

    iput-object p1, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/f;->c:J

    invoke-direct {p0}, Lcom/baidu/location/b/f;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-string v0, "wpa|wep"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_7
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_22

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_12
    const-string v0, "&"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_22
    return-object p1
.end method

.method private k()V
    .registers 9

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/baidu/location/b/f;->a()I

    move-result v0

    if-ge v0, v1, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_13
    if-lt v3, v1, :cond_8

    if-eqz v2, :cond_8

    move v4, v5

    move v2, v5

    :goto_19
    if-ge v4, v3, :cond_55

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_59

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_50
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_19

    :cond_55
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_13

    :cond_59
    move v0, v2

    goto :goto_50
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_5
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/baidu/location/b/f;->a(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(IZZ)Ljava/lang/String;
    .registers 30
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/b/f;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_9

    const/4 v2, 0x0

    :goto_8
    return-object v2

    :cond_9
    const/4 v3, 0x0

    :try_start_a
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    new-instance v20, Ljava/lang/StringBuffer;

    const/16 v2, 0x200

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/g;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-eqz v6, :cond_3b4

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3b4

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/b/g;->m()Ljava/lang/String;

    move-result-object v4

    if-gez v2, :cond_3ac

    neg-int v2, v2

    move/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :goto_51
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_58
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_58} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_58} :catch_39b

    const/16 v7, 0x11

    if-lt v6, v7, :cond_3a9

    :try_start_5c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6
    :try_end_63
    .catch Ljava/lang/Error; {:try_start_5c .. :try_end_63} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_39b

    :goto_63
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3a9

    const/4 v2, 0x1

    move-wide v14, v4

    :goto_6b
    if-eqz v2, :cond_3a6

    if-eqz v2, :cond_b1

    if-eqz p2, :cond_b1

    const/4 v2, 0x1

    :goto_72
    move v13, v2

    :goto_73
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_75
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    move/from16 v0, p1

    if-le v2, v0, :cond_3a2

    :goto_82
    const/4 v4, 0x0

    const/4 v2, 0x0

    move v12, v2

    :goto_85
    move/from16 v0, p1

    if-ge v12, v0, :cond_26b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I
    :try_end_95
    .catch Ljava/lang/Error; {:try_start_75 .. :try_end_95} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_95} :catch_39b

    if-nez v2, :cond_b3

    move-object v2, v4

    move v4, v6

    move/from16 v25, v5

    move v5, v7

    move-wide v6, v8

    move v8, v3

    move/from16 v3, v25

    :goto_a0
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move/from16 v25, v3

    move v3, v8

    move-wide v8, v6

    move v6, v4

    move v7, v5

    move-object v4, v2

    move/from16 v5, v25

    goto :goto_85

    :catch_ad
    move-exception v4

    const-wide/16 v4, 0x0

    goto :goto_63

    :cond_b1
    const/4 v2, 0x0

    goto :goto_72

    :cond_b3
    if-eqz v13, :cond_d6

    :try_start_b5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-wide v10, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v10, v14, v10

    const-wide/32 v22, 0xf4240

    div-long v10, v10, v22
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c8} :catch_1c5
    .catch Ljava/lang/Error; {:try_start_b5 .. :try_end_c8} :catch_1ef

    :goto_c8
    :try_start_c8
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmp-long v2, v10, v8

    if-lez v2, :cond_d6

    move-wide v8, v10

    :cond_d6
    if-eqz v5, :cond_1ca

    const/4 v5, 0x0

    const-string v2, "&wf="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_101

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "&wf_ch="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/location/b/f;->b(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_101
    :goto_101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v2, :cond_260

    const-string v10, ":"

    const-string v11, ""

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-gez v2, :cond_12b

    neg-int v2, v2

    :cond_12b
    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v22, ";%d;"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v24

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v11, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    if-eqz v18, :cond_171

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_171

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/location/b/f;->a(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/location/b/f;->e:Z
    :try_end_16f
    .catch Ljava/lang/Error; {:try_start_c8 .. :try_end_16f} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_16f} :catch_39b

    const/4 v2, 0x1

    move v6, v7

    :cond_171
    if-nez v2, :cond_249

    if-nez v3, :cond_1f3

    const/16 v2, 0xa

    :try_start_177
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v10, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x1e

    if-ge v2, v10, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/location/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_1b9} :catch_23d
    .catch Ljava/lang/Error; {:try_start_177 .. :try_end_1b9} :catch_1ef

    const/4 v2, 0x1

    :goto_1ba
    move v3, v5

    move v5, v7

    move/from16 v25, v6

    move-wide v6, v8

    move v8, v2

    move-object v2, v4

    move/from16 v4, v25

    goto/16 :goto_a0

    :catch_1c5
    move-exception v2

    const-wide/16 v10, 0x0

    goto/16 :goto_c8

    :cond_1ca
    :try_start_1ca
    const-string v2, "|"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_101

    const-string v2, "|"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/location/b/f;->b(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1ed
    .catch Ljava/lang/Error; {:try_start_1ca .. :try_end_1ed} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1ed} :catch_39b

    goto/16 :goto_101

    :catch_1ef
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_1f3
    const/4 v2, 0x1

    if-ne v3, v2, :cond_39f

    const/16 v2, 0x14

    :try_start_1f8
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v10, 0x1e

    if-ge v2, v10, :cond_39f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/location/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_23a} :catch_23d
    .catch Ljava/lang/Error; {:try_start_1f8 .. :try_end_23a} :catch_1ef

    const/4 v2, 0x2

    goto/16 :goto_1ba

    :catch_23d
    move-exception v2

    move-object v2, v4

    move v4, v6

    move/from16 v25, v5

    move v5, v7

    move-wide v6, v8

    move v8, v3

    move/from16 v3, v25

    goto/16 :goto_a0

    :cond_249
    :try_start_249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/baidu/location/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_260
    move-object v2, v4

    move v4, v6

    move/from16 v25, v5

    move v5, v7

    move-wide v6, v8

    move v8, v3

    move/from16 v3, v25

    goto/16 :goto_a0

    :cond_26b
    if-nez v5, :cond_398

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&wf_n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v18, :cond_2a6

    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_2a6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&wf_rs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a6
    const-wide/16 v2, 0xa

    cmp-long v2, v8, v2

    if-lez v2, :cond_32d

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_32d

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_32d

    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v7, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v2, "&wf_ut="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v5, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2df
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_324

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v5, :cond_2fd

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move v3, v5

    :goto_2f6
    const-string v5, "|"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v5, v3

    goto :goto_2df

    :cond_2fd
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-eqz v3, :cond_322

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_322
    move v3, v5

    goto :goto_2f6

    :cond_324
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_32d
    const-string v2, "&wf_st="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/location/b/f;->b:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&wf_et="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/baidu/location/b/f;->c:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "&wf_vt="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-wide v2, Lcom/baidu/location/b/g;->a:J

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    if-lez v6, :cond_375

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/location/b/f;->d:Z

    const-string v2, "&wf_en="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/baidu/location/b/f;->e:Z

    if-eqz v2, :cond_396

    const/4 v2, 0x1

    :goto_370
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_375
    if-eqz v17, :cond_385

    const-string v2, "&wf_gw="

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_385
    if-eqz v4, :cond_390

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_390
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_393
    .catch Ljava/lang/Error; {:try_start_249 .. :try_end_393} :catch_1ef
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_393} :catch_39b

    move-result-object v2

    goto/16 :goto_8

    :cond_396
    const/4 v2, 0x0

    goto :goto_370

    :cond_398
    const/4 v2, 0x0

    goto/16 :goto_8

    :catch_39b
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_39f
    move v2, v3

    goto/16 :goto_1ba

    :cond_3a2
    move/from16 p1, v2

    goto/16 :goto_82

    :cond_3a6
    move v13, v2

    goto/16 :goto_73

    :cond_3a9
    move-wide v14, v4

    goto/16 :goto_6b

    :cond_3ac
    move/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_51

    :cond_3b4
    move/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_51
.end method

.method public a(J)Z
    .registers 22

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-lt v3, v11, :cond_9a

    :try_start_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    const-wide/16 v12, 0x3e8

    div-long/2addr v8, v12
    :try_end_15
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_15} :catch_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_25

    :goto_15
    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-lez v3, :cond_9a

    const/4 v2, 0x1

    move v12, v2

    move-wide v14, v8

    :goto_1e
    if-nez v12, :cond_29

    :cond_20
    :goto_20
    return v10

    :catch_21
    move-exception v3

    const-wide/16 v8, 0x0

    goto :goto_15

    :catch_25
    move-exception v3

    const-wide/16 v8, 0x0

    goto :goto_15

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_98

    const/16 v2, 0x10

    move v3, v2

    :goto_48
    const/4 v2, 0x0

    move v11, v2

    :goto_4a
    if-ge v11, v3, :cond_82

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    if-nez v2, :cond_5e

    :cond_5a
    :goto_5a
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_4a

    :cond_5e
    if-eqz v12, :cond_5a

    :try_start_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-wide v8, v2, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v8, v14, v8

    const-wide/32 v16, 0xf4240

    div-long v8, v8, v16
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_73} :catch_7a
    .catch Ljava/lang/Error; {:try_start_60 .. :try_end_73} :catch_7e

    :goto_73
    add-long/2addr v4, v8

    cmp-long v2, v8, v6

    if-lez v2, :cond_5a

    move-wide v6, v8

    goto :goto_5a

    :catch_7a
    move-exception v2

    const-wide/16 v8, 0x0

    goto :goto_73

    :catch_7e
    move-exception v2

    const-wide/16 v8, 0x0

    goto :goto_73

    :cond_82
    int-to-long v2, v3

    div-long v2, v4, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-gtz v4, :cond_93

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, v2, p1

    if-lez v2, :cond_96

    :cond_93
    const/4 v2, 0x1

    :goto_94
    move v10, v2

    goto :goto_20

    :cond_96
    move v2, v10

    goto :goto_94

    :cond_98
    move v3, v2

    goto :goto_48

    :cond_9a
    move v12, v2

    move-wide v14, v8

    goto :goto_1e
.end method

.method public a(Lcom/baidu/location/b/f;)Z
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v0, :cond_4d

    if-eqz p1, :cond_4d

    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_20
    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_4b

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    move v0, v2

    :goto_3e
    return v0

    :cond_3f
    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_20

    :cond_47
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_21

    :cond_4b
    const/4 v0, 0x1

    goto :goto_3e

    :cond_4d
    move v0, v2

    goto :goto_3e
.end method

.method public b(I)I
    .registers 3

    const/16 v0, 0x960

    if-le p1, v0, :cond_a

    const/16 v0, 0x9c4

    if-ge p1, v0, :cond_a

    const/4 v0, 0x2

    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x1324

    if-le p1, v0, :cond_14

    const/16 v0, 0x170c

    if-ge p1, v0, :cond_14

    const/4 v0, 0x5

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget v0, Lcom/baidu/location/d/j;->N:I

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/b/f;->a(IZZ)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public b(Lcom/baidu/location/b/f;)Z
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v0, :cond_63

    if-eqz p1, :cond_63

    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_20
    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_61

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v5, v0, Landroid/net/wifi/ScanResult;->level:I

    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    if-eq v5, v0, :cond_5d

    :cond_53
    move v0, v2

    :goto_54
    return v0

    :cond_55
    iget-object v0, p1, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_20

    :cond_5d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_21

    :cond_61
    const/4 v0, 0x1

    goto :goto_54

    :cond_63
    move v0, v2

    goto :goto_54
.end method

.method public c()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget v0, Lcom/baidu/location/d/j;->N:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/location/b/f;->a(IZZ)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public c(I)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/baidu/location/b/f;->a()I

    move-result v0

    if-ge v0, v3, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0x100

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/baidu/location/d/j;->N:I

    if-le v0, v1, :cond_7c

    sget v0, Lcom/baidu/location/d/j;->N:I

    move v1, v0

    :goto_20
    move v4, v3

    move v3, v2

    :goto_22
    if-ge v3, v1, :cond_75

    and-int v0, v4, p1

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_7a

    if-nez v2, :cond_6f

    const-string v0, "&ssid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3b
    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/location/b/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v2, 0x1

    :goto_68
    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_22

    :cond_6f
    const-string v0, "|"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3b

    :cond_75
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7a
    move v0, v2

    goto :goto_68

    :cond_7c
    move v1, v0

    goto :goto_20
.end method

.method public c(Lcom/baidu/location/b/f;)Z
    .registers 3

    invoke-static {p1, p0}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/f;Lcom/baidu/location/b/f;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xf

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/baidu/location/b/f;->a(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public e()Z
    .registers 3

    sget v0, Lcom/baidu/location/d/j;->ae:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/baidu/location/b/f;->a(J)Z

    move-result v0

    return v0
.end method

.method public f()I
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/baidu/location/b/f;->a()I

    move-result v0

    if-ge v1, v0, :cond_16

    iget-object v0, p0, Lcom/baidu/location/b/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    neg-int v0, v0

    if-lez v0, :cond_17

    move v2, v0

    :cond_16
    return v2

    :cond_17
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/b/f;->d:Z

    return v0
.end method

.method public h()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public i()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public j()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/f;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
