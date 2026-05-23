.class public Lcom/alibaba/fastjson/parser/JSONToken;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final COLON:I = 0x11

.field public static final COMMA:I = 0x10

.field public static final EOF:I = 0x14

.field public static final ERROR:I = 0x1

.field public static final FALSE:I = 0x7

.field public static final FIELD_NAME:I = 0x13

.field public static final IDENTIFIER:I = 0x12

.field public static final LBRACE:I = 0xc

.field public static final LBRACKET:I = 0xe

.field public static final LITERAL_FLOAT:I = 0x3

.field public static final LITERAL_INT:I = 0x2

.field public static final LITERAL_ISO8601_DATE:I = 0x5

.field public static final LITERAL_STRING:I = 0x4

.field public static final LPAREN:I = 0xa

.field public static final NEW:I = 0x9

.field public static final NULL:I = 0x8

.field public static final RBRACE:I = 0xd

.field public static final RBRACKET:I = 0xf

.field public static final RPAREN:I = 0xb

.field public static final SET:I = 0x15

.field public static final TREE_SET:I = 0x16

.field public static final TRUE:I = 0x6

.field public static final UNDEFINED:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_4c

    .line 118
    const-string v0, "Unkown"

    :goto_5
    return-object v0

    .line 72
    :pswitch_6
    const-string v0, "error"

    goto :goto_5

    .line 74
    :pswitch_9
    const-string v0, "int"

    goto :goto_5

    .line 76
    :pswitch_c
    const-string v0, "float"

    goto :goto_5

    .line 78
    :pswitch_f
    const-string v0, "string"

    goto :goto_5

    .line 80
    :pswitch_12
    const-string v0, "iso8601"

    goto :goto_5

    .line 82
    :pswitch_15
    const-string v0, "true"

    goto :goto_5

    .line 84
    :pswitch_18
    const-string v0, "false"

    goto :goto_5

    .line 86
    :pswitch_1b
    const-string v0, "null"

    goto :goto_5

    .line 88
    :pswitch_1e
    const-string v0, "new"

    goto :goto_5

    .line 90
    :pswitch_21
    const-string v0, "("

    goto :goto_5

    .line 92
    :pswitch_24
    const-string v0, ")"

    goto :goto_5

    .line 94
    :pswitch_27
    const-string v0, "{"

    goto :goto_5

    .line 96
    :pswitch_2a
    const-string v0, "}"

    goto :goto_5

    .line 98
    :pswitch_2d
    const-string v0, "["

    goto :goto_5

    .line 100
    :pswitch_30
    const-string v0, "]"

    goto :goto_5

    .line 102
    :pswitch_33
    const-string v0, ","

    goto :goto_5

    .line 104
    :pswitch_36
    const-string v0, ":"

    goto :goto_5

    .line 106
    :pswitch_39
    const-string v0, "ident"

    goto :goto_5

    .line 108
    :pswitch_3c
    const-string v0, "fieldName"

    goto :goto_5

    .line 110
    :pswitch_3f
    const-string v0, "EOF"

    goto :goto_5

    .line 112
    :pswitch_42
    const-string v0, "Set"

    goto :goto_5

    .line 114
    :pswitch_45
    const-string v0, "TreeSet"

    goto :goto_5

    .line 116
    :pswitch_48
    const-string v0, "undefined"

    goto :goto_5

    .line 70
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
        :pswitch_45
        :pswitch_48
    .end packed-switch
.end method
