.class public Lcom/unisound/vui/message/VoiceTip;
.super Ljava/lang/Object;


# instance fields
.field private content:Ljava/lang/String;

.field private isShowLoading:Z

.field private sessionName:Ljava/lang/String;

.field private tip:Ljava/lang/String;

.field private voiceType:Lcom/unisound/vui/message/VoiceType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/message/VoiceTip;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/message/VoiceTip;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getTip()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/message/VoiceTip;->tip:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceType()Lcom/unisound/vui/message/VoiceType;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/message/VoiceTip;->voiceType:Lcom/unisound/vui/message/VoiceType;

    return-object v0
.end method

.method public isShowLoading()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/vui/message/VoiceTip;->isShowLoading:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/message/VoiceTip;->content:Ljava/lang/String;

    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/message/VoiceTip;->sessionName:Ljava/lang/String;

    return-void
.end method

.method public setShowLoading(Z)V
    .registers 2
    .param p1, "showLoading"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/unisound/vui/message/VoiceTip;->isShowLoading:Z

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .registers 2
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/message/VoiceTip;->tip:Ljava/lang/String;

    return-void
.end method

.method public setVoiceType(Lcom/unisound/vui/message/VoiceType;)V
    .registers 2
    .param p1, "voiceType"    # Lcom/unisound/vui/message/VoiceType;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/message/VoiceTip;->voiceType:Lcom/unisound/vui/message/VoiceType;

    return-void
.end method
