.class public Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnluparser/scheme/SceneModeIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeakerEngineControl"
.end annotation


# instance fields
.field private agent:Ljava/lang/String;

.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    iget-boolean v0, p0, Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;->isOpen:Z

    return v0
.end method

.method public setAgent(Ljava/lang/String;)V
    .registers 2
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;->agent:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    iput-boolean p1, p0, Lnluparser/scheme/SceneModeIntent$SpeakerEngineControl;->isOpen:Z

    return-void
.end method
