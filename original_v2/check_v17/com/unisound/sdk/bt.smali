.class public Lcom/unisound/sdk/bt;
.super Lcom/unisound/sdk/bs;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

.field private e:Lcom/unisound/sdk/bz;

.field private f:Lcom/unisound/sdk/bw;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unisound/sdk/bw;)V
    .registers 5

    invoke-virtual {p2}, Lcom/unisound/sdk/bw;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/unisound/sdk/bw;->m()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bs;-><init>(ZZ)V

    invoke-static {}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b()Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bt;->g:Z

    iput-object p1, p0, Lcom/unisound/sdk/bt;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    return-void
.end method

.method private a(F)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(F)V

    return-void
.end method

.method private a(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a([BI)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/unisound/sdk/bz;->a([BI)V

    :cond_7
    return-void
.end method

.method private b(F)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(F)V

    return-void
.end method

.method private c(F)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(F)V

    return-void
.end method

.method private c(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bz;->a(I)V

    :cond_7
    return-void
.end method

.method private d(F)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c(F)V

    return-void
.end method

.method private d(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(I)V

    return-void
.end method

.method private e(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(I)V

    return-void
.end method

.method private f(I)V
    .registers 2

    return-void
.end method

.method private g(I)Z
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(I)Z

    move-result v0

    return v0
.end method

.method private h(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->f(I)V

    return-void
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/bz;->a()V

    :cond_7
    return-void
.end method

.method private i(I)V
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->g(I)V

    return-void
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/bz;->b()V

    :cond_7
    return-void
.end method

.method private k()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/unisound/sdk/bz;->c()V

    :cond_7
    return-void
.end method


# virtual methods
.method protected a(Lcom/unisound/sdk/bw;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    return-void
.end method

.method public a(Lcom/unisound/sdk/bz;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bt;->e:Lcom/unisound/sdk/bz;

    return-void
.end method

.method public b()V
    .registers 2

    invoke-super {p0}, Lcom/unisound/sdk/bs;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e()V

    :cond_c
    return-void
.end method

.method public b(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/unisound/sdk/bt;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e()V

    :cond_f
    int-to-long v0, p1

    :try_start_10
    invoke-super {p0, v0, v1}, Lcom/unisound/sdk/bs;->join(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_14

    :cond_13
    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_13
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/unisound/sdk/bt;->g:Z

    return-void
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    :cond_c
    invoke-direct {p0}, Lcom/unisound/sdk/bt;->k()V

    return-void
.end method

.method public h()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bt;->a(Lcom/unisound/sdk/bz;)V

    return-void
.end method

.method public run()V
    .registers 14

    const/4 v6, 0x3

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v2, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/unisound/sdk/bs;->run()V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TTSOfflineSynthesizerThread -> ThreadName = "

    aput-object v1, v0, v12

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, ", ThreadId = "

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    const v0, -0x11e5c

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->c(I)V

    const-string v0, "TTSOfflineSynthesizerThread run(): \u79bb\u7ebftts\u5f15\u64ce\u672a\u521d\u59cb\u5316\uff0c\u8bf7\u786e\u8ba4\u6267\u884cinit\u5e76\u63a5\u6536init\u56de\u8c03\uff01 "

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_4a
    return-void

    :cond_4b
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->q()I

    move-result v0

    if-eqz v0, :cond_69

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _LogLevel="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->a(F)V

    :cond_69
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->u()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_89

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _VoiceSpeed="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->b(F)V

    :cond_89
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->v()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_a9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _VoicePitch="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->c(F)V

    :cond_a9
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->w()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_c9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _VoiceVolume="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->d(F)V

    :cond_c9
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ee

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _ReadEnglishInPinyin="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->a(Ljava/lang/Boolean;)V

    :cond_ee
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->o()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_10d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _FrontSilence="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->d(I)V

    :cond_10d
    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->p()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_12c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "TTSOfflineSynthesizerThread run(): _BackSilence="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->e(I)V

    :cond_12c
    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object v1, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v2

    iget-object v1, p0, Lcom/unisound/sdk/bt;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setText(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15d

    const v0, -0x11e58

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bt;->c(I)V

    const-string v0, "TTSOfflineSynthesizerThread run(): setText error "

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_147} :catch_149

    goto/16 :goto_4a

    :catch_149
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "TTSOfflineSynthesizerThread run(): Exception error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_152
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TTSOfflineSynthesizerThread run(): synthesizer end"

    aput-object v1, v0, v12

    invoke-static {v0}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    goto/16 :goto_4a

    :cond_15d
    const/16 v0, 0x1900

    :try_start_15f
    iget-object v1, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->G()Z

    move-result v1

    if-eqz v1, :cond_197

    iget-object v0, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v0}, Lcom/unisound/sdk/bw;->F()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->y()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e(I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOfflineSynthesizerThread bufferLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/unisound/common/y;->c([Ljava/lang/Object;)V

    :cond_197
    iget-object v1, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->J()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_1b6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSOfflineSynthesizerThread run(): _Voiceloud="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bt;->h(I)V

    :cond_1b6
    iget-object v1, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v1}, Lcom/unisound/sdk/bw;->K()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "TTSOfflineSynthesizerThread run(): _Domain="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->b([Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bt;->i(I)V

    :cond_1d4
    new-array v6, v0, [B

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/Boolean;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bt;->i()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    move v4, v5

    :cond_1e8
    if-eqz v4, :cond_2d5

    invoke-virtual {p0}, Lcom/unisound/sdk/bt;->a()Z

    move-result v4

    if-nez v4, :cond_2d5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "TTSOfflineSythesizer run : receiveSamples before"

    aput-object v8, v4, v7

    invoke-static {v4}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "TTSOfflineSythesizer run : receiveSamples before"

    aput-object v8, v4, v7

    invoke-static {v4}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->G()Z

    move-result v4

    if-eqz v4, :cond_2b2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object v7, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v7}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11, v6}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b(J[B)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v7, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v7}, Lcom/unisound/sdk/bw;->I()Z

    move-result v7

    if-eqz v7, :cond_22f

    sub-long v8, v10, v8

    add-long/2addr v2, v8

    int-to-long v8, v4

    add-long/2addr v0, v8

    :cond_22f
    :goto_22f
    sget-boolean v7, Lcom/unisound/common/y;->l:Z

    if-eqz v7, :cond_259

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "TTSOfflineSynthesizerThread -> receiveData handle = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, " thread = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_259
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "TTSOfflineSythesizer run : receiveSamples after"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "TTSOfflineSythesizer run : receiveSamples after"

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/unisound/common/y;->f([Ljava/lang/Object;)V

    if-eqz v6, :cond_276

    if-le v4, v5, :cond_276

    invoke-direct {p0, v6, v4}, Lcom/unisound/sdk/bt;->a([BI)V

    :cond_276
    :goto_276
    invoke-virtual {p0}, Lcom/unisound/sdk/bt;->a()Z

    move-result v7

    if-nez v7, :cond_1e8

    if-eqz v4, :cond_1e8

    iget-boolean v7, p0, Lcom/unisound/sdk/bt;->g:Z

    if-eqz v7, :cond_1e8

    sget-boolean v7, Lcom/unisound/common/y;->l:Z

    if-eqz v7, :cond_2ac

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "TTSOfflineSynthesizerThread -> pause handle = "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, " thread = "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2ac
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_276

    :cond_2b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v4, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object v7, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v7}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11, v6}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(J[B)I

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v7, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v7}, Lcom/unisound/sdk/bw;->I()Z

    move-result v7

    if-eqz v7, :cond_22f

    sub-long v8, v10, v8

    add-long/2addr v2, v8

    int-to-long v8, v4

    add-long/2addr v0, v8

    goto/16 :goto_22f

    :cond_2d5
    iget-object v4, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->I()Z

    move-result v4

    if-eqz v4, :cond_32a

    long-to-double v6, v2

    iget-object v4, p0, Lcom/unisound/sdk/bt;->f:Lcom/unisound/sdk/bw;

    invoke-virtual {v4}, Lcom/unisound/sdk/bw;->y()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x2

    int-to-long v8, v4

    div-long v8, v0, v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v8, "#.000"

    invoke-direct {v4, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    const-string v6, "TTSOfflineSythesizer"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "synthesizerTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",synthesizerBufferLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RTF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/unisound/common/y;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_32a
    invoke-direct {p0}, Lcom/unisound/sdk/bt;->j()V

    iget-object v0, p0, Lcom/unisound/sdk/bt;->d:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/Boolean;)V
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_337} :catch_149

    goto/16 :goto_152
.end method
