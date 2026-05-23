.class Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;
.super Lcom/android/internal/util/State;
.source "SceneStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SteadyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    .prologue
    .line 695
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 696
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mStatusChangedListener:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;
    invoke-static {v0}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$7400(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$SteadyState;->this$0:Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;

    # getter for: Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->mCurrentScene:I
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;->access$000(Lcom/phicomm/speaker/device/custom/status/SceneStateMachine;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/phicomm/speaker/device/custom/status/SceneStateMachine$StatusChangedListener;->onStateChanged(I)V

    .line 701
    return-void
.end method
