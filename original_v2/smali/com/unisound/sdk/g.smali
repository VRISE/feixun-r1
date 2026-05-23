.class public Lcom/unisound/sdk/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = -0x1

.field private static d:Lcom/unisound/sdk/ab;


# instance fields
.field private c:J

.field private e:Lcn/yunzhisheng/asrfix/JniAsrFix;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisound/sdk/g;->c:J

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, -0x1

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "compile  setCompileMaxPronunciation fail handle=0"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    invoke-virtual {v0, v2, v3, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(JI)I

    move-result v0

    if-nez v0, :cond_29

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "compile  setCompileMaxPronunciation ok"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_14

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile  setCompileMaxPronunciation fail code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    iget-object v1, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-wide v0, p0, Lcom/unisound/sdk/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    new-array v0, v10, [Ljava/lang/Object;

    const-string v1, "compile  compileUserData fail handle=0"

    aput-object v1, v0, v9

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_13
    iget-object v1, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcn/yunzhisheng/asrfix/JniAsrFix;->partialCompileUserData(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "compile  code = "

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    if-nez v0, :cond_3c

    new-array v1, v10, [Ljava/lang/Object;

    const-string v2, "compile  compileUserData ok"

    aput-object v2, v1, v9

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_3b
    return v0

    :cond_3c
    const/16 v1, -0xa

    if-ne v0, v1, :cond_47

    const-string v0, "compile compileUserData partialfile error, autofix ok"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move v0, v9

    goto :goto_3b

    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile  compileUserData fail code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_3b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/unisound/sdk/ab;)V
    .registers 2

    sput-object p1, Lcom/unisound/sdk/g;->d:Lcom/unisound/sdk/ab;

    return-void
.end method

.method public a()Z
    .registers 5

    iget-wide v0, p0, Lcom/unisound/sdk/g;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)Z
    .registers 12

    const-wide/16 v8, 0x0

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a()Lcn/yunzhisheng/asrfix/JniAsrFix;

    move-result-object v2

    iput-object v2, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-object v2, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v2, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->initUserDataCompiler(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    sget-boolean v2, Lcom/unisound/common/y;->l:Z

    if-eqz v2, :cond_37

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "compile  initUserDataCompiler handle="

    aput-object v3, v2, v1

    iget-wide v4, p0, Lcom/unisound/sdk/g;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "path = "

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_30
    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_49

    :cond_36
    :goto_36
    return v0

    :cond_37
    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "compile  initUserDataCompiler handle="

    aput-object v3, v2, v1

    iget-wide v4, p0, Lcom/unisound/sdk/g;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_30

    :cond_49
    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_36

    move v0, v1

    goto :goto_36
.end method

.method public b(I)I
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, -0x1

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "compile  setCompileOverMaxPronunciationInsertAction fail handle=0"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    invoke-virtual {v0, v2, v3, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->b(JI)I

    move-result v0

    if-nez v0, :cond_29

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "compile  setCompileOverMaxPronunciationInsertAction ok"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto :goto_14

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compile  setCompileOverMaxPronunciationInsertAction fail code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asrfix/JniAsrFix;->unloadGrammar(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/unisound/sdk/g;->c:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "compile  destroyUserDataCompiler"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->destroyUserDataCompiler(J)V

    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    invoke-virtual {v0}, Lcn/yunzhisheng/asrfix/JniAsrFix;->v()V

    iput-wide v4, p0, Lcom/unisound/sdk/g;->c:J

    :cond_21
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_16

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "compile  getCompileErrorDetailInfo fail handle=0"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :goto_15
    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/unisound/sdk/g;->e:Lcn/yunzhisheng/asrfix/JniAsrFix;

    iget-wide v2, p0, Lcom/unisound/sdk/g;->c:J

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asrfix/JniAsrFix;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method
