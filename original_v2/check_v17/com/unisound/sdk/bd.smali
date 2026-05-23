.class Lcom/unisound/sdk/bd;
.super Lcom/unisound/common/ab;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/az;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/az;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0}, Lcom/unisound/common/ab;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/az;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0, p2}, Lcom/unisound/common/ab;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v3, 0x8fd

    iget-object v1, p0, Lcom/unisound/sdk/bd;->a:Lcom/unisound/sdk/az;

    invoke-static {v1}, Lcom/unisound/sdk/az;->d(Lcom/unisound/sdk/az;)Lcom/unisound/client/SpeechSynthesizerListener;

    move-result-object v1

    if-nez v1, :cond_c

    :goto_b
    return v0

    :cond_c
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_94

    goto :goto_b

    :sswitch_12
    const/16 v0, 0x835

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    :goto_17
    :sswitch_17
    const/4 v0, 0x1

    goto :goto_b

    :sswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_31
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_39
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    goto :goto_17

    :sswitch_51
    const/16 v0, 0x836

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_57
    const/16 v0, 0x837

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_5d
    const/16 v0, 0x83a

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_63
    const/16 v0, 0x83b

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_69
    const/16 v0, 0x83c

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_6f
    const/16 v0, 0x83d

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_75
    const/16 v0, 0x83f

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_7b
    const/16 v0, 0x840

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_81
    const/16 v0, 0x838

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_87
    const/16 v0, 0x839

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    :sswitch_8d
    const/16 v0, 0x842

    invoke-interface {v1, v0}, Lcom/unisound/client/SpeechSynthesizerListener;->onEvent(I)V

    goto :goto_17

    nop

    :sswitch_data_94
    .sparse-switch
        0x65 -> :sswitch_12
        0x66 -> :sswitch_51
        0x67 -> :sswitch_57
        0x68 -> :sswitch_81
        0x69 -> :sswitch_87
        0x6a -> :sswitch_5d
        0x6b -> :sswitch_63
        0x6c -> :sswitch_69
        0x6d -> :sswitch_6f
        0x6e -> :sswitch_17
        0x6f -> :sswitch_75
        0x70 -> :sswitch_7b
        0x72 -> :sswitch_8d
        0xc8 -> :sswitch_21
        0xc9 -> :sswitch_29
        0xca -> :sswitch_31
        0xd2 -> :sswitch_39
        0xd3 -> :sswitch_41
        0xd4 -> :sswitch_49
        0xe1 -> :sswitch_19
    .end sparse-switch
.end method

.method public sendMessage(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unisound/common/ab;->sendMessage(I)V

    return-void
.end method
