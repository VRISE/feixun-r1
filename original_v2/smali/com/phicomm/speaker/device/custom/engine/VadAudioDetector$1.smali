.class Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$1;
.super Ljava/lang/Object;
.source "VadAudioDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;

    # invokes: Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->recordingLoop()V
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;->access$000(Lcom/phicomm/speaker/device/custom/engine/VadAudioDetector;)V

    .line 133
    return-void
.end method
