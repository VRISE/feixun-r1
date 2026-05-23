.class Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;
.super Ljava/lang/Object;
.source "EavesdropperASRRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->recognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

.field final synthetic val$audioBuffer:[B

.field final synthetic val$listener:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;[BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->val$audioBuffer:[B

    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->val$listener:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->this$0:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->val$audioBuffer:[B

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$1;->val$listener:Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;

    # invokes: Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->doRecognize([BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V
    invoke-static {v0, v1, v2}, Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;->access$000(Lcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer;[BLcom/phicomm/speaker/device/custom/engine/EavesdropperASRRecognizer$Listener;)V

    .line 74
    return-void
.end method
