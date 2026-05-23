.class public Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;
.super Ljava/lang/Object;
.source "PhicommSettingHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IoTRunnable"
.end annotation


# instance fields
.field private mIotReceiver:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

.field private mNLU:Lnluparser/scheme/NLU;

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;Lnluparser/scheme/NLU;)V
    .registers 4
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p2, "iotReceiver"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
    .param p3, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->mIotReceiver:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    .line 297
    iput-object p3, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->mNLU:Lnluparser/scheme/NLU;

    .line 298
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 301
    const-string v1, "PhicommSettingHandler"

    const-string v2, "recevied phicomm message timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->mIotReceiver:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;

    # invokes: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$100(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V

    .line 303
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$400(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/phicomm/speaker/device/R$string;->tts_smart_home_timeout:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "ttsData":Ljava/lang/String;
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$200(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;->mNLU:Lnluparser/scheme/NLU;

    # invokes: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$300(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;Ljava/lang/String;)V

    .line 306
    return-void
.end method
