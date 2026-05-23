.class public Lorg/litepal/util/BaseUtility;
.super Ljava/lang/Object;
.source "BaseUtility.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_27
    return-object v0

    :cond_28
    if-nez p0, :cond_2c

    const/4 v0, 0x0

    goto :goto_27

    :cond_2c
    const-string v0, ""

    goto :goto_27
.end method

.method public static changeCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p0, :cond_29

    .line 54
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v1

    .line 55
    .local v1, "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    invoke-virtual {v1}, Lorg/litepal/parser/LitePalAttr;->getCases()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "cases":Ljava/lang/String;
    const-string v2, "keep"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 63
    .end local p0    # "string":Ljava/lang/String;
    :goto_12
    return-object p0

    .line 58
    .restart local p0    # "string":Ljava/lang/String;
    :cond_13
    const-string v2, "upper"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 59
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 61
    :cond_22
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    .line 63
    .end local v0    # "cases":Ljava/lang/String;
    .end local v1    # "litePalAttr":Lorg/litepal/parser/LitePalAttr;
    :cond_29
    const/4 p0, 0x0

    goto :goto_12
.end method

.method public static varargs checkConditionsCorrect([Ljava/lang/String;)V
    .registers 6
    .param p0, "conditions"    # [Ljava/lang/String;

    .prologue
    .line 145
    if-eqz p0, :cond_1a

    .line 146
    array-length v0, p0

    .line 147
    .local v0, "conditionsSize":I
    if-lez v0, :cond_1a

    .line 148
    const/4 v3, 0x0

    aget-object v2, p0, v3

    .line 149
    .local v2, "whereClause":Ljava/lang/String;
    const-string v3, "?"

    invoke-static {v2, v3}, Lorg/litepal/util/BaseUtility;->count(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 150
    .local v1, "placeHolderSize":I
    add-int/lit8 v3, v1, 0x1

    if-eq v0, v3, :cond_1a

    .line 151
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    const-string v4, "The parameters in conditions are incorrect."

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    .end local v0    # "conditionsSize":I
    .end local v1    # "placeHolderSize":I
    .end local v2    # "whereClause":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public static containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z
    .registers 6
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    .line 94
    :cond_3
    :goto_3
    return v0

    .line 84
    :cond_4
    if-nez p1, :cond_c

    .line 85
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 87
    :cond_c
    const/4 v0, 0x0

    .line 88
    .local v0, "contains":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 90
    const/4 v0, 0x1

    .line 91
    goto :goto_3
.end method

.method public static count(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "mark"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "count":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 124
    .local v1, "index":I
    :goto_11
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 131
    .end local v0    # "count":I
    .end local v1    # "index":I
    :goto_14
    return v0

    .line 125
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_15
    add-int/lit8 v0, v0, 0x1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_11

    .line 131
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_25
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static isFieldTypeSupported(Ljava/lang/String;)Z
    .registers 3
    .param p0, "fieldType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 166
    const-string v1, "boolean"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 193
    :cond_11
    :goto_11
    return v0

    .line 169
    :cond_12
    const-string v1, "float"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Float"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 172
    const-string v1, "double"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Double"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 175
    const-string v1, "int"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Integer"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 178
    const-string v1, "long"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Long"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 181
    const-string v1, "short"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Short"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 184
    const-string v1, "char"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.lang.Character"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 187
    const-string v1, "[B"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "[Ljava.lang.Byte;"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 190
    const-string v1, "java.lang.String"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "java.util.Date"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 193
    const/4 v0, 0x0

    goto/16 :goto_11
.end method
