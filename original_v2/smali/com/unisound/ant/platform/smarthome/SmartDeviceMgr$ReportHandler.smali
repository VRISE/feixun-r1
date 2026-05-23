.class public Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;
.super Landroid/os/Handler;
.source "SmartDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReportHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;


# direct methods
.method public constructor <init>(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;->this$0:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "status":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_16

    .line 116
    :goto_6
    return-void

    .line 109
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "status":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    check-cast v0, Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;

    .line 110
    .restart local v0    # "status":Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;
    iget-object v1, p0, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr$ReportHandler;->this$0:Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;

    const-string v2, "settingOver"

    const-string v3, "smartDeviceStatusSync"

    # invokes: Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->updateExecuteStatus(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V
    invoke-static {v1, v2, v3, v0}, Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;->access$000(Lcom/unisound/ant/platform/smarthome/SmartDeviceMgr;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/platform/smarthome/bean/SmartDeviceStatus;)V

    goto :goto_6

    .line 107
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
