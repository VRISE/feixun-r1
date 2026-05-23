.class public final Lcom/baidu/location/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/h$1;,
        Lcom/baidu/location/h$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field protected t:Lcom/baidu/location/h$a;

.field public u:I

.field public v:F

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/h;->c:Z

    iput v1, p0, Lcom/baidu/location/h;->d:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/h;->e:I

    const-string v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/h;->g:I

    iput-boolean v1, p0, Lcom/baidu/location/h;->h:Z

    iput-boolean v2, p0, Lcom/baidu/location/h;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->j:Z

    const-string v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/h;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/h;->l:Z

    iput-boolean v2, p0, Lcom/baidu/location/h;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->p:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->q:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->r:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->s:Z

    iput v1, p0, Lcom/baidu/location/h;->u:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/baidu/location/h;->v:F

    iput v1, p0, Lcom/baidu/location/h;->w:I

    iput v1, p0, Lcom/baidu/location/h;->x:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/h;->y:I

    return-void
.end method

.method public constructor <init>(Lcom/baidu/location/h;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    const-string v0, "detail"

    iput-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/h;->c:Z

    iput v1, p0, Lcom/baidu/location/h;->d:I

    const/16 v0, 0x2ee0

    iput v0, p0, Lcom/baidu/location/h;->e:I

    const-string v0, "SDK6.0"

    iput-object v0, p0, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/h;->g:I

    iput-boolean v1, p0, Lcom/baidu/location/h;->h:Z

    iput-boolean v2, p0, Lcom/baidu/location/h;->i:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->j:Z

    const-string v0, "com.baidu.location.service_v2.9"

    iput-object v0, p0, Lcom/baidu/location/h;->k:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/baidu/location/h;->l:Z

    iput-boolean v2, p0, Lcom/baidu/location/h;->m:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->n:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->o:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->p:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->q:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->r:Z

    iput-boolean v1, p0, Lcom/baidu/location/h;->s:Z

    iput v1, p0, Lcom/baidu/location/h;->u:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/baidu/location/h;->v:F

    iput v1, p0, Lcom/baidu/location/h;->w:I

    iput v1, p0, Lcom/baidu/location/h;->x:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/baidu/location/h;->y:I

    iget-object v0, p1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/h;->c:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->c:Z

    iget v0, p1, Lcom/baidu/location/h;->d:I

    iput v0, p0, Lcom/baidu/location/h;->d:I

    iget v0, p1, Lcom/baidu/location/h;->e:I

    iput v0, p0, Lcom/baidu/location/h;->e:I

    iget-object v0, p1, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iget v0, p1, Lcom/baidu/location/h;->g:I

    iput v0, p0, Lcom/baidu/location/h;->g:I

    iget-boolean v0, p1, Lcom/baidu/location/h;->h:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->h:Z

    iget-object v0, p1, Lcom/baidu/location/h;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/h;->k:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/baidu/location/h;->i:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->i:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->l:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->l:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->m:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->m:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->j:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->j:Z

    iget-object v0, p1, Lcom/baidu/location/h;->t:Lcom/baidu/location/h$a;

    iput-object v0, p0, Lcom/baidu/location/h;->t:Lcom/baidu/location/h$a;

    iget-boolean v0, p1, Lcom/baidu/location/h;->o:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->o:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->p:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->p:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->q:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->q:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->r:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->r:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->n:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->n:Z

    iget-boolean v0, p1, Lcom/baidu/location/h;->s:Z

    iput-boolean v0, p0, Lcom/baidu/location/h;->s:Z

    iget v0, p1, Lcom/baidu/location/h;->u:I

    iput v0, p0, Lcom/baidu/location/h;->u:I

    iget v0, p1, Lcom/baidu/location/h;->v:F

    iput v0, p0, Lcom/baidu/location/h;->v:F

    iget v0, p1, Lcom/baidu/location/h;->w:I

    iput v0, p0, Lcom/baidu/location/h;->w:I

    iget v0, p1, Lcom/baidu/location/h;->x:I

    iput v0, p0, Lcom/baidu/location/h;->x:I

    iget v0, p1, Lcom/baidu/location/h;->y:I

    iput v0, p0, Lcom/baidu/location/h;->y:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/location/h;->d:I

    return-void
.end method

.method public a(Lcom/baidu/location/h$a;)V
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lcom/baidu/location/h$1;->a:[I

    invoke-virtual {p1}, Lcom/baidu/location/h$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal this mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    iput-boolean v2, p0, Lcom/baidu/location/h;->c:Z

    iput v2, p0, Lcom/baidu/location/h;->g:I

    :goto_29
    iput-object p1, p0, Lcom/baidu/location/h;->t:Lcom/baidu/location/h$a;

    return-void

    :pswitch_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/h;->c:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/h;->g:I

    goto :goto_29

    :pswitch_33
    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/h;->g:I

    iput-boolean v2, p0, Lcom/baidu/location/h;->c:Z

    goto :goto_29

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2c
        :pswitch_33
    .end packed-switch
.end method

.method public a(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "all"

    iput-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const-string v0, "noaddr"

    iput-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    goto :goto_6
.end method

.method public a(Lcom/baidu/location/h;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/h;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->c:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->c:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->d:I

    iget v1, p1, Lcom/baidu/location/h;->d:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->e:I

    iget v1, p1, Lcom/baidu/location/h;->e:I

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/h;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/baidu/location/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->h:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->h:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->g:I

    iget v1, p1, Lcom/baidu/location/h;->g:I

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->i:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->i:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->l:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->l:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->m:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->m:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->o:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->o:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->p:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->p:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->q:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->q:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->r:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->r:Z

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->n:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->n:Z

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->u:I

    iget v1, p1, Lcom/baidu/location/h;->u:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->v:F

    iget v1, p1, Lcom/baidu/location/h;->v:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->w:I

    iget v1, p1, Lcom/baidu/location/h;->w:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->x:I

    iget v1, p1, Lcom/baidu/location/h;->x:I

    if-ne v0, v1, :cond_9a

    iget v0, p0, Lcom/baidu/location/h;->y:I

    iget v1, p1, Lcom/baidu/location/h;->y:I

    if-ne v0, v1, :cond_9a

    iget-boolean v0, p0, Lcom/baidu/location/h;->s:Z

    iget-boolean v1, p1, Lcom/baidu/location/h;->s:Z

    if-ne v0, v1, :cond_9a

    iget-object v0, p0, Lcom/baidu/location/h;->t:Lcom/baidu/location/h$a;

    iget-object v1, p1, Lcom/baidu/location/h;->t:Lcom/baidu/location/h$a;

    if-ne v0, v1, :cond_9a

    const/4 v0, 0x1

    :goto_99
    return v0

    :cond_9a
    const/4 v0, 0x0

    goto :goto_99
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/h;->n:Z

    return-void
.end method

.method c()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/h;->u:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/h;->w:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/baidu/location/h;->x:I

    return v0
.end method

.method f()F
    .registers 2

    iget v0, p0, Lcom/baidu/location/h;->v:F

    return v0
.end method
