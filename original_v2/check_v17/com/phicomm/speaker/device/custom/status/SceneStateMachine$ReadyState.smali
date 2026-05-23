.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    const/4 v1, 0x0

    # setter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mCurrentScene:I
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$002(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;I)I

    .line 109
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->enter()V

    .line 110
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 115
    const-string v0, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READY process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    :pswitch_26
    move v0, v1

    .line 140
    :goto_27
    return v0

    .line 119
    :pswitch_28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringDossState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringDossState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    .line 140
    :goto_3e
    const/4 v0, 0x1

    goto :goto_27

    .line 124
    :pswitch_40
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 125
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3e

    .line 128
    :pswitch_57
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 129
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3e

    .line 133
    :pswitch_6e
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 134
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ReadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3e

    .line 117
    nop

    :pswitch_data_86
    .packed-switch 0xd
        :pswitch_28
        :pswitch_26
        :pswitch_57
        :pswitch_26
        :pswitch_6e
        :pswitch_26
        :pswitch_40
    .end packed-switch
.end method
