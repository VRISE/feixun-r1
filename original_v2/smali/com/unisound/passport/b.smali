.class public Lcom/unisound/passport/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unisound/passport/b;->a:Z

    sput-boolean v0, Lcom/unisound/passport/b;->b:Z

    const-string v0, "USC"

    sput-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/unisound/passport/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/unisound/passport/b;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/unisound/passport/b;->a:Z

    if-eqz v0, :cond_a

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unisound/passport/b;->f(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/unisound/passport/b;->b:Z

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method
