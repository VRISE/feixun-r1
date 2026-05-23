.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;
.super Lcom/android/internal/util/State;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntermediateState"
.end annotation


# instance fields
.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .registers 3
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 656
    new-instance v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState$1;

    invoke-direct {v0, p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState$1;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .prologue
    .line 664
    const-string v0, "SceneStateMachine"

    const-string v1, "intermediate state enter."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->mTimeoutRunnable:Ljava/lang/Runnable;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->INTERMEDIATE_STATE_TIMEOUT_MILLIS:J
    invoke-static {}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$7200()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 666
    return-void
.end method

.method public exit()V
    .registers 3

    .prologue
    .line 669
    const-string v0, "SceneStateMachine"

    const-string v1, "intermediate state exit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 686
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 701
    const-string v0, "SceneStateMachine"

    const-string v1, "IntermediateState SUPER processMessage dispatch msg to descendants."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    .line 704
    :goto_d
    return v0

    .line 696
    :pswitch_e
    const-string v0, "SceneStateMachine"

    const-string v1, "CMD during an intermediate state, defer them."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$7300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V

    .line 704
    const/4 v0, 0x1

    goto :goto_d

    .line 686
    :pswitch_data_1c
    .packed-switch 0xd
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method timeout()V
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$IntermediateState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->sendMessage(I)V

    .line 682
    return-void
.end method
