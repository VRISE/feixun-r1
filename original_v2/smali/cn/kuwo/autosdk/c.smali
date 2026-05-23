.class Lcn/kuwo/autosdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic d:[I


# instance fields
.field final synthetic a:Lcn/kuwo/autosdk/b;

.field private final synthetic b:Lcn/kuwo/autosdk/e;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/e;I)V
    .registers 4

    iput-object p1, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iput-object p2, p0, Lcn/kuwo/autosdk/c;->b:Lcn/kuwo/autosdk/e;

    iput p3, p0, Lcn/kuwo/autosdk/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .registers 3

    sget-object v0, Lcn/kuwo/autosdk/c;->d:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcn/kuwo/autosdk/e;->a()[Lcn/kuwo/autosdk/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcn/kuwo/autosdk/e;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcn/kuwo/autosdk/e;->c:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcn/kuwo/autosdk/e;->a:Lcn/kuwo/autosdk/e;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcn/kuwo/autosdk/c;->d:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v1, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-boolean v0, v0, Lcn/kuwo/autosdk/b;->p:Z

    if-eqz v0, :cond_b

    monitor-exit v1

    :goto_a
    return-void

    :cond_b
    invoke-static {}, Lcn/kuwo/autosdk/c;->a()[I

    move-result-object v0

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->b:Lcn/kuwo/autosdk/e;

    invoke-virtual {v2}, Lcn/kuwo/autosdk/e;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_4c

    :goto_1a
    monitor-exit v1

    goto :goto_a

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0

    :pswitch_1f
    :try_start_1f
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget v3, p0, Lcn/kuwo/autosdk/c;->c:I

    iget-object v4, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v4, v4, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3, v4}, Lcn/kuwo/autosdk/f;->a(Lcn/kuwo/autosdk/b;ILcn/kuwo/autosdk/a;)V

    goto :goto_1a

    :pswitch_2f
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, v3, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/autosdk/f;->b(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/a;)V

    goto :goto_1a

    :pswitch_3d
    iget-object v0, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v0, v0, Lcn/kuwo/autosdk/b;->x:Lcn/kuwo/autosdk/f;

    iget-object v2, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, p0, Lcn/kuwo/autosdk/c;->a:Lcn/kuwo/autosdk/b;

    iget-object v3, v3, Lcn/kuwo/autosdk/b;->z:Lcn/kuwo/autosdk/a;

    invoke-interface {v0, v2, v3}, Lcn/kuwo/autosdk/f;->a(Lcn/kuwo/autosdk/b;Lcn/kuwo/autosdk/a;)V
    :try_end_4a
    .catchall {:try_start_1f .. :try_end_4a} :catchall_1c

    goto :goto_1a

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2f
        :pswitch_3d
    .end packed-switch
.end method
