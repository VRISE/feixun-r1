.class public Lcom/unisound/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final C:Ljava/lang/String; = "systemResponese"

.field private static z:Ljava/lang/String;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Lcom/unisound/b/a;

.field private D:Lcom/unisound/b/c;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://dc.hivoice.cn/rest/v2/device/activate"

    iput-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    const-string v0, "http://dc.hivoice.cn/rest/v2/token/refresh"

    iput-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    const-string v0, "Android"

    iput-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    sget-object v0, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    iput-object p1, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    new-instance v0, Lcom/unisound/b/a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unisound/b/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    return-void
.end method

.method private A()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "udid"

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceSn"

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    :goto_18
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appKey"

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_23
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    invoke-direct {p0}, Lcom/unisound/b/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appVersion"

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    :goto_37
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pkgName"

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    :goto_42
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_e7

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    :goto_4d
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "macAddress"

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    :goto_58
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "wifiSsid"

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    :goto_63
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "telecomOperator"

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    :goto_6e
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bssId"

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    :goto_79
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productName"

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    :goto_84
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productModel"

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    :goto_8f
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productMfr"

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    :goto_9a
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productOs"

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_103

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    :goto_a5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productOsVersion"

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_106

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    :goto_b0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "hardwareSn"

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :goto_bb
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "memo"

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_10c

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    :goto_c6
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature"

    invoke-direct {p0}, Lcom/unisound/b/b;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_d3
    const-string v0, ""

    goto/16 :goto_d

    :cond_d7
    const-string v0, ""

    goto/16 :goto_18

    :cond_db
    const-string v0, ""

    goto/16 :goto_23

    :cond_df
    const-string v0, ""

    goto/16 :goto_37

    :cond_e3
    const-string v0, ""

    goto/16 :goto_42

    :cond_e7
    const-string v0, ""

    goto/16 :goto_4d

    :cond_eb
    const-string v0, ""

    goto/16 :goto_58

    :cond_ef
    const-string v0, ""

    goto/16 :goto_63

    :cond_f3
    const-string v0, ""

    goto/16 :goto_6e

    :cond_f7
    const-string v0, ""

    goto :goto_79

    :cond_fa
    const-string v0, ""

    goto :goto_84

    :cond_fd
    const-string v0, ""

    goto :goto_8f

    :cond_100
    const-string v0, ""

    goto :goto_9a

    :cond_103
    const-string v0, ""

    goto :goto_a5

    :cond_106
    const-string v0, ""

    goto :goto_b0

    :cond_109
    const-string v0, ""

    goto :goto_bb

    :cond_10c
    const-string v0, ""

    goto :goto_c6
.end method

.method private B()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "udid"

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appKey"

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_18
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "token"

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    :goto_23
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timestamp"

    invoke-direct {p0}, Lcom/unisound/b/b;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "signature"

    invoke-direct {p0}, Lcom/unisound/b/b;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_39
    const-string v0, ""

    goto :goto_d

    :cond_3c
    const-string v0, ""

    goto :goto_18

    :cond_3f
    const-string v0, ""

    goto :goto_23
.end method

.method private C()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    :goto_14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_1d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    :goto_2f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    :goto_38
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    :goto_41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    :goto_4a
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    :goto_53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    :goto_5c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    :goto_65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    if-eqz v0, :cond_df

    iget-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    :goto_6e
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    if-eqz v0, :cond_e2

    iget-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    :goto_77
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    :goto_80
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/unisound/b/b;->r:Ljava/lang/String;

    :goto_89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    :goto_92
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :goto_9b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    :goto_a4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    :goto_ad
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/unisound/b/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b5
    const-string v0, ""

    goto/16 :goto_b

    :cond_b9
    const-string v0, ""

    goto/16 :goto_14

    :cond_bd
    const-string v0, ""

    goto/16 :goto_1d

    :cond_c1
    const-string v0, ""

    goto/16 :goto_26

    :cond_c5
    const-string v0, ""

    goto/16 :goto_2f

    :cond_c9
    const-string v0, ""

    goto/16 :goto_38

    :cond_cd
    const-string v0, ""

    goto/16 :goto_41

    :cond_d1
    const-string v0, ""

    goto/16 :goto_4a

    :cond_d5
    const-string v0, ""

    goto/16 :goto_53

    :cond_d9
    const-string v0, ""

    goto :goto_5c

    :cond_dc
    const-string v0, ""

    goto :goto_65

    :cond_df
    const-string v0, ""

    goto :goto_6e

    :cond_e2
    const-string v0, ""

    goto :goto_77

    :cond_e5
    const-string v0, ""

    goto :goto_80

    :cond_e8
    const-string v0, ""

    goto :goto_89

    :cond_eb
    const-string v0, ""

    goto :goto_92

    :cond_ee
    const-string v0, ""

    goto :goto_9b

    :cond_f1
    const-string v0, ""

    goto :goto_a4

    :cond_f4
    const-string v0, ""

    goto :goto_ad
.end method

.method private D()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    :goto_b
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    :goto_14
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_1d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    :goto_26
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    :goto_2f
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/unisound/b/k;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const-string v0, ""

    goto :goto_b

    :cond_3a
    const-string v0, ""

    goto :goto_14

    :cond_3d
    const-string v0, ""

    goto :goto_1d

    :cond_40
    const-string v0, ""

    goto :goto_26

    :cond_43
    const-string v0, ""

    goto :goto_2f
.end method

.method private E()Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Lcom/unisound/b/b;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/unisound/b/k;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/unisound/b/k;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    goto :goto_1b
.end method

.method private F()J
    .registers 5

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    const-string v1, "systemResponese"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "timeDelay"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/unisound/b/b;Lcom/unisound/b/c;)Lcom/unisound/b/c;
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    return-object p1
.end method

.method private a(J)V
    .registers 6

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    const-string v1, "systemResponese"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timeDelay"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/unisound/b/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/unisound/b/b;->y()V

    return-void
.end method

.method static synthetic a(Lcom/unisound/b/b;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/unisound/b/b;->a(J)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sput-object p0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    :goto_8
    return-void

    :cond_9
    const-string v0, "ActivatroInterface setJsonString error!"

    invoke-static {v0}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method static synthetic b(Lcom/unisound/b/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/unisound/b/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/unisound/b/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/unisound/b/b;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/unisound/b/b;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/unisound/b/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/unisound/b/b;)Ljava/util/Map;
    .registers 2

    invoke-direct {p0}, Lcom/unisound/b/b;->B()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/unisound/b/b;)Lcom/unisound/b/a;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/unisound/b/h;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceSn"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string v1, "ActivatorInterface _deviceSn= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_17
    const-string v1, "appKey"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    const-string v1, "ActivatorInterface _appkey= null"

    invoke-static {v1}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    :goto_2a
    const-string v1, "appSecret"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12e

    const-string v1, "ActivatorInterface _secret= null"

    invoke-static {v1}, Lcom/unisound/b/i;->a(Ljava/lang/String;)V

    :goto_3d
    const-string v1, "appVersion"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    const-string v1, "ActivatorInterface _appVersion= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_50
    const-string v1, "packageName"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    const-string v1, "ActivatorInterface _packageName= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_63
    const-string v1, "imei"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    const-string v1, "ActivatorInterface _imei= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_76
    const-string v1, "macAddress"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19a

    const-string v1, "ActivatorInterface _macAddress= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_89
    const-string v1, "wifiSsid"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    const-string v1, "ActivatorInterface _wifiSsid= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_9c
    const-string v1, "telecomOperator"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    const-string v1, "ActivatorInterface _telecomOperator= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_af
    const-string v1, "memo"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1eb

    const-string v1, "ActivatorInterface _memo= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_c2
    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/unisound/b/h;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_206

    const-string v1, "ActivatorInterface _token= null"

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :goto_d5
    const-string v1, "debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/unisound/b/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {p0, v0}, Lcom/unisound/b/b;->a(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivatorInterface _debug= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    :cond_f7
    return-void

    :cond_f8
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->l(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _deviceSn= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_113
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _appkey= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_12e
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->d(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _secret= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_149
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->f(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _appVersion= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_50

    :cond_164
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->g(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _packageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_17f
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _imei= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_76

    :cond_19a
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->h(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _macAddress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_89

    :cond_1b5
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->i(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _wifiSsid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_9c

    :cond_1d0
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->j(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _telecomOperator= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_af

    :cond_1eb
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->k(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface _memo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_c2

    :cond_206
    invoke-virtual {p0, v1}, Lcom/unisound/b/b;->q(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivatorInterface __token= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/b/i;->c(Ljava/lang/String;)V

    goto/16 :goto_d5
.end method

.method static synthetic x()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    return-object v0
.end method

.method private y()V
    .registers 3

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/unisound/b/b;->g()V

    :cond_9
    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_12

    invoke-virtual {p0}, Lcom/unisound/b/b;->e()V

    :cond_12
    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/unisound/b/b;->i()V

    :cond_1b
    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_24

    invoke-virtual {p0}, Lcom/unisound/b/b;->k()V

    :cond_24
    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/unisound/b/b;->m()V

    :cond_2d
    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_36

    invoke-virtual {p0}, Lcom/unisound/b/b;->o()V

    :cond_36
    invoke-direct {p0}, Lcom/unisound/b/b;->z()V

    return-void
.end method

.method private z()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;

    :try_start_18
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->n:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->o:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->p:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->q:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->s:Ljava/lang/String;

    invoke-static {}, Lcom/unisound/a/a;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->t:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    const-string v0, "activate cant createDeviceInfo"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_3e
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    sget-object v1, Lcom/unisound/b/c;->a:Lcom/unisound/b/c;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    :goto_d
    return-void

    :cond_e
    sget-object v0, Lcom/unisound/b/c;->a:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    packed-switch p1, :pswitch_data_30

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    sget-object v0, Lcom/unisound/b/c;->b:Lcom/unisound/b/c;

    iput-object v0, p0, Lcom/unisound/b/b;->D:Lcom/unisound/b/c;

    goto :goto_d

    :pswitch_21
    sget-object v0, Lcom/unisound/b/b;->z:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unisound/b/b;->r(Ljava/lang/String;)V

    new-instance v0, Lcom/unisound/b/d;

    invoke-direct {v0, p0, p1}, Lcom/unisound/b/d;-><init>(Lcom/unisound/b/b;I)V

    invoke-virtual {v0}, Lcom/unisound/b/d;->start()V

    goto :goto_d

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method protected a(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/unisound/b/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    invoke-virtual {v0, p1}, Lcom/unisound/b/a;->a(Lcom/unisound/b/a/c;)V

    return-void
.end method

.method protected a(Z)V
    .registers 2

    sput-boolean p1, Lcom/unisound/b/i;->a:Z

    invoke-static {p1}, Lcom/unisound/a/a;->b(Z)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/unisound/b/b;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/v1/device/activate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rest/v1/token/refresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->y:Ljava/lang/String;

    return-void
.end method

.method protected e()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    iget-object v0, p0, Lcom/unisound/b/b;->B:Lcom/unisound/b/a;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/unisound/b/a;->sendEmptyMessage(I)Z

    const-string v0, "activate HttpResponse result is null"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->j:Ljava/lang/String;

    return-void
.end method

.method protected f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected g()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method protected h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    return-void
.end method

.method protected i()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    return-void
.end method

.method protected j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    return-void
.end method

.method protected k()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->k:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v0, "activate setMacAddress error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    return-void
.end method

.method protected l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/a/a;->b(Ljava/lang/String;)I

    return-void
.end method

.method protected m()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->l:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v0, "activate setWifiSsid error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    return-void
.end method

.method protected n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected n(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    return-void
.end method

.method protected o()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/unisound/b/b;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/a/a;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/b/b;->m:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string v0, "activate setTelecomOperator error"

    invoke-static {v0}, Lcom/unisound/b/i;->d(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected o(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    return-void
.end method

.method protected p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected p(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    return-void
.end method

.method protected q()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/unisound/b/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    return-void
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->w:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/b/b;->x:Ljava/lang/String;

    return-object v0
.end method
