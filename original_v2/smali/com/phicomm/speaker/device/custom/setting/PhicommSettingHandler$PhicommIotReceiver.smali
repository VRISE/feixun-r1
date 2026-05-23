.class public Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;
.super Ljava/lang/Object;
.source "PhicommSettingHandler.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhicommIotReceiver"
.end annotation


# instance fields
.field private mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

.field private mNLU:Lnluparser/scheme/NLU;

.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;)V
    .registers 3
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;
    .param p2, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mNLU:Lnluparser/scheme/NLU;

    .line 269
    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "domain"    # I
    .param p3, "subdomain"    # I
    .param p4, "data"    # Ljava/lang/Object;

    .prologue
    .line 277
    const-string v2, "PhicommSettingHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhicommIotReceiver recevied "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$000(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    # invokes: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->unregistPhicommMessageReceiver(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V
    invoke-static {v2, p0}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$100(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;)V

    .line 281
    :try_start_28
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "data":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-class v3, Lcom/phicomm/speaker/device/data/PhicommIotResponse;

    invoke-static {v2, v3}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phicomm/speaker/device/data/PhicommIotResponse;

    invoke-virtual {v2}, Lcom/phicomm/speaker/device/data/PhicommIotResponse;->getText()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    # getter for: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->mANTEngine:Lcom/unisound/vui/engine/ANTEngine;
    invoke-static {v2}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$200(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;)Lcom/unisound/vui/engine/ANTEngine;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/unisound/vui/engine/ANTEngine;->playTTS(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->this$0:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mNLU:Lnluparser/scheme/NLU;

    # invokes: Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;->access$300(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler;Lnluparser/scheme/NLU;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4c} :catch_4d

    .line 287
    .end local v1    # "text":Ljava/lang/String;
    :goto_4c
    return-void

    .line 284
    :catch_4d
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhicommSettingHandler"

    const-string v3, "received iot message from phicomm, but an error has occurred when processing : "

    invoke-static {v2, v3, v0}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method public setIoTRunnable(Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;)V
    .registers 2
    .param p1, "ioTRunnable"    # Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$PhicommIotReceiver;->mIoTRunnable:Lcom/phicomm/speaker/device/custom/setting/PhicommSettingHandler$IoTRunnable;

    .line 273
    return-void
.end method
