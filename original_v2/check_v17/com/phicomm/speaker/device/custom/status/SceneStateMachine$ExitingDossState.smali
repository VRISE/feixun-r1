.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExitingDossState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 551
    const-string v1, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExitingDossState process "

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

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    invoke-super {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 583
    :goto_27
    return v0

    .line 556
    :cond_28
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_86

    .line 581
    :pswitch_2d
    const/4 v0, 0x0

    goto :goto_27

    .line 558
    :pswitch_2f
    iget v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->destState:I

    packed-switch v1, :pswitch_data_96

    goto :goto_27

    .line 560
    :pswitch_35
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5800(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 563
    :pswitch_41
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5900(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 566
    :pswitch_4d
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 569
    :pswitch_59
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6100(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 576
    :pswitch_65
    const-string v1, "SceneStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybe useful to next state, defer msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6200(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Landroid/os/Message;)V

    goto :goto_27

    .line 556
    nop

    :pswitch_data_86
    .packed-switch 0x66
        :pswitch_2f
        :pswitch_65
        :pswitch_2d
        :pswitch_65
        :pswitch_2d
        :pswitch_65
    .end packed-switch

    .line 558
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_35
        :pswitch_4d
        :pswitch_59
        :pswitch_41
    .end packed-switch
.end method

.method timeout()V
    .registers 5

    .prologue
    const/4 v3, 0x5

    .line 587
    const-string v0, "SceneStateMachine"

    const-string v1, "exiting DOSS timeout, if we\'re transitioning to ready we recover to DOSS, otherwise we will defer this to the next entering state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v0, "SceneStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeout destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->destState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->destState:I

    packed-switch v0, :pswitch_data_7c

    .line 607
    :goto_27
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->timeout()V

    .line 608
    return-void

    .line 592
    :pswitch_2b
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mReadyState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$1300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 595
    :pswitch_37
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 596
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringBluetoothState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 599
    :pswitch_4e
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 600
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringMusicState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 603
    :pswitch_65
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;

    invoke-virtual {v0, v3}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$EnteringIntermediateState;->setRecoveryState(I)V

    .line 604
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingDossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mEnteringNetConfigState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$6600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_27

    .line 590
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_4e
        :pswitch_65
        :pswitch_37
    .end packed-switch
.end method
