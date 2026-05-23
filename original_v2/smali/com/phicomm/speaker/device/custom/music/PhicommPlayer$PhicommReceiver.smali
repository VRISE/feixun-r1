.class Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"

# interfaces
.implements Landroid/os/MessageDispatchManager$MessageReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhicommReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;


# direct methods
.method private constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V
    .registers 2

    .prologue
    .line 628
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
    .param p2, "x1"    # Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$1;

    .prologue
    .line 627
    invoke-direct {p0, p1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;-><init>(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    return-void
.end method


# virtual methods
.method public notifyMsg(IIILjava/lang/Object;)V
    .registers 11
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 633
    const-string v2, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p4

    check-cast v1, Landroid/os/ParcelableUtil;

    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/16 v1, 0x8

    if-eq p2, v1, :cond_4f

    const/16 v1, 0x9

    if-eq p2, v1, :cond_4f

    const/16 v1, 0xd

    if-eq p2, v1, :cond_4f

    const/16 v1, 0x10

    if-eq p2, v1, :cond_4f

    const/16 v1, 0x13

    if-eq p2, v1, :cond_4f

    const/16 v1, 0xe

    if-eq p2, v1, :cond_4f

    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->checkResponseSuccess(Ljava/lang/Object;)Z
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_225

    .line 635
    :cond_4f
    packed-switch p2, :pswitch_data_244

    .line 673
    :pswitch_52
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: default receive"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :goto_70
    return-void

    .line 637
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_71
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u6b4c\u66f2\u7684\u56de\u8c03\u4e86, currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 641
    :pswitch_aa
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v2, 0x2

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 642
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$400(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 643
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u6682\u505c\u64ad\u653e\u7684\u6d88\u606f\u4e86, currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    .line 646
    :pswitch_d2
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I
    invoke-static {v1, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 647
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I
    invoke-static {v1, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$502(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 648
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 649
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$400(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 650
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u6062\u590d\u64ad\u653e\u7684\u6d88\u606f\u4e86, currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 653
    :pswitch_104
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v2, 0x1

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 654
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const-string v2, "none"

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mDevicePlayingType:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$702(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # getter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mItemList:Ljava/util/List;
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$800(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 656
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$400(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 657
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    .line 658
    const-string v1, "PhicommPlayer"

    const-string v2, "notifyMsg: \u6211\u6536\u5230\u505c\u6b62\u64ad\u653e\u7684\u6d88\u606f\u4e86"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 661
    :pswitch_12d
    const-string v1, "PhicommPlayer"

    const-string v2, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u4e0a\u4e00\u9996\u7684\u6d88\u606f\u4e86"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 664
    :pswitch_136
    const-string v1, "PhicommPlayer"

    const-string v2, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u4e0b\u4e00\u9996\u7684\u6d88\u606f\u4e86"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 676
    :pswitch_13f
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$900(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_70

    .line 679
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_148
    const-string v1, "PhicommPlayer"

    const-string v2, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u65b0\u6b4c\u7684\u6d88\u606f\u4e86"

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I
    invoke-static {v1, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 681
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->errorTimes:I
    invoke-static {v1, v5}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$502(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    .line 682
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentItem(Landroid/os/ParcelableUtil;)V
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$900(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    .line 683
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateDevicePlayingType()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$600(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    .line 684
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->onStateChanged()V
    invoke-static {v1}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$400(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;)V

    goto/16 :goto_70

    .line 687
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_16c
    const-string v2, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: \u6211\u6536\u5230\u64ad\u653e\u6307\u5b9a\u6b4c\u66f2\u7684\u6d88\u606f\u4e86"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    # setter for: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->playState:I
    invoke-static {v1, v4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$302(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)I

    goto/16 :goto_70

    .line 691
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_197
    const-string v2, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: received current play mode message"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p4

    check-cast v1, Landroid/os/ParcelableUtil;

    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->updateCurrentMode(Landroid/os/ParcelableUtil;)V
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1000(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_70

    .line 695
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_1bf
    const-string v2, "PhicommPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyMsg: receive play error message"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p4

    check-cast v1, Landroid/os/ParcelableUtil;

    invoke-virtual {v1}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->handlePlayError(Landroid/os/ParcelableUtil;)V
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1100(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_70

    .line 699
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_1e7
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->synchronizePlayerInfo(Landroid/os/ParcelableUtil;)V
    invoke-static {v1, p4}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1200(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;Landroid/os/ParcelableUtil;)V

    goto/16 :goto_70

    .line 702
    .restart local p4    # "obj":Ljava/lang/Object;
    :pswitch_1f0
    check-cast p4, Landroid/os/ParcelableUtil;

    .end local p4    # "obj":Ljava/lang/Object;
    invoke-virtual {p4}, Landroid/os/ParcelableUtil;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "requestPageIndex"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 703
    .local v0, "page":Ljava/lang/Integer;
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received msg(query item list), page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->queryPlayItem(I)V
    invoke-static {v1, v2}, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->access$1300(Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;I)V

    goto/16 :goto_70

    .line 708
    .end local v0    # "page":Ljava/lang/Integer;
    .restart local p4    # "obj":Ljava/lang/Object;
    :cond_225
    const-string v1, "PhicommPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$PhicommReceiver;->this$0:Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;

    iget-object v3, v3, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;->mCurrentItem:Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 635
    nop

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_71
        :pswitch_aa
        :pswitch_d2
        :pswitch_104
        :pswitch_12d
        :pswitch_136
        :pswitch_52
        :pswitch_13f
        :pswitch_148
        :pswitch_52
        :pswitch_16c
        :pswitch_52
        :pswitch_197
        :pswitch_1bf
        :pswitch_52
        :pswitch_1e7
        :pswitch_52
        :pswitch_52
        :pswitch_1f0
    .end packed-switch
.end method
