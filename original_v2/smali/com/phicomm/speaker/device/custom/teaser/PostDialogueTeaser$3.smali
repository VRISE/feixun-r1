.class Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;
.super Ljava/lang/Object;
.source "PostDialogueTeaser.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/tts/XfyunTtsClient$TtsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->runTease(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;)V
    .registers 2
    .param p1, "this$0"    # Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser$3;->this$0:Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 6
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    # setter for: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$302(J)J

    .line 224
    const-string v0, "PostTeaser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEASE] tts error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "audioPath"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    # setter for: Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->sEchoGuardUntil:J
    invoke-static {v0, v1}, Lcom/phicomm/speaker/device/custom/teaser/PostDialogueTeaser;->access$302(J)J

    .line 218
    const-string v0, "PostTeaser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TEASE] tts ok: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method
