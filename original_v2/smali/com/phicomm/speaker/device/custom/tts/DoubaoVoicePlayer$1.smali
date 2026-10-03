.class Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;
.super Ljava/lang/Object;
.source "DoubaoVoicePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;->play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audio:[B

.field final synthetic val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$format:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V
    .registers 5

    .prologue
    .line 50
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$audio:[B

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$format:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$audio:[B

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$format:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$1;->val$cb:Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer;->play(Landroid/content/Context;[BLjava/lang/String;Lcom/phicomm/speaker/device/custom/tts/DoubaoVoicePlayer$PlayCallback;)V

    .line 54
    return-void
.end method
