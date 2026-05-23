.class public Lcom/unisound/vui/util/WeChatDbUtils;
.super Ljava/lang/Object;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static weChatDbCallBack:Lcom/unisound/vui/data/f/a;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callbackMessage(Lcom/unisound/vui/data/entity/a/d;)V
    .registers 2
    .param p0, "weChatMessage"    # Lcom/unisound/vui/data/entity/a/d;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->weChatDbCallBack:Lcom/unisound/vui/data/f/a;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->weChatDbCallBack:Lcom/unisound/vui/data/f/a;

    invoke-interface {v0, p0}, Lcom/unisound/vui/data/f/a;->a(Lcom/unisound/vui/data/entity/a/d;)V

    :cond_9
    return-void
.end method

.method public static clearAll()V
    .registers 1

    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/vui/data/a/a;->c()V

    return-void
.end method

.method public static getAllWeChatMessageByUser(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .param p0, "userName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/data/entity/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/data/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_11
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/WeChatDbUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static saveWechatMessage(Lcom/unisound/vui/data/entity/a/d;)V
    .registers 2
    .param p0, "weChatMessage"    # Lcom/unisound/vui/data/entity/a/d;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/data/a/a;->a(Lcom/unisound/vui/data/entity/a/d;)V

    invoke-static {p0}, Lcom/unisound/vui/util/WeChatDbUtils;->callbackMessage(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method public static setWeChatDbCallBack(Lcom/unisound/vui/data/f/a;)V
    .registers 1
    .param p0, "weChatDbCallBack"    # Lcom/unisound/vui/data/f/a;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/WeChatDbUtils;->weChatDbCallBack:Lcom/unisound/vui/data/f/a;

    return-void
.end method

.method public static upWechatMessage(Lcom/unisound/vui/data/entity/a/d;)V
    .registers 2
    .param p0, "weChatMessage"    # Lcom/unisound/vui/data/entity/a/d;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/WeChatDbUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/data/a/a;->a(Landroid/content/Context;)Lcom/unisound/vui/data/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/data/a/a;->b(Lcom/unisound/vui/data/entity/a/d;)V

    invoke-static {p0}, Lcom/unisound/vui/util/WeChatDbUtils;->callbackMessage(Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method
