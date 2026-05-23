.class public Lcom/alibaba/fastjson/parser/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x200

.field public static final MAX_BUCKET_LENTH:I = 0x8

.field public static final MAX_SIZE:I = 0x1000


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

.field private final indexMask:I

.field private size:I

.field private final symbols:[Ljava/lang/String;

.field private final symbols_char:[[C


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 38
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    .line 39
    const-string v0, "$ref"

    const/4 v1, 0x4

    const-string v2, "$ref"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/4 v1, 0x5

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "tableSize"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 44
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    .line 45
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .line 46
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    .line 47
    new-array v0, p1, [[C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final hash([CII)I
    .registers 9
    .param p0, "buffer"    # [C
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "h":I
    move v2, p1

    .line 215
    .local v2, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "off":I
    .local v3, "off":I
    :goto_4
    if-ge v1, p2, :cond_12

    .line 216
    mul-int/lit8 v4, v0, 0x1f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "off":I
    .restart local v2    # "off":I
    aget-char v5, p0, v3

    add-int v0, v4, v5

    .line 215
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "off":I
    .restart local v3    # "off":I
    goto :goto_4

    .line 218
    :cond_12
    return v0
.end method

.method private static subString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 200
    new-array v0, p2, [C

    .line 201
    .local v0, "chars":[C
    move v1, p1

    .local v1, "i":I
    :goto_3
    add-int v2, p1, p2

    if-ge v1, v2, :cond_12

    .line 202
    sub-int v2, v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v2

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 204
    :cond_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;III)Ljava/lang/String;
    .registers 19
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 133
    iget v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v7, p4, v2

    .line 135
    .local v7, "bucket":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v13, v2, v7

    .line 137
    .local v13, "sym":Ljava/lang/String;
    const/4 v12, 0x1

    .line 139
    .local v12, "match":Z
    if-eqz v13, :cond_2e

    .line 140
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_2d

    .line 141
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v8, v2, v7

    .line 143
    .local v8, "characters":[C
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_18
    move/from16 v0, p3

    if-ge v11, v0, :cond_27

    .line 144
    add-int v2, p2, v11

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, v8, v11

    if-eq v2, v3, :cond_2a

    .line 145
    const/4 v12, 0x0

    .line 150
    :cond_27
    if-eqz v12, :cond_2e

    .line 196
    .end local v8    # "characters":[C
    .end local v11    # "i":I
    .end local v13    # "sym":Ljava/lang/String;
    :goto_29
    return-object v13

    .line 143
    .restart local v8    # "characters":[C
    .restart local v11    # "i":I
    .restart local v13    # "sym":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v11, v11, 0x1

    goto :goto_18

    .line 154
    .end local v8    # "characters":[C
    .end local v11    # "i":I
    :cond_2d
    const/4 v12, 0x0

    .line 159
    :cond_2e
    const/4 v9, 0x0

    .line 160
    .local v9, "entryIndex":I
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v1, v2, v7

    .local v1, "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    :goto_33
    if-eqz v1, :cond_60

    .line 161
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 162
    .restart local v8    # "characters":[C
    array-length v2, v8

    move/from16 v0, p3

    if-ne v0, v2, :cond_57

    iget v2, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_57

    .line 163
    const/4 v10, 0x1

    .line 164
    .local v10, "eq":Z
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_44
    move/from16 v0, p3

    if-ge v11, v0, :cond_53

    .line 165
    add-int v2, p2, v11

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-char v3, v8, v11

    if-eq v2, v3, :cond_5a

    .line 166
    const/4 v10, 0x0

    .line 171
    :cond_53
    if-nez v10, :cond_5d

    .line 172
    add-int/lit8 v9, v9, 0x1

    .line 160
    .end local v10    # "eq":Z
    .end local v11    # "i":I
    :cond_57
    iget-object v1, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    goto :goto_33

    .line 164
    .restart local v10    # "eq":Z
    .restart local v11    # "i":I
    :cond_5a
    add-int/lit8 v11, v11, 0x1

    goto :goto_44

    .line 175
    :cond_5d
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_29

    .line 178
    .end local v8    # "characters":[C
    .end local v10    # "eq":Z
    .end local v11    # "i":I
    :cond_60
    const/16 v2, 0x8

    if-lt v9, v2, :cond_69

    .line 180
    invoke-static/range {p1 .. p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_29

    .line 184
    :cond_69
    iget v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v3, 0x1000

    if-lt v2, v3, :cond_74

    .line 186
    invoke-static/range {p1 .. p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_29

    .line 189
    :cond_74
    new-instance v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .end local v1    # "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v6, v2, v7

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 190
    .restart local v1    # "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v1, v2, v7

    .line 191
    if-eqz v12, :cond_96

    .line 192
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v3, v2, v7

    .line 193
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v3, v2, v7

    .line 195
    :cond_96
    iget v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 196
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_29
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .registers 6
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 52
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->hash([CII)I

    move-result v0

    .line 53
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public addSymbol([CIII)Ljava/lang/String;
    .registers 21
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "hash"    # I

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->indexMask:I

    and-int v9, p4, v4

    .line 69
    .local v9, "bucket":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    aget-object v15, v4, v9

    .line 71
    .local v15, "sym":Ljava/lang/String;
    const/4 v14, 0x1

    .line 73
    .local v14, "match":Z
    if-eqz v15, :cond_32

    .line 74
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, p3

    if-ne v4, v0, :cond_31

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    aget-object v10, v4, v9

    .line 77
    .local v10, "characters":[C
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1e
    move/from16 v0, p3

    if-ge v13, v0, :cond_2b

    .line 78
    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_2e

    .line 79
    const/4 v14, 0x0

    .line 84
    :cond_2b
    if-eqz v14, :cond_32

    .line 128
    .end local v10    # "characters":[C
    .end local v13    # "i":I
    .end local v15    # "sym":Ljava/lang/String;
    :goto_2d
    return-object v15

    .line 77
    .restart local v10    # "characters":[C
    .restart local v13    # "i":I
    .restart local v15    # "sym":Ljava/lang/String;
    :cond_2e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    .line 88
    .end local v10    # "characters":[C
    .end local v13    # "i":I
    :cond_31
    const/4 v14, 0x0

    .line 93
    :cond_32
    const/4 v11, 0x0

    .line 94
    .local v11, "entryIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v3, v4, v9

    .local v3, "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    :goto_39
    if-eqz v3, :cond_64

    .line 95
    iget-object v10, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    .line 96
    .restart local v10    # "characters":[C
    array-length v4, v10

    move/from16 v0, p3

    if-ne v0, v4, :cond_5b

    iget v4, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->hashCode:I

    move/from16 v0, p4

    if-ne v0, v4, :cond_5b

    .line 97
    const/4 v12, 0x1

    .line 98
    .local v12, "eq":Z
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4a
    move/from16 v0, p3

    if-ge v13, v0, :cond_57

    .line 99
    add-int v4, p2, v13

    aget-char v4, p1, v4

    aget-char v5, v10, v13

    if-eq v4, v5, :cond_5e

    .line 100
    const/4 v12, 0x0

    .line 105
    :cond_57
    if-nez v12, :cond_61

    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 94
    .end local v12    # "eq":Z
    .end local v13    # "i":I
    :cond_5b
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->next:Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    goto :goto_39

    .line 98
    .restart local v12    # "eq":Z
    .restart local v13    # "i":I
    :cond_5e
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    .line 109
    :cond_61
    iget-object v15, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto :goto_2d

    .line 112
    .end local v10    # "characters":[C
    .end local v12    # "eq":Z
    .end local v13    # "i":I
    :cond_64
    const/16 v4, 0x8

    if-lt v11, v4, :cond_74

    .line 113
    new-instance v15, Ljava/lang/String;

    .end local v15    # "sym":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2d

    .line 117
    .restart local v15    # "sym":Ljava/lang/String;
    :cond_74
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    const/16 v5, 0x1000

    if-lt v4, v5, :cond_88

    .line 118
    new-instance v15, Ljava/lang/String;

    .end local v15    # "sym":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2d

    .line 121
    .restart local v15    # "sym":Ljava/lang/String;
    :cond_88
    new-instance v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    .end local v3    # "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aget-object v8, v4, v9

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;-><init>([CIIILcom/alibaba/fastjson/parser/SymbolTable$Entry;)V

    .line 122
    .restart local v3    # "entry":Lcom/alibaba/fastjson/parser/SymbolTable$Entry;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->buckets:[Lcom/alibaba/fastjson/parser/SymbolTable$Entry;

    aput-object v3, v4, v9

    .line 123
    if-eqz v14, :cond_b3

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols:[Ljava/lang/String;

    iget-object v5, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    aput-object v5, v4, v9

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->symbols_char:[[C

    iget-object v5, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->characters:[C

    aput-object v5, v4, v9

    .line 127
    :cond_b3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    .line 128
    iget-object v15, v3, Lcom/alibaba/fastjson/parser/SymbolTable$Entry;->symbol:Ljava/lang/String;

    goto/16 :goto_2d
.end method

.method public size()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/alibaba/fastjson/parser/SymbolTable;->size:I

    return v0
.end method
