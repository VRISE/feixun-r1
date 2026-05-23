.class public Lcom/unisound/vui/util/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final c:D

.field private final d:I


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c()D
    .registers 3

    iget-wide v0, p0, Lcom/unisound/vui/util/b/a/c;->c:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/unisound/vui/util/b/a/c;, "Lcom/unisound/vui/util/b/a/c<TC;>;"
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/unisound/vui/util/b/a/c;

    if-nez v1, :cond_6

    .end local p1    # "that":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "that":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lcom/unisound/vui/util/b/a/c;

    .end local p1    # "that":Ljava/lang/Object;
    iget-object v1, p0, Lcom/unisound/vui/util/b/a/c;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/unisound/vui/util/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unisound/vui/util/b/a/c;->b:Ljava/lang/Object;

    iget-object v2, p1, Lcom/unisound/vui/util/b/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v2, p0, Lcom/unisound/vui/util/b/a/c;->c:D

    iget-wide v4, p1, Lcom/unisound/vui/util/b/a/c;->c:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_5

    iget v1, p0, Lcom/unisound/vui/util/b/a/c;->d:I

    iget v2, p1, Lcom/unisound/vui/util/b/a/c;->d:I

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/unisound/vui/util/b/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/vui/util/b/a/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/c;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/unisound/vui/util/b/a/c;->c()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
