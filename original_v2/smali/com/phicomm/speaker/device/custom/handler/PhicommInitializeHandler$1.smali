.class Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;
.super Ljava/lang/Object;
.source "PhicommInitializeHandler.java"

# interfaces
.implements Lcom/unisound/vui/common/media/IMediaPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->playInitDoneTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerState(ILjava/lang/String;)V
    .registers 6
    .param p1, "state"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x4

    if-ne p1, v0, :cond_48

    .line 85
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    const/4 v1, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->isFristBoot:Z
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$002(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;Z)Z

    .line 86
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 87
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_net_is_weak:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 91
    :goto_2a
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->removeIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    .line 95
    :cond_31
    :goto_31
    return-void

    .line 89
    :cond_32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$200(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;->access$100(Lcom/phicomm/speaker/device/custom/handler/PhicommInitializeHandler;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_bootloader_welcome:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    goto :goto_2a

    .line 92
    :cond_48
    const/4 v0, 0x3

    if-ne p1, v0, :cond_31

    .line 93
    invoke-static {}, Lcom/unisound/vui/common/media/UniMediaPlayer;->getInstance()Lcom/unisound/vui/common/media/UniMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/unisound/vui/common/media/UniMediaPlayer;->removeIMediaPlayerStateListener(Lcom/unisound/vui/common/media/IMediaPlayerStateListener;)V

    goto :goto_31
.end method
