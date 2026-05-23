.class public Lcom/unisound/common/al;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/common/ak;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/unisound/sdk/as;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    sput v0, Lcom/unisound/common/al;->b:I

    const-string v0, "http://10.30.2.13:8089/data-process-service/rtc"

    sput-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    return-void
.end method

.method private b()I
    .registers 4

    const/4 v1, -0x1

    const/4 v0, 0x1

    :goto_2
    sget v2, Lcom/unisound/common/al;->b:I

    if-ge v0, v2, :cond_10

    invoke-direct {p0, v0}, Lcom/unisound/common/al;->b(I)Lcom/unisound/common/ak;

    move-result-object v2

    if-nez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    move v0, v1

    goto :goto_c
.end method

.method private b(I)Lcom/unisound/common/ak;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    invoke-virtual {v0}, Lcom/unisound/common/ak;->c()I

    move-result v3

    if-ne v3, p1, :cond_c

    goto :goto_5

    :cond_1f
    move-object v0, v1

    goto :goto_5
.end method

.method private c(Ljava/lang/String;)Lcom/unisound/common/ak;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object v0, v1

    goto :goto_7

    :cond_10
    invoke-direct {p0}, Lcom/unisound/common/al;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    new-instance v0, Lcom/unisound/common/ak;

    invoke-direct {v0, v1, p1}, Lcom/unisound/common/ak;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/unisound/common/ak;
    .registers 3

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_14

    const/4 v0, -0x1

    if-le p1, v0, :cond_14

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(Ljava/lang/String;)Lcom/unisound/common/ak;
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    invoke-virtual {v0}, Lcom/unisound/common/ak;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_26
    move-object v0, v1

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/unisound/common/am;)Lcom/unisound/common/ax;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unisound/common/am;",
            ")",
            "Lcom/unisound/common/ax;"
        }
    .end annotation

    const v4, -0xf626

    new-instance v1, Lcom/unisound/common/ax;

    invoke-direct {v1}, Lcom/unisound/common/ax;-><init>()V

    sget-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/unisound/common/ax;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    new-instance v2, Lcom/unisound/client/ErrorCode;

    invoke-direct {v2}, Lcom/unisound/client/ErrorCode;-><init>()V

    if-nez v0, :cond_38

    invoke-virtual {p0}, Lcom/unisound/common/al;->a()I

    move-result v0

    sget v3, Lcom/unisound/common/al;->b:I

    if-lt v0, v3, :cond_29

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/ci;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/unisound/common/am;->a(Lcom/unisound/common/ax;Lcom/unisound/sdk/ci;)V

    move-object v0, v1

    :goto_28
    return-object v0

    :cond_29
    invoke-direct {p0, p1}, Lcom/unisound/common/al;->c(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-virtual {v2, v4}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/ci;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/unisound/common/am;->a(Lcom/unisound/common/ax;Lcom/unisound/sdk/ci;)V

    move-object v0, v1

    goto :goto_28

    :cond_38
    iget-object v2, p0, Lcom/unisound/common/al;->d:Lcom/unisound/sdk/as;

    invoke-virtual {v2}, Lcom/unisound/sdk/as;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Lcom/unisound/common/ax;->a(Ljava/lang/String;Lcom/unisound/common/ak;Ljava/util/List;)V

    invoke-virtual {v1, p3}, Lcom/unisound/common/ax;->a(Lcom/unisound/common/am;)V

    move-object v0, v1

    goto :goto_28
.end method

.method public a(Lcom/unisound/common/ak;)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/ak;

    if-ne v0, p1, :cond_6

    iget-object v0, p0, Lcom/unisound/common/al;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public a(Lcom/unisound/sdk/as;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/al;->d:Lcom/unisound/sdk/as;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data-process-service/rtc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/common/al;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/common/al;->a(Ljava/lang/String;)Lcom/unisound/common/ak;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/unisound/common/al;->a(Lcom/unisound/common/ak;)V

    :cond_9
    return-void
.end method
