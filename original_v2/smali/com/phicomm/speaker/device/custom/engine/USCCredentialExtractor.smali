.class public final Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;
.super Ljava/lang/Object;
.source "USCCredentialExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "USCCredentialExtractor"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extract(Lcom/unisound/vui/engine/ANTEngine;)Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    .registers 16
    .param p0, "engine"    # Lcom/unisound/vui/engine/ANTEngine;

    .prologue
    .line 62
    new-instance v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;

    invoke-direct {v4}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;-><init>()V

    .line 65
    .local v4, "c":Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;
    :try_start_5
    const-string v11, "j"

    invoke-static {p0, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 66
    .local v10, "vuiA":Ljava/lang/Object;
    if-nez v10, :cond_15

    .line 67
    const-string v11, "USCCredentialExtractor"

    const-string v12, "NativeANTEngine.j is null"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v10    # "vuiA":Ljava/lang/Object;
    :goto_14
    return-object v4

    .line 70
    .restart local v10    # "vuiA":Ljava/lang/Object;
    :cond_15
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step1 vui.a = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v11, "b"

    invoke-static {v10, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 74
    .local v9, "speechUnderstander":Ljava/lang/Object;
    if-nez v9, :cond_66

    .line 75
    const-string v11, "USCCredentialExtractor"

    const-string v12, "vui.a.b is null"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_14

    .line 147
    .end local v9    # "speechUnderstander":Ljava/lang/Object;
    .end local v10    # "vuiA":Ljava/lang/Object;
    :catch_45
    move-exception v6

    .line 148
    .local v6, "e":Ljava/lang/Throwable;
    const-string v11, "USCCredentialExtractor"

    const-string v12, "extract failed"

    invoke-static {v11, v12, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4d
    :goto_4d
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "extracted: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 78
    .restart local v9    # "speechUnderstander":Ljava/lang/Object;
    .restart local v10    # "vuiA":Ljava/lang/Object;
    :cond_66
    :try_start_66
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step2 SpeechUnderstander = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v11, "com.unisound.sdk.bg"

    const-string v12, "o"

    invoke-static {v9, v11, v12}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->readFieldFromSuper(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, "ao":Ljava/lang/Object;
    if-nez v2, :cond_99

    .line 83
    const-string v11, "USCCredentialExtractor"

    const-string v12, "bg.o is null"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 86
    :cond_99
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step3 ao = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v11, "j"

    invoke-static {v2, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 90
    .local v3, "as":Ljava/lang/Object;
    if-nez v3, :cond_ca

    .line 91
    const-string v11, "USCCredentialExtractor"

    const-string v12, "ao.j is null"

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 94
    :cond_ca
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step4 as = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_ea} :catch_45

    .line 98
    :try_start_ea
    const-string v11, "g"

    invoke-static {v2, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->anInstance:Ljava/lang/Object;

    .line 99
    iget-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->anInstance:Ljava/lang/Object;

    if-eqz v11, :cond_118

    .line 100
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step4b an = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->anInstance:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_118} :catch_24e

    .line 108
    :cond_118
    :goto_118
    :try_start_118
    const-string v11, "bb"

    invoke-static {v3, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "aInst":Ljava/lang/Object;
    if-eqz v0, :cond_198

    .line 110
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step4c a = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v11, "b"

    invoke-static {v0, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverHost:Ljava/lang/String;

    .line 112
    const-string v11, "c"

    invoke-static {v0, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 113
    .local v7, "portObj":Ljava/lang/Object;
    instance-of v11, v7, Ljava/lang/Integer;

    if-eqz v11, :cond_15c

    .line 114
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "portObj":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverPort:I

    .line 116
    :cond_15c
    const-string v11, "a"

    invoke-static {v0, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverIp:Ljava/lang/String;

    .line 117
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step4c host="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverHost:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " port="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverPort:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ip="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->serverIp:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_198
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_198} :catch_269

    .line 125
    .end local v0    # "aInst":Ljava/lang/Object;
    :cond_198
    :goto_198
    :try_start_198
    const-string v11, "aZ"

    invoke-static {v3, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    .line 126
    const-string v11, "bu"

    invoke-static {v3, v11}, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->udid:Ljava/lang/String;

    .line 127
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step5 appkey="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " udid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->udid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_198 .. :try_end_1d2} :catch_45

    .line 131
    :try_start_1d2
    const-string v11, "com.unisound.c.a"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 132
    .local v5, "cACls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "q"

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 133
    .local v8, "qField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->imei:Ljava/lang/String;

    .line 134
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step6 imei="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->imei:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    if-eqz v11, :cond_4d

    .line 138
    const-string v11, "a"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 139
    .local v1, "aMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 140
    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->appkey:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v1, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->userId:Ljava/lang/String;

    .line 141
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "step7 userId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Lcom/phicomm/speaker/device/custom/engine/USCCredentialExtractor$Credentials;->userId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_242
    .catch Ljava/lang/Throwable; {:try_start_1d2 .. :try_end_242} :catch_244

    goto/16 :goto_4d

    .line 143
    .end local v1    # "aMethod":Ljava/lang/reflect/Method;
    .end local v5    # "cACls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "qField":Ljava/lang/reflect/Field;
    :catch_244
    move-exception v6

    .line 144
    .restart local v6    # "e":Ljava/lang/Throwable;
    :try_start_245
    const-string v11, "USCCredentialExtractor"

    const-string v12, "Failed to read static c.a.q / call c.a.a()"

    invoke-static {v11, v12, v6}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 102
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_24e
    move-exception v6

    .line 103
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ao.g (an) extract failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_118

    .line 120
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_269
    move-exception v6

    .line 121
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string v11, "USCCredentialExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "as.bb() server extract failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/unisound/vui/util/LogMgr;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_282
    .catch Ljava/lang/Throwable; {:try_start_245 .. :try_end_282} :catch_45

    goto/16 :goto_198
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_1f

    .line 186
    const/4 v3, 0x0

    :try_start_7
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 187
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_17} :catch_19

    move-result-object v3

    return-object v3

    .line 189
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v1

    .line 190
    .local v1, "ignored":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 191
    goto :goto_4

    .line 193
    .end local v1    # "ignored":Ljava/lang/NoSuchMethodException;
    :cond_1f
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 157
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_19

    .line 159
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_11} :catch_13

    move-result-object v3

    return-object v3

    .line 162
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_13
    move-exception v2

    .line 163
    .local v2, "ignored":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 164
    goto :goto_4

    .line 166
    .end local v2    # "ignored":Ljava/lang/NoSuchFieldException;
    :cond_19
    new-instance v3, Ljava/lang/NoSuchFieldException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static readFieldFromSuper(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fqcn"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 171
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-eqz v0, :cond_22

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 174
    .local v1, "f":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 175
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 177
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 179
    :cond_22
    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in hierarchy of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
