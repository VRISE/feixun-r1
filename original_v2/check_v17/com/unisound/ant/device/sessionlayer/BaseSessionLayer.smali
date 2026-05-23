.class public final Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;
.super Ljava/lang/Object;
.source "BaseSessionLayer.java"

# interfaces
.implements Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSessionLayer"

.field private static actionDialogs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unisound/ant/device/sessionlayer/DialogProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

.field private upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

.field private updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "updateCallBack"    # Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/unisound/ant/device/message/UpDownMessageManager;

    invoke-direct {v0, p1}, Lcom/unisound/ant/device/message/UpDownMessageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    .line 37
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/message/UpDownMessageManager;->setMessageExcuteListener(Lcom/unisound/ant/device/message/UpDownMessageManager$MessageExcuteListener;)V

    .line 38
    iput-object p2, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    .line 39
    return-void
.end method

.method private dispatchControlSessionMsg(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "dstServiceProfile"    # Lcom/unisound/ant/device/profile/DstServiceProfile;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    if-eqz v0, :cond_6

    if-nez p2, :cond_e

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "upDownMessageManager or dstServiceProfile is null and please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->dispatcherServiceMessage(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 136
    return-void
.end method

.method private dispatchSyncServiceStatusReq(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    if-eqz v0, :cond_6

    if-nez p1, :cond_e

    .line 123
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "upDownMessageManager or serviceName is null and please check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_e
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    invoke-virtual {v0, p1}, Lcom/unisound/ant/device/message/UpDownMessageManager;->dispatcherSynServiceStatusReq(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private receiveCloudResponseSessionMsg(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 140
    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    if-nez v0, :cond_7

    .line 149
    :cond_6
    :goto_6
    return-void

    .line 143
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    const-string p1, "deviceManagement"

    .line 146
    :cond_f
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->upDownMessageManager:Lcom/unisound/ant/device/message/UpDownMessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/ant/device/message/UpDownMessageManager;->dispatcherCloudResponse(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 147
    const-string v0, "BaseSessionLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>receiveCloudResponseSessionMsg actionResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {p2}, Lcom/unisound/ant/device/service/ActionResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method public clearDialogStatus()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 65
    return-void
.end method

.method public filterSessionContent(Ljava/lang/String;)V
    .registers 12
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v7, "BaseSessionLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--->>dispatcherMessage message:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 118
    :cond_1e
    :goto_1e
    return-void

    .line 76
    :cond_1f
    new-instance v7, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer$1;

    invoke-direct {v7, p0}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer$1;-><init>(Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;)V

    .line 77
    invoke-virtual {v7}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 79
    .local v1, "classType":Ljava/lang/reflect/Type;
    invoke-static {p1, v1}, Lcom/unisound/ant/device/service/ServiceProtocolUtil;->getResponseHeader(Ljava/lang/String;Ljava/lang/reflect/Type;)Lcom/unisound/ant/device/service/CloudResponse;

    move-result-object v2

    .line 80
    .local v2, "cloudResponse":Lcom/unisound/ant/device/service/CloudResponse;, "Lcom/unisound/ant/device/service/CloudResponse<Lcom/unisound/ant/device/bean/SessionData<Lcom/google/gson/JsonObject;>;>;"
    invoke-virtual {v2}, Lcom/unisound/ant/device/service/CloudResponse;->getMessageType()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "messageType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/unisound/ant/device/service/CloudResponse;->getMessageBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/unisound/ant/device/bean/SessionData;

    .line 82
    .local v6, "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    if-nez v6, :cond_40

    .line 83
    const-string v7, "BaseSessionLayer"

    const-string v8, "--parse sessionData is null and this session is not effective"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 86
    :cond_40
    const-string v7, "intentAction"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_50

    const-string v7, "synInfo"

    .line 87
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 91
    :cond_50
    :try_start_50
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v3

    .line 93
    .local v3, "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    if-nez v3, :cond_79

    .line 94
    const-string v7, "BaseSessionLayer"

    const-string v8, "dialog is null"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_69} :catch_b4

    .line 107
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    :cond_69
    :goto_69
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDstService()Lcom/unisound/ant/device/profile/DstServiceProfile;

    move-result-object v8

    .line 107
    invoke-direct {p0, v7, v8}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dispatchControlSessionMsg(Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    goto :goto_1e

    .line 96
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    :cond_79
    :try_start_79
    invoke-virtual {p0, v0, v3}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->saveDialogStatus(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V

    .line 97
    const-string v7, "BaseSessionLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sessionDialog save action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";actionResponseId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    invoke-virtual {v3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getSendToCloudResponse()Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    move-result-object v9

    invoke-virtual {v9}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v7, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    if-eqz v7, :cond_69

    .line 100
    iget-object v7, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    invoke-virtual {v3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getSceneFlag()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;->onSessionToSceneControl(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_b3} :catch_b4

    goto :goto_69

    .line 103
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    :catch_b4
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "BaseSessionLayer"

    const-string v8, "--->>get action dialog exception"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    .line 109
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_bd
    const-string v7, "updateAck"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cd

    const-string v7, "uploadPDAck"

    .line 110
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 112
    :cond_cd
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getActionResponse()Lcom/unisound/ant/device/service/ActionResponse;

    move-result-object v8

    .line 112
    invoke-direct {p0, v7, v8}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->receiveCloudResponseSessionMsg(Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V

    goto/16 :goto_1e

    .line 114
    :cond_de
    const-string v7, "startSyn"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 115
    const-string v7, "BaseSessionLayer"

    const-string v8, "cloud command start syn info"

    invoke-static {v7, v8}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v6}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getDstService()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dispatchSyncServiceStatusReq(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method public getDialogStatus(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    iput-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 54
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    if-nez v0, :cond_15

    .line 55
    new-instance v0, Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    invoke-direct {v0}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;-><init>()V

    iput-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 57
    :cond_15
    iget-object v0, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    return-object v0
.end method

.method public onExcuteResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/profile/DstServiceProfile;)V
    .registers 12
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "actionResponseId"    # Ljava/lang/String;
    .param p4, "dstServiceProfile"    # Lcom/unisound/ant/device/profile/DstServiceProfile;

    .prologue
    .line 160
    new-instance v1, Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    invoke-direct {v1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;-><init>()V

    .line 161
    .local v1, "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v4

    if-eqz v4, :cond_81

    .line 162
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->getDialogStatus(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v1

    .line 167
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {v1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getSendToCloudResponse()Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->getActionResponseId()Ljava/lang/String;

    move-result-object p3

    .line 168
    new-instance v4, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v4, p3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setSendToTerminalResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V

    .line 169
    new-instance v4, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v4, p3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setSendToCloudResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2f} :catch_94

    .line 175
    :goto_2f
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setDstState(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getDstServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setDstService(Ljava/lang/String;)V

    .line 177
    new-instance v3, Lcom/unisound/ant/device/bean/SessionData;

    invoke-direct {v3}, Lcom/unisound/ant/device/bean/SessionData;-><init>()V

    .line 178
    .local v3, "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    invoke-virtual {v3, v1}, Lcom/unisound/ant/device/bean/SessionData;->setDialog(Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V

    .line 179
    invoke-virtual {v3, p4}, Lcom/unisound/ant/device/bean/SessionData;->setDstService(Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 184
    :try_start_44
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getUniCommand()Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getOperation()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/unisound/ant/device/bean/SessionData;->getDialog()Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->saveDialogStatus(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V

    .line 186
    const-string v4, "BaseSessionLayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sessionDialog onExcuteResult save action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";actionResponseId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_75} :catch_ad

    .line 191
    .end local v0    # "action":Ljava/lang/String;
    :goto_75
    iget-object v4, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    if-nez v4, :cond_b6

    .line 192
    const-string v4, "BaseSessionLayer"

    const-string v5, "--->>sessionUpdataCallBack may be null"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_80
    return-void

    .line 163
    .end local v3    # "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    :cond_81
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/ant/device/bean/Accelerate;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 164
    invoke-virtual {p4}, Lcom/unisound/ant/device/profile/DstServiceProfile;->getAccelerate()Lcom/unisound/ant/device/bean/Accelerate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unisound/ant/device/bean/Accelerate;->getValuse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->getDialogStatus(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v1

    goto :goto_17

    .line 170
    :catch_94
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "BaseSessionLayer"

    const-string v5, "get actionResponseId has exception"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v4, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v4, p3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setSendToTerminalResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V

    .line 173
    new-instance v4, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    invoke-direct {v4, p3}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setSendToCloudResponse(Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;)V

    goto :goto_2f

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    :catch_ad
    move-exception v2

    .line 189
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "BaseSessionLayer"

    const-string v5, "--->>get action dialog exception"

    invoke-static {v4, v5}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b6
    iget-object v4, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    invoke-interface {v4, p2, v3}, Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;->onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/ant/device/bean/SessionData;)V

    goto :goto_80
.end method

.method public onReportResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/ant/device/service/ActionResponse;)V
    .registers 13
    .param p1, "dialogState"    # Ljava/lang/String;
    .param p2, "messageType"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "actionResponse"    # Lcom/unisound/ant/device/service/ActionResponse;

    .prologue
    .line 204
    invoke-virtual {p0, p3}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->getDialogStatus(Ljava/lang/String;)Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    move-result-object v1

    .line 205
    .local v1, "dialog":Lcom/unisound/ant/device/sessionlayer/DialogProfile;
    invoke-virtual {v1, p1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->setDstState(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "actionResponseId":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v1}, Lcom/unisound/ant/device/sessionlayer/DialogProfile;->getSendToCloudResponse()Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisound/ant/device/sessionlayer/DialogProfile$TerminalResponse;->getActionResponseId()Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_16} :catch_60

    move-result-object v0

    .line 212
    :goto_17
    const-string v5, "BaseSessionLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionDialog report action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";actionResponseId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p4, v0}, Lcom/unisound/ant/device/service/ActionResponse;->setActionResponseId(Ljava/lang/String;)V

    .line 215
    new-instance v4, Lcom/unisound/ant/device/bean/SessionData;

    invoke-direct {v4}, Lcom/unisound/ant/device/bean/SessionData;-><init>()V

    .line 216
    .local v4, "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    invoke-virtual {v4, v1}, Lcom/unisound/ant/device/bean/SessionData;->setDialog(Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V

    .line 217
    new-instance v2, Lcom/unisound/ant/device/profile/DstServiceProfile;

    invoke-direct {v2}, Lcom/unisound/ant/device/profile/DstServiceProfile;-><init>()V

    .line 218
    .local v2, "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    const-string v5, "settingOver"

    invoke-virtual {v2, v5}, Lcom/unisound/ant/device/profile/DstServiceProfile;->setDstState(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v4, v2}, Lcom/unisound/ant/device/bean/SessionData;->setDstService(Lcom/unisound/ant/device/profile/DstServiceProfile;)V

    .line 220
    invoke-virtual {v4, p4}, Lcom/unisound/ant/device/bean/SessionData;->setActionResponse(Lcom/unisound/ant/device/service/ActionResponse;)V

    .line 221
    iget-object v5, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    if-nez v5, :cond_69

    .line 222
    const-string v5, "BaseSessionLayer"

    const-string v6, "--->>sessionUpdataCallBack may be null"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_5f
    return-void

    .line 209
    .end local v2    # "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    .end local v4    # "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    :catch_60
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BaseSessionLayer"

    const-string v6, "get actionResponseId has exception"

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 225
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dstServiceProfile":Lcom/unisound/ant/device/profile/DstServiceProfile;
    .restart local v4    # "sessionData":Lcom/unisound/ant/device/bean/SessionData;
    :cond_69
    iget-object v5, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->updateCallBack:Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;

    invoke-interface {v5, p2, v4}, Lcom/unisound/ant/device/sessionlayer/SessionUpdateCallBack;->onSessionDataUpdate(Ljava/lang/String;Lcom/unisound/ant/device/bean/SessionData;)V

    .line 226
    invoke-virtual {p0}, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->clearDialogStatus()V

    goto :goto_5f
.end method

.method public saveDialogStatus(Ljava/lang/String;Lcom/unisound/ant/device/sessionlayer/DialogProfile;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "dialogProfile"    # Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .prologue
    .line 45
    sget-object v0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->actionDialogs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/unisound/ant/device/sessionlayer/BaseSessionLayer;->dialogProfile:Lcom/unisound/ant/device/sessionlayer/DialogProfile;

    .line 47
    return-void
.end method
