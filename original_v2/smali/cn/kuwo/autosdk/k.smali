.class public final Lcn/kuwo/autosdk/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcn/kuwo/autosdk/api/OnSearchListener;

.field private e:Lcn/kuwo/autosdk/api/SearchMode;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcn/kuwo/autosdk/api/SearchMode;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    iput-object v1, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iput v0, p0, Lcn/kuwo/autosdk/k;->c:I

    iput-object v1, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object v0, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object p3, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    iput-object p1, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iput p2, p0, Lcn/kuwo/autosdk/k;->c:I

    return-void
.end method

.method static synthetic a(Lcn/kuwo/autosdk/k;)Lcn/kuwo/autosdk/api/OnSearchListener;
    .registers 2

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    return-object v0
.end method

.method private a()V
    .registers 15

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v7, Lcn/kuwo/autosdk/j;

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->e:Lcn/kuwo/autosdk/api/SearchMode;

    invoke-direct {v7, v0}, Lcn/kuwo/autosdk/j;-><init>(Lcn/kuwo/autosdk/api/SearchMode;)V

    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x3

    new-array v8, v1, [I

    move v4, v2

    move-object v5, v6

    :goto_14
    if-nez v5, :cond_1a

    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_33

    :cond_1a
    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_e

    if-nez v5, :cond_64

    aget v0, v8, v2

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_e

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_2f

    move v2, v1

    :cond_2f
    invoke-direct {p0, v0, v2, v6, v1}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_e

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    iget v4, p0, Lcn/kuwo/autosdk/k;->c:I

    invoke-virtual {v7, v0, v4, v8}, Lcn/kuwo/autosdk/j;->a(Ljava/lang/String;I[I)Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    const-wide/16 v12, 0x1f40

    cmp-long v0, v10, v12

    if-lez v0, :cond_74

    move v0, v1

    :goto_4c
    iget-boolean v5, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v5, :cond_e

    move-object v5, v4

    move v4, v0

    move v0, v3

    goto :goto_14

    :cond_54
    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_e

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_62

    :goto_5e
    invoke-direct {p0, v0, v1, v6, v4}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_e

    :cond_62
    move v1, v2

    goto :goto_5e

    :cond_64
    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_e

    sget-object v0, Lcn/kuwo/autosdk/api/SearchStatus;->SUCCESS:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v3, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v3, :cond_72

    :goto_6e
    invoke-direct {p0, v0, v1, v5, v2}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    goto :goto_e

    :cond_72
    move v1, v2

    goto :goto_6e

    :cond_74
    move v0, v2

    goto :goto_4c
.end method

.method private a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V
    .registers 12

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    if-eqz v0, :cond_13

    iget-object v6, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    new-instance v0, Lcn/kuwo/autosdk/l;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/kuwo/autosdk/l;-><init>(Lcn/kuwo/autosdk/k;Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .registers 3

    iput-object p1, p0, Lcn/kuwo/autosdk/k;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    return-void
.end method

.method public run()V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcn/kuwo/autosdk/k;->d:Lcn/kuwo/autosdk/api/OnSearchListener;

    if-eqz v0, :cond_1c

    sget-object v2, Lcn/kuwo/autosdk/api/SearchStatus;->FAILED:Lcn/kuwo/autosdk/api/SearchStatus;

    iget v0, p0, Lcn/kuwo/autosdk/k;->c:I

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    :goto_18
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcn/kuwo/autosdk/k;->a(Lcn/kuwo/autosdk/api/SearchStatus;ZLjava/util/List;Z)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_18

    :cond_1f
    iget-boolean v0, p0, Lcn/kuwo/autosdk/k;->a:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcn/kuwo/autosdk/k;->a()V

    goto :goto_1c
.end method
