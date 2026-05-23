.class Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;
.super Ljava/lang/Object;
.source "EavesdropperHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->eventReceived(Lcom/phicomm/speaker/device/custom/event/EavesdropperTriggerEvent;Lcom/unisound/vui/engine/ANTHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

.field final synthetic val$config:Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

.field final synthetic val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

.field final synthetic val$delay:J

.field final synthetic val$userSpeech:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;JLcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
    .registers 7
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    iput-wide p2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$delay:J

    iput-object p4, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iput-object p5, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$userSpeech:Ljava/lang/String;

    iput-object p6, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$config:Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$delay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 99
    :try_start_8
    iget-wide v0, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_19

    .line 101
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->this$0:Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$userSpeech:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler$1;->val$config:Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;

    # invokes: Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->generateAndPlayEavesdropResponse(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V
    invoke-static {v0, v1, v2, v3}, Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;->access$000(Lcom/phicomm/speaker/device/custom/handler/EavesdropperHandler;Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;Lcom/phicomm/speaker/device/custom/persona/PersonaConfig;)V

    .line 102
    return-void

    .line 99
    :catch_19
    move-exception v0

    goto :goto_d
.end method
