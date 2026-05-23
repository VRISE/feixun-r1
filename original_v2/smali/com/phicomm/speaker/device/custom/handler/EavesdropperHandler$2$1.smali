.class Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2$1;
.super Ljava/lang/Object;
.source "EavesdropperHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2$1;->this$1:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/engine/PlaybackStateMonitor;->setTTSPlaying(Z)V

    .line 182
    invoke-static {}, Lcom/phicomm/speaker/device/custom/persona/PersonaManager;->recordInteraction()V

    .line 183
    return-void
.end method
