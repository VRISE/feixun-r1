.class Lcom/kaolafm/sdk/client/KLClientAPI$21;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->isConnectedWithRetry(Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;)V
    .registers 3

    .prologue
    .line 674
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    # getter for: Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;
    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 679
    :try_start_8
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    # getter for: Lcom/kaolafm/sdk/client/KLClientAPI;->mPlayerBinder:Lcom/kaolafm/sdk/client/IClientAPI;
    invoke-static {v1}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    # getter for: Lcom/kaolafm/sdk/client/KLClientAPI;->playStateListener:Lcom/kaolafm/sdk/client/PlayStateListener;
    invoke-static {v2}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$600(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/PlayStateListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kaolafm/sdk/client/IClientAPI;->setPlayListener(Lcom/kaolafm/sdk/client/PlayListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_17} :catch_22

    .line 686
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$21;->val$listener:Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;

    invoke-interface {v1}, Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;->onConnected()V

    .line 687
    return-void

    .line 680
    :catch_1d
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17

    .line 682
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_17
.end method
