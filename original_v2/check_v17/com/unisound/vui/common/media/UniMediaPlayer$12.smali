.class Lcom/unisound/vui/common/media/UniMediaPlayer$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/common/media/UniMediaPlayer;->playUrl(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/vui/common/media/IMediaPlayerStateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

.field final synthetic val$isChatSession:Z


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/media/UniMediaPlayer;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    iput-boolean p2, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->val$isChatSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-string v0, "UniMediaPlayer"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->val$isChatSession:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/4 v1, 0x5

    # invokes: Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V
    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    # getter for: Lcom/unisound/vui/common/media/UniMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$300(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$12;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    const/4 v1, 0x1

    # invokes: Lcom/unisound/vui/common/media/UniMediaPlayer;->callBackPlayerState(I)V
    invoke-static {v0, v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$000(Lcom/unisound/vui/common/media/UniMediaPlayer;I)V

    goto :goto_11
.end method
