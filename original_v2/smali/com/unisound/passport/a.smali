.class public Lcom/unisound/passport/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x5dd

.field public static final b:I = 0x5de

.field public static final c:I = 0x5df

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6

.field public static final j:I = 0x7

.field public static final k:I = 0x8

.field public static final l:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_2a

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    :goto_5
    return-object v0

    :sswitch_6
    const-string v0, "appkey\u6216udid\u4e3a\u7a7a"

    goto :goto_5

    :sswitch_9
    const-string v0, "\u6253\u5f00\u957f\u8fde\u63a5\u5931\u8d25"

    goto :goto_5

    :sswitch_c
    const-string v0, "\u5173\u95ed\u957f\u8fde\u63a5\u5931\u8d25"

    goto :goto_5

    :sswitch_f
    const-string v0, "\u5e94\u7528\u4e0d\u5b58\u5728"

    goto :goto_5

    :sswitch_12
    const-string v0, "\u7b7e\u540d\u9519\u8bef"

    goto :goto_5

    :sswitch_15
    const-string v0, "\u6ca1\u6709\u6743\u9650"

    goto :goto_5

    :sswitch_18
    const-string v0, "\u767b\u5f55\u7528\u6237\u7684TOKEN\u65e0\u6548"

    goto :goto_5

    :sswitch_1b
    const-string v0, "\u6570\u636e\u8d85\u51fa\u5bb9\u91cf\u9650\u5236"

    goto :goto_5

    :sswitch_1e
    const-string v0, "\u8bf7\u6c42\u65f6\u95f4\u6233\u8d85\u51fa\u4e86\u8bf7\u6c42\u6709\u6548\u671f"

    goto :goto_5

    :sswitch_21
    const-string v0, "\u8bbf\u95ee\u9891\u7387\u8fc7\u5feb"

    goto :goto_5

    :sswitch_24
    const-string v0, "\u5ba2\u6237\u7aefToken\u65e0\u6548"

    goto :goto_5

    :sswitch_27
    const-string v0, "\u5ba2\u6237\u7aefMQTT\u8fde\u63a5\u672a\u65ad\u5f00"

    goto :goto_5

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_12
        0x3 -> :sswitch_15
        0x4 -> :sswitch_18
        0x5 -> :sswitch_1b
        0x6 -> :sswitch_1e
        0x7 -> :sswitch_21
        0x8 -> :sswitch_24
        0x9 -> :sswitch_27
        0x5dd -> :sswitch_6
        0x5de -> :sswitch_9
        0x5df -> :sswitch_c
    .end sparse-switch
.end method
