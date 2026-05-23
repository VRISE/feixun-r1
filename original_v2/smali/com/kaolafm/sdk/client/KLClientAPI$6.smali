.class Lcom/kaolafm/sdk/client/KLClientAPI$6;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->playNext(Lcom/kaolafm/sdk/client/PlayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$playResult:Lcom/kaolafm/sdk/client/PlayResult;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/PlayResult;)V
    .registers 3

    .prologue
    .line 233
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 4

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    # getter for: Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;
    invoke-static {v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/IClientAPI;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 238
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    # getter for: Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;
    invoke-static {v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v2

    invoke-interface {v2}, Lcom/kaolafm/sdk/client/IClientAPI;->playNext()V

    .line 239
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    if-eqz v2, :cond_1e

    .line 240
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-virtual {v2}, Lcom/kaolafm/sdk/client/PlayResult;->onSuccuss()V

    .line 252
    :cond_1e
    :goto_1e
    return-void

    .line 243
    :cond_1f
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    if-eqz v2, :cond_1e

    .line 244
    new-instance v1, Lcom/kaolafm/sdk/client/ErrorInfo;

    const/16 v2, 0x194

    invoke-direct {v1, v2}, Lcom/kaolafm/sdk/client/ErrorInfo;-><init>(I)V

    .line 245
    .local v1, "info":Lcom/kaolafm/sdk/client/ErrorInfo;
    const-string v2, "no next"

    iput-object v2, v1, Lcom/kaolafm/sdk/client/ErrorInfo;->info:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$6;->val$playResult:Lcom/kaolafm/sdk/client/PlayResult;

    invoke-virtual {v2, v1}, Lcom/kaolafm/sdk/client/PlayResult;->onFailure(Lcom/kaolafm/sdk/client/ErrorInfo;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_1e

    .line 249
    .end local v1    # "info":Lcom/kaolafm/sdk/client/ErrorInfo;
    :catch_34
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e
.end method
