.class La/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v6, 0x65

    const/16 v5, 0x61

    const/16 v7, 0x24

    const/4 v9, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[a-z]*[1-5]?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    const-string v1, "[a-z]*[1-5]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "ou"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v1, :cond_83

    move v2, v5

    :goto_3b
    if-eq v7, v2, :cond_82

    if-eq v4, v1, :cond_82

    const-string v3, "aeiouv"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v8, -0x1

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v3

    const-string v3, "\u0101\u00e1\u0103\u00e0a\u0113\u00e9\u0115\u00e8e\u012b\u00ed\u012d\u00eci\u014d\u00f3\u014f\u00f2o\u016b\u00fa\u016d\u00f9u\u01d6\u01d8\u01da\u01dc\u00fc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v"

    const-string v6, "\u00fc"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    const-string v2, "\u00fc"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_82
    :goto_82
    return-object v0

    :cond_83
    if-eq v4, v2, :cond_88

    move v1, v2

    move v2, v6

    goto :goto_3b

    :cond_88
    if-eq v4, v3, :cond_93

    const-string v1, "ou"

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v1

    move v1, v3

    goto :goto_3b

    :cond_93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_99
    if-ltz v1, :cond_bc

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[aeiouv]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_3b

    :cond_b0
    add-int/lit8 v1, v1, -0x1

    goto :goto_99

    :cond_b3
    const-string v1, "v"

    const-string v2, "\u00fc"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_82

    :cond_bc
    move v1, v4

    move v2, v7

    goto/16 :goto_3b
.end method

.method static a(Ljava/lang/String;La/a/a/a/b;)Ljava/lang/String;
    .registers 4

    sget-object v0, La/a/a/a/c;->c:La/a/a/a/c;

    invoke-virtual {p1}, La/a/a/a/b;->c()La/a/a/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_20

    sget-object v0, La/a/a/a/d;->b:La/a/a/a/d;

    invoke-virtual {p1}, La/a/a/a/b;->d()La/a/a/a/d;

    move-result-object v1

    if-eq v0, v1, :cond_18

    sget-object v0, La/a/a/a/d;->a:La/a/a/a/d;

    invoke-virtual {p1}, La/a/a/a/b;->d()La/a/a/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_20

    :cond_18
    new-instance v0, La/a/a/a/a/a;

    const-string v1, "tone marks cannot be added to v or u:"

    invoke-direct {v0, v1}, La/a/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    sget-object v0, La/a/a/a/c;->b:La/a/a/a/c;

    invoke-virtual {p1}, La/a/a/a/b;->c()La/a/a/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_4d

    const-string v0, "[1-5]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_30
    :goto_30
    sget-object v0, La/a/a/a/d;->b:La/a/a/a/d;

    invoke-virtual {p1}, La/a/a/a/b;->d()La/a/a/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_62

    const-string v0, "u:"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_40
    :goto_40
    sget-object v0, La/a/a/a/a;->a:La/a/a/a/a;

    invoke-virtual {p1}, La/a/a/a/b;->b()La/a/a/a/a;

    move-result-object v1

    if-ne v0, v1, :cond_4c

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_4c
    return-object p0

    :cond_4d
    sget-object v0, La/a/a/a/c;->c:La/a/a/a/c;

    invoke-virtual {p1}, La/a/a/a/b;->c()La/a/a/a/c;

    move-result-object v1

    if-ne v0, v1, :cond_30

    const-string v0, "u:"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_30

    :cond_62
    sget-object v0, La/a/a/a/d;->c:La/a/a/a/d;

    invoke-virtual {p1}, La/a/a/a/b;->d()La/a/a/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_40

    const-string v0, "u:"

    const-string v1, "\u00fc"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_40
.end method
