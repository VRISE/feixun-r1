.class Lcom/unisound/vui/common/media/UniMediaPlayer$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/common/media/UniMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/media/UniMediaPlayer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/vui/common/media/UniMediaPlayer;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 5
    .param p1, "focusChange"    # I

    .prologue
    const-string v0, "UniMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange focusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, -0x1

    if-ne p1, v0, :cond_20

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    # getter for: Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$200(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    # getter for: Lcom/unisound/vui/common/media/UniMediaPlayer;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/unisound/vui/common/media/UniMediaPlayer;->access$100(Lcom/unisound/vui/common/media/UniMediaPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/unisound/vui/common/media/UniMediaPlayer$15;->this$0:Lcom/unisound/vui/common/media/UniMediaPlayer;

    invoke-virtual {v0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->stop()V

    goto :goto_20
.end method
