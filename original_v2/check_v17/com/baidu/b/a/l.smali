.class Lcom/baidu/b/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Hashtable;

.field final synthetic f:Lcom/baidu/b/a/b;


# direct methods
.method constructor <init>(Lcom/baidu/b/a/b;IZLjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 7

    iput-object p1, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iput p2, p0, Lcom/baidu/b/a/l;->a:I

    iput-boolean p3, p0, Lcom/baidu/b/a/l;->b:Z

    iput-object p4, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/b/a/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/b/a/l;->e:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v3, 0x0

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/b/a/l;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; forced = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/b/a/l;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checkAK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-object v2, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_3b
    iget v0, p0, Lcom/baidu/b/a/l;->a:I

    const/16 v1, 0x259

    if-eq v0, v1, :cond_54

    iget-boolean v0, p0, Lcom/baidu/b/a/l;->b:Z

    if-nez v0, :cond_54

    iget v0, p0, Lcom/baidu/b/a/l;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_54

    iget-object v0, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-object v1, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    :cond_54
    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_5d

    const-string v0, "authenticate sendAuthRequest"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_5d
    invoke-static {}, Lcom/baidu/b/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/e;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authStrings.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_80
    if-eqz v4, :cond_9d

    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_9d

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_8f

    const-string v0, "more sha1 auth"

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_8f
    iget-object v0, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-boolean v1, p0, Lcom/baidu/b/a/l;->b:Z

    iget-object v2, p0, Lcom/baidu/b/a/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/b/a/l;->e:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;ZLjava/lang/String;Ljava/util/Hashtable;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    return-void

    :cond_9d
    iget-object v0, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-boolean v1, p0, Lcom/baidu/b/a/l;->b:Z

    iget-object v2, p0, Lcom/baidu/b/a/l;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/b/a/l;->e:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;ZLjava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    goto :goto_9c

    :cond_ab
    const/16 v0, 0x25a

    iget v1, p0, Lcom/baidu/b/a/l;->a:I

    if-ne v0, v1, :cond_c9

    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_ba

    const-string v0, "authenticate wait  "

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_ba
    invoke-static {}, Lcom/baidu/b/a/b;->d()Lcom/baidu/b/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/b/a/o;->b()V

    iget-object v0, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-object v1, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_c9
    sget-boolean v0, Lcom/baidu/b/a/d;->a:Z

    if-eqz v0, :cond_d2

    const-string v0, "authenticate else  "

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    :cond_d2
    iget-object v0, p0, Lcom/baidu/b/a/l;->f:Lcom/baidu/b/a/b;

    iget-object v1, p0, Lcom/baidu/b/a/l;->c:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/baidu/b/a/b;->a(Lcom/baidu/b/a/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method
