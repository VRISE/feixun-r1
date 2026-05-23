.class public Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;
.super Ljava/lang/Object;
.source "CustomRingingProcessor.java"

# interfaces
.implements Lcom/phicomm/speaker/device/custom/api/CustomApiListener;


# instance fields
.field private mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V
    .registers 2
    .param p1, "ringingHandler"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;->mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .line 11
    return-void
.end method


# virtual methods
.method public onCustomEvent(ILjava/lang/Object;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_c

    .line 20
    .end local p2    # "data":Ljava/lang/Object;
    :goto_3
    return-void

    .line 17
    .restart local p2    # "data":Ljava/lang/Object;
    :pswitch_4
    iget-object v0, p0, Lcom/phicomm/speaker/device/custom/ringing/CustomRingingProcessor;->mRingingHandler:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->onRingAudition(Ljava/lang/String;)V

    goto :goto_3

    .line 15
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method
