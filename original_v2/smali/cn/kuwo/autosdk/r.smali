.class public final Lcn/kuwo/autosdk/r;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:I

.field private static b:[Lcn/kuwo/autosdk/t;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcn/kuwo/autosdk/r;->a:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/kuwo/autosdk/t;

    sput-object v0, Lcn/kuwo/autosdk/r;->b:[Lcn/kuwo/autosdk/t;

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcn/kuwo/autosdk/r;->a:I

    return v0
.end method

.method static synthetic a(I)V
    .registers 1

    sput p0, Lcn/kuwo/autosdk/r;->a:I

    return-void
.end method

.method public static a(Lcn/kuwo/autosdk/s;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcn/kuwo/autosdk/s;->b:Lcn/kuwo/autosdk/s;

    if-ne p0, v0, :cond_5

    :cond_5
    invoke-static {}, Lcn/kuwo/autosdk/r;->c()Lcn/kuwo/autosdk/t;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcn/kuwo/autosdk/t;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method static synthetic b()[Lcn/kuwo/autosdk/t;
    .registers 1

    sget-object v0, Lcn/kuwo/autosdk/r;->b:[Lcn/kuwo/autosdk/t;

    return-object v0
.end method

.method private static c()Lcn/kuwo/autosdk/t;
    .registers 5

    const/4 v1, 0x0

    sget v0, Lcn/kuwo/autosdk/r;->a:I

    if-nez v0, :cond_b

    new-instance v0, Lcn/kuwo/autosdk/t;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/t;-><init>(Lcn/kuwo/autosdk/t;)V

    :goto_a
    return-object v0

    :cond_b
    sget-object v1, Lcn/kuwo/autosdk/r;->b:[Lcn/kuwo/autosdk/t;

    monitor-enter v1

    :try_start_e
    sget v0, Lcn/kuwo/autosdk/r;->a:I

    if-nez v0, :cond_1d

    new-instance v0, Lcn/kuwo/autosdk/t;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcn/kuwo/autosdk/t;-><init>(Lcn/kuwo/autosdk/t;)V

    monitor-exit v1

    goto :goto_a

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v0

    :cond_1d
    :try_start_1d
    sget v0, Lcn/kuwo/autosdk/r;->a:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcn/kuwo/autosdk/r;->a:I

    sget-object v0, Lcn/kuwo/autosdk/r;->b:[Lcn/kuwo/autosdk/t;

    sget v2, Lcn/kuwo/autosdk/r;->a:I

    aget-object v0, v0, v2

    sget-object v2, Lcn/kuwo/autosdk/r;->b:[Lcn/kuwo/autosdk/t;

    sget v3, Lcn/kuwo/autosdk/r;->a:I

    const/4 v4, 0x0

    aput-object v4, v2, v3

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_1a

    goto :goto_a
.end method
