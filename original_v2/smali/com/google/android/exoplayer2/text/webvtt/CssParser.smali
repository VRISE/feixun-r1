.class final Lcom/google/android/exoplayer2/text/webvtt/CssParser;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final BLOCK_END:Ljava/lang/String; = "}"

.field private static final BLOCK_START:Ljava/lang/String; = "{"

.field private static final PROPERTY_BGCOLOR:Ljava/lang/String; = "background-color"

.field private static final PROPERTY_FONT_FAMILY:Ljava/lang/String; = "font-family"

.field private static final PROPERTY_FONT_STYLE:Ljava/lang/String; = "font-style"

.field private static final PROPERTY_FONT_WEIGHT:Ljava/lang/String; = "font-weight"

.field private static final PROPERTY_TEXT_DECORATION:Ljava/lang/String; = "text-decoration"

.field private static final VALUE_BOLD:Ljava/lang/String; = "bold"

.field private static final VALUE_ITALIC:Ljava/lang/String; = "italic"

.field private static final VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private final styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private applySelectorToStyle(Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .registers 13
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "selector"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 306
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 329
    :cond_b
    :goto_b
    return-void

    .line 309
    :cond_c
    const/16 v5, 0x5b

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 310
    .local v4, "voiceStartIndex":I
    if-eq v4, v9, :cond_2f

    .line 311
    sget-object v5, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 312
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 313
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    .line 315
    :cond_2b
    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 317
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_2f
    const-string v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "classDivision":[Ljava/lang/String;
    aget-object v3, v0, v7

    .line 319
    .local v3, "tagAndIdDivision":Ljava/lang/String;
    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 320
    .local v1, "idPrefixIndex":I
    if-eq v1, v9, :cond_5d

    .line 321
    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    .line 322
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    .line 326
    :goto_4f
    array-length v5, v0

    if-le v5, v8, :cond_b

    .line 327
    array-length v5, v0

    invoke-static {v0, v8, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    goto :goto_b

    .line 324
    :cond_5d
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    goto :goto_4f
.end method

.method private static maybeSkipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 9
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/16 v7, 0x2f

    const/16 v6, 0x2a

    .line 263
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 264
    .local v2, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    .line 265
    .local v1, "limit":I
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    .line 266
    .local v0, "data":[B
    add-int/lit8 v5, v2, 0x2

    if-gt v5, v1, :cond_41

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "position":I
    .local v3, "position":I
    aget-byte v5, v0, v2

    if-ne v5, v7, :cond_40

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    aget-byte v5, v0, v3

    if-ne v5, v6, :cond_41

    move v3, v2

    .line 267
    .end local v2    # "position":I
    .restart local v3    # "position":I
    :goto_1f
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v1, :cond_34

    .line 268
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "position":I
    .restart local v2    # "position":I
    aget-byte v5, v0, v3

    int-to-char v4, v5

    .line 269
    .local v4, "skippedChar":C
    if-ne v4, v6, :cond_32

    .line 270
    aget-byte v5, v0, v2

    int-to-char v5, v5

    if-ne v5, v7, :cond_32

    .line 271
    add-int/lit8 v2, v2, 0x1

    .line 272
    move v1, v2

    :cond_32
    move v3, v2

    .line 275
    .end local v2    # "position":I
    .restart local v3    # "position":I
    goto :goto_1f

    .line 276
    .end local v4    # "skippedChar":C
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 277
    const/4 v5, 0x1

    move v2, v3

    .line 279
    .end local v3    # "position":I
    .restart local v2    # "position":I
    :goto_3f
    return v5

    .end local v2    # "position":I
    .restart local v3    # "position":I
    :cond_40
    move v2, v3

    .end local v3    # "position":I
    .restart local v2    # "position":I
    :cond_41
    const/4 v5, 0x0

    goto :goto_3f
.end method

.method private static maybeSkipWhitespace(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->peekCharAtPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)C

    move-result v1

    sparse-switch v1, :sswitch_data_12

    .line 221
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 218
    :sswitch_e
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_d

    .line 212
    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method private static parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 283
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 284
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 285
    .local v3, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 286
    .local v2, "limit":I
    const/4 v1, 0x0

    .line 287
    .local v1, "identifierEndFound":Z
    :goto_d
    if-ge v3, v2, :cond_46

    if-nez v1, :cond_46

    .line 288
    iget-object v4, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v4, v4, v3

    int-to-char v0, v4

    .line 289
    .local v0, "c":C
    const/16 v4, 0x41

    if-lt v0, v4, :cond_1e

    const/16 v4, 0x5a

    if-le v0, v4, :cond_3e

    :cond_1e
    const/16 v4, 0x61

    if-lt v0, v4, :cond_26

    const/16 v4, 0x7a

    if-le v0, v4, :cond_3e

    :cond_26
    const/16 v4, 0x30

    if-lt v0, v4, :cond_2e

    const/16 v4, 0x39

    if-le v0, v4, :cond_3e

    :cond_2e
    const/16 v4, 0x23

    if-eq v0, v4, :cond_3e

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_3e

    const/16 v4, 0x2e

    if-eq v0, v4, :cond_3e

    const/16 v4, 0x5f

    if-ne v0, v4, :cond_44

    .line 291
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 294
    :cond_44
    const/4 v1, 0x1

    goto :goto_d

    .line 297
    .end local v0    # "c":C
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 199
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-nez v1, :cond_b

    .line 201
    const/4 v0, 0x0

    .line 208
    :cond_a
    :goto_a
    return-object v0

    .line 203
    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "identifier":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private static parsePropertyValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "expressionBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 245
    .local v1, "expressionEndFound":Z
    :goto_6
    if-nez v1, :cond_2d

    .line 246
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 247
    .local v2, "position":I
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_14

    .line 250
    const/4 v4, 0x0

    .line 259
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :goto_13
    return-object v4

    .line 252
    .restart local v2    # "position":I
    .restart local v3    # "token":Ljava/lang/String;
    :cond_14
    const-string v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 253
    :cond_24
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 254
    const/4 v1, 0x1

    goto :goto_6

    .line 256
    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 259
    .end local v2    # "position":I
    .end local v3    # "token":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13
.end method

.method private static parseSelector(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 9
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 96
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-ge v5, v6, :cond_d

    move-object v2, v4

    .line 121
    :cond_c
    :goto_c
    return-object v2

    .line 100
    :cond_d
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "cueSelector":Ljava/lang/String;
    const-string v5, "::cue"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    move-object v2, v4

    .line 102
    goto :goto_c

    .line 104
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 105
    .local v1, "position":I
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "token":Ljava/lang/String;
    if-nez v3, :cond_27

    move-object v2, v4

    .line 107
    goto :goto_c

    .line 109
    :cond_27
    const-string v5, "{"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 111
    const-string v2, ""

    goto :goto_c

    .line 113
    :cond_35
    const/4 v2, 0x0

    .line 114
    .local v2, "target":Ljava/lang/String;
    const-string v5, "("

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->readCueTarget(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v2

    .line 117
    :cond_42
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 118
    const-string v5, ")"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    if-nez v3, :cond_c

    :cond_50
    move-object v2, v4

    .line 119
    goto :goto_c
.end method

.method private static parseStyleDeclaration(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .registers 10
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "style"    # Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v6, 0x1

    .line 141
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 142
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "property":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 187
    :cond_10
    :goto_10
    return-void

    .line 146
    :cond_11
    const-string v4, ":"

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 149
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 150
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parsePropertyValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_10

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 154
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 155
    .local v0, "position":I
    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "token":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 167
    :goto_3e
    const-string v4, "color"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 168
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_10

    .line 158
    :cond_4e
    const-string v4, "}"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 161
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_3e

    .line 169
    :cond_5a
    const-string v4, "background-color"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 170
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_10

    .line 171
    :cond_6a
    const-string v4, "text-decoration"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 172
    const-string v4, "underline"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 173
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_10

    .line 175
    :cond_7e
    const-string v4, "font-family"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 176
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_10

    .line 177
    :cond_8a
    const-string v4, "font-weight"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 178
    const-string v4, "bold"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 179
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_10

    .line 181
    :cond_9f
    const-string v4, "font-style"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 182
    const-string v4, "italic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 183
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_10
.end method

.method private static peekCharAtPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)C
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .param p1, "position"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method private static readCueTarget(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 129
    .local v3, "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    .line 130
    .local v2, "limit":I
    const/4 v1, 0x0

    .local v1, "cueTargetEndFound":Z
    move v4, v3

    .line 131
    .end local v3    # "position":I
    .local v4, "position":I
    :goto_a
    if-ge v4, v2, :cond_1e

    if-nez v1, :cond_1e

    .line 132
    iget-object v5, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    aget-byte v5, v5, v4

    int-to-char v0, v5

    .line 133
    .local v0, "c":C
    const/16 v5, 0x29

    if-ne v0, v5, :cond_1c

    const/4 v1, 0x1

    :goto_1a
    move v4, v3

    .line 134
    .end local v3    # "position":I
    .restart local v4    # "position":I
    goto :goto_a

    .line 133
    .end local v4    # "position":I
    .restart local v3    # "position":I
    :cond_1c
    const/4 v1, 0x0

    goto :goto_1a

    .line 135
    .end local v0    # "c":C
    .end local v3    # "position":I
    .restart local v4    # "position":I
    :cond_1e
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "position":I
    .restart local v3    # "position":I
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static skipStyleBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    return-void
.end method

.method static skipWhitespaceAndComments(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .registers 3
    .param p0, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    .line 191
    const/4 v0, 0x1

    .line 192
    .local v0, "skipping":Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_19

    if-eqz v0, :cond_19

    .line 193
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->maybeSkipWhitespace(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->maybeSkipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    goto :goto_1

    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    .line 195
    :cond_19
    return-void
.end method


# virtual methods
.method public parseBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    .registers 13
    .param p1, "input"    # Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 62
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 63
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 64
    .local v1, "initialInputPosition":I
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->skipStyleBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 65
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 66
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 67
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseSelector(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "selector":Ljava/lang/String;
    if-eqz v3, :cond_38

    const-string v8, "{"

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v10, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    :cond_38
    move-object v4, v6

    .line 84
    :cond_39
    :goto_39
    return-object v4

    .line 71
    :cond_3a
    new-instance v4, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;-><init>()V

    .line 72
    .local v4, "style":Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->applySelectorToStyle(Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    .line 73
    const/4 v5, 0x0

    .line 74
    .local v5, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .line 75
    .local v0, "blockEndFound":Z
    :cond_44
    :goto_44
    if-nez v0, :cond_70

    .line 76
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 77
    .local v2, "position":I
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    .line 78
    if-eqz v5, :cond_5e

    const-string v8, "}"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6e

    :cond_5e
    const/4 v0, 0x1

    .line 79
    :goto_5f
    if-nez v0, :cond_44

    .line 80
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 81
    iget-object v8, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->styleInput:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, p0, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v8, v4, v9}, Lcom/google/android/exoplayer2/text/webvtt/CssParser;->parseStyleDeclaration(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    goto :goto_44

    :cond_6e
    move v0, v7

    .line 78
    goto :goto_5f

    .line 84
    .end local v2    # "position":I
    :cond_70
    const-string v7, "}"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_39

    move-object v4, v6

    goto :goto_39
.end method
