.class public Lcom/unisound/vui/handler/session/memo/utils/MemoConstants;
.super Ljava/lang/Object;
.source "MemoConstants.java"


# static fields
.field public static final ACTION_MEMO_RING:Ljava/lang/String; = "cn.yunzhisheng.action.ring"

.field public static final ACTION_MEMO_RING_AUDITION:Ljava/lang/String; = "cn.yunzhisheng.action.ring.audition"

.field public static final D1:Ljava/lang/String; = "D1"

.field public static final D2:Ljava/lang/String; = "D2"

.field public static final D3:Ljava/lang/String; = "D3"

.field public static final D4:Ljava/lang/String; = "D4"

.field public static final D5:Ljava/lang/String; = "D5"

.field public static final D6:Ljava/lang/String; = "D6"

.field public static final D7:Ljava/lang/String; = "D7"

.field public static final DATE_FORMATE_HM:Ljava/lang/String; = "HH:mm"

.field public static final DATE_FORMATE_HMS:Ljava/lang/String; = "HH:mm:ss"

.field public static final DATE_FORMATE_ONE:Ljava/lang/String; = "yyyyMMdd HH:mm:ss"

.field public static final DATE_FORMATE_TWO:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final DATE_FORMATE_YMD:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DATE_FORMATE_YMDHMS:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final DAY:Ljava/lang/String; = "DAY"

.field public static final MEMO_TAG:Ljava/lang/String; = "memolog-"

.field public static final MEMO_TYPE_ALARM:Ljava/lang/String; = "alarm"

.field public static final MEMO_TYPE_COUNT_DOWN:Ljava/lang/String; = "countDown"

.field public static final MEMO_TYPE_REMINDER:Ljava/lang/String; = "reminder"

.field public static final MONTH:Ljava/lang/String; = "MONTH"

.field public static final OFF:Ljava/lang/String; = "OFF"

.field public static final VALID_TIME_OFFSET_IN_MILLIS:I = 0xbb8

.field public static final WEEKEND:Ljava/lang/String; = "WEEKEND"

.field public static final WORKDAY:Ljava/lang/String; = "WORKDAY"

.field public static final YEAR:Ljava/lang/String; = "YEAR"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static mapRepeatDaysToInts([Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p0, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "weekList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v9, p0

    move v8, v3

    :goto_c
    if-ge v8, v9, :cond_a1

    aget-object v0, p0, v8

    .line 82
    .local v0, "week":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_a6

    :cond_18
    :goto_18
    packed-switch v2, :pswitch_data_b8

    .line 81
    :goto_1b
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_c

    .line 82
    :pswitch_1f
    const-string v10, "D1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v2, v3

    goto :goto_18

    :pswitch_29
    const-string v10, "D2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v2, v4

    goto :goto_18

    :pswitch_33
    const-string v10, "D3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v2, v5

    goto :goto_18

    :pswitch_3d
    const-string v10, "D4"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v2, v6

    goto :goto_18

    :pswitch_47
    const-string v10, "D5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    move v2, v7

    goto :goto_18

    :pswitch_51
    const-string v10, "D6"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v2, 0x5

    goto :goto_18

    :pswitch_5b
    const-string v10, "D7"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v2, 0x6

    goto :goto_18

    .line 84
    :pswitch_65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 87
    :pswitch_6d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 90
    :pswitch_75
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 93
    :pswitch_7d
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 96
    :pswitch_86
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 99
    :pswitch_8f
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 102
    :pswitch_98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    .line 108
    .end local v0    # "week":Ljava/lang/String;
    :cond_a1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 109
    return-object v1

    .line 82
    nop

    :pswitch_data_a6
    .packed-switch 0x86d
        :pswitch_1f
        :pswitch_29
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_51
        :pswitch_5b
    .end packed-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_65
        :pswitch_6d
        :pswitch_75
        :pswitch_7d
        :pswitch_86
        :pswitch_8f
        :pswitch_98
    .end packed-switch
.end method
