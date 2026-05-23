.class public Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;
.super Ljava/lang/Object;
.source "PhicommKeyProxy.java"


# instance fields
.field private doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

.field private tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V
    .registers 4
    .param p1, "engine"    # Lcom/unisound/vui/engine/ANTEngine;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/OneClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 14
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/DoubleClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 15
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/TripleClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 16
    new-instance v0, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;

    invoke-direct {v0, p1, p2}, Lcom/phicomm/speaker/device/custom/keyevent/processor/LongClickProcessor;-><init>(Lcom/unisound/vui/engine/ANTEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->oneClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 21
    return-void
.end method

.method public onDoubleClick()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->doubleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 25
    return-void
.end method

.method public onLongClick()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->longClickprocessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 33
    return-void
.end method

.method public onTripleClick()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommKeyProxy;->tripleClickProcessor:Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;

    invoke-virtual {v0}, Lcom/phicomm/speaker/device/custom/keyevent/processor/PhicommClickProcessor;->onTriggered()V

    .line 29
    return-void
.end method
