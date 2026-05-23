.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;
.super Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DossState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .line 486
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;-><init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V

    .line 487
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    const/4 v1, 0x5

    # setter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mCurrentScene:I
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$002(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;I)I

    .line 492
    invoke-super {p0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->enter()V

    .line 493
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 497
    const-string v0, "SceneStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DossState process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_88

    :pswitch_27
    move v0, v1

    .line 520
    :goto_28
    return v0

    .line 500
    :pswitch_29
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 501
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    :goto_3f
    move v0, v2

    .line 520
    goto :goto_28

    .line 504
    :pswitch_41
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    invoke-virtual {v0, v2}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 505
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5500(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3f

    .line 512
    :pswitch_58
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 513
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5600(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3f

    .line 516
    :pswitch_70
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$ExitingIntermediateState;->setDestState(I)V

    .line 517
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$DossState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mExitingDossState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5300(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$5700(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_3f

    .line 498
    :pswitch_data_88
    .packed-switch 0xe
        :pswitch_29
        :pswitch_41
        :pswitch_27
        :pswitch_58
        :pswitch_27
        :pswitch_70
    .end packed-switch
.end method
