.class public Lcom/unisound/sdk/bw;
.super Ljava/lang/Object;


# static fields
.field public static final d:Z = false

.field public static final e:I = 0x0

.field public static final f:I = 0x12c

.field public static final g:I = 0x32

.field public static final h:I = 0x32

.field public static final i:I = 0x32

.field public static final j:Ljava/lang/String; = "xiaoli"

.field public static final k:I = 0x5622

.field public static final l:Z = false

.field public static final m:I = 0x64

.field public static final n:I = 0x64

.field public static final o:I = 0x2

.field public static final p:I = 0xf

.field public static final q:I = 0x5

.field public static final r:I = 0x32

.field public static final s:I = -0x1

.field public static final t:Z

.field public static final u:Z

.field private static w:Lcom/unisound/sdk/bw;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/Integer;

.field private K:I

.field private L:Ljava/lang/Boolean;

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/lang/String;

.field public a:I

.field private aa:J

.field public b:Ljava/lang/String;

.field public c:Lcom/unisound/sdk/c;

.field private v:Lcom/unisound/common/a;

.field private x:Ljava/lang/Boolean;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method private constructor <init>()V
    .registers 8

    const/16 v6, 0x64

    const/16 v5, 0x50

    const/16 v4, 0x32

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "ttsv3.hivoice.cn"

    const-string v2, "117.121.49.41"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    iput v3, p0, Lcom/unisound/sdk/bw;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->b:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/c;

    invoke-direct {v0}, Lcom/unisound/sdk/c;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bw;->c:Lcom/unisound/sdk/c;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->x:Ljava/lang/Boolean;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/unisound/sdk/bw;->z:I

    iput v4, p0, Lcom/unisound/sdk/bw;->A:I

    iput v4, p0, Lcom/unisound/sdk/bw;->B:I

    iput v4, p0, Lcom/unisound/sdk/bw;->C:I

    const-string v0, "xiaoli"

    iput-object v0, p0, Lcom/unisound/sdk/bw;->D:Ljava/lang/String;

    const/16 v0, 0x5622

    iput v0, p0, Lcom/unisound/sdk/bw;->E:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bw;->F:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisound/sdk/bw;->G:I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->J:Ljava/lang/Integer;

    iput v3, p0, Lcom/unisound/sdk/bw;->K:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->L:Ljava/lang/Boolean;

    iput v6, p0, Lcom/unisound/sdk/bw;->M:I

    iput v6, p0, Lcom/unisound/sdk/bw;->N:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/unisound/sdk/bw;->O:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/sdk/bw;->P:I

    iput v4, p0, Lcom/unisound/sdk/bw;->Q:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisound/sdk/bw;->R:I

    iput-boolean v3, p0, Lcom/unisound/sdk/bw;->S:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bw;->T:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bw;->U:Z

    iput-boolean v3, p0, Lcom/unisound/sdk/bw;->V:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bw;->W:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bw;->X:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bw;->Y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/bw;->Z:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/unisound/sdk/bw;->aa:J

    return-void
.end method

.method private F(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string v1, "TTSParams object2Boolean: obj is null"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_8
    return v0

    :cond_9
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_8

    :cond_14
    const-string v1, "TTSParams object2Boolean: obj is not change to boolean"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private a(Ljava/lang/Integer;)I
    .registers 6

    const/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1c

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TTSParams checkParams: value < 0"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :goto_1b
    return v0

    :cond_1c
    if-le v2, v1, :cond_29

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "TTSParams checkParams: value > 100"

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    move v0, v1

    goto :goto_1b

    :cond_29
    move v0, v2

    goto :goto_1b
.end method

.method public static a()Lcom/unisound/sdk/bw;
    .registers 1

    sget-object v0, Lcom/unisound/sdk/bw;->w:Lcom/unisound/sdk/bw;

    if-nez v0, :cond_b

    new-instance v0, Lcom/unisound/sdk/bw;

    invoke-direct {v0}, Lcom/unisound/sdk/bw;-><init>()V

    sput-object v0, Lcom/unisound/sdk/bw;->w:Lcom/unisound/sdk/bw;

    :cond_b
    sget-object v0, Lcom/unisound/sdk/bw;->w:Lcom/unisound/sdk/bw;

    return-object v0
.end method

.method private b(I)Ljava/lang/Integer;
    .registers 7

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-le p1, v1, :cond_21

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "TTSParams checkSilenceTime: silence > 1000 invoked silence = 1000"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :goto_f
    if-gez v1, :cond_1f

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "TTSParams checkSilenceTime: silence < 0 invoked silence = 0"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :goto_1a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1f
    move v0, v1

    goto :goto_1a

    :cond_21
    move v1, p1

    goto :goto_f
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_c
    const-string v0, "TTSParams isNumberUseable: value is empty or unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "TTSParams isStringUseable: value is empty"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private g(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_19

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bw;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v1, "TTSParams checkAddress: port unusable"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private h(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "(2[5][0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})\\.(25[0-5]|2[0-4]\\d|1\\d{2}|\\d{1,2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private i(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_12

    const v2, 0xffff

    if-ge v1, v2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const-string v1, "TTSParams checkPort: port Illegal"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_11

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "TTSParams checkPort: port changeTo integer exception"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method public A()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->G:I

    return v0
.end method

.method public A(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->P:I

    return-void
.end method

.method public B()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->H:Ljava/lang/String;

    return-object v0
.end method

.method public B(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/bw;->V:Z

    return-void
.end method

.method public C()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->I:Ljava/lang/String;

    return-object v0
.end method

.method public C(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->Q:I

    return-void
.end method

.method public D()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->J:Ljava/lang/Integer;

    return-object v0
.end method

.method public D(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->R:I

    return-void
.end method

.method public E()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tts_VoiceSpeed"

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_VoicePitch"

    const/16 v2, 0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_VoiceVolume"

    const/16 v2, 0x7d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_SampleRate"

    const/16 v2, 0x7d4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_VoiceName"

    const/16 v2, 0x7d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_ServerAddress"

    const/16 v2, 0x7db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_PlayStartBufferTime"

    const/16 v2, 0x7dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_StreamType"

    const/16 v2, 0x7dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_IsDebug"

    const/16 v2, 0x7de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "tts_ServiceMode"

    const/16 v2, 0x7e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public E(Ljava/lang/Object;)V
    .registers 5

    const/16 v0, 0x3e8

    const/16 v1, 0x64

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v0, :cond_12

    :goto_e
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/unisound/sdk/bw;->aa:J

    return-void

    :cond_12
    if-ge v2, v1, :cond_16

    move v0, v1

    goto :goto_e

    :cond_16
    move v0, v2

    goto :goto_e
.end method

.method public F()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->O:I

    return v0
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bw;->U:Z

    return v0
.end method

.method public H()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->P:I

    return v0
.end method

.method public I()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bw;->V:Z

    return v0
.end method

.method public J()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->Q:I

    return v0
.end method

.method public K()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->R:I

    return v0
.end method

.method public L()J
    .registers 3

    iget-wide v0, p0, Lcom/unisound/sdk/bw;->aa:J

    return-wide v0
.end method

.method public a(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->X:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bw;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->b(I)V

    return-void
.end method

.method public a(ILjava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/unisound/sdk/c;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->c:Lcom/unisound/sdk/c;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->W:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bw;->H:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->Y:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/sdk/bw;->I:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->c()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->Z:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->e()V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/bw;->T:Z

    return-void
.end method

.method public f()Lcom/unisound/common/a;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->v:Lcom/unisound/common/a;

    return-object v0
.end method

.method public f(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/bw;->S:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->X:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->L:Ljava/lang/Boolean;

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->W:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->b(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->M:I

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->b(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->N:I

    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->K:I

    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/bw;->x:Ljava/lang/Boolean;

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "TTSParams setDebugDir: mDebugDir is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iput-object v0, p0, Lcom/unisound/sdk/bw;->y:Ljava/lang/String;

    goto :goto_b
.end method

.method public l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bw;->T:Z

    return v0
.end method

.method public m(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "TTSParams setVoiceName: voiceName is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v0, "TTSParams setVoiceName: voiceName unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    iput-object v0, p0, Lcom/unisound/sdk/bw;->D:Ljava/lang/String;

    goto :goto_b
.end method

.method public m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bw;->S:Z

    return v0
.end method

.method public n()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->L:Ljava/lang/Boolean;

    return-object v0
.end method

.method public n(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->A:I

    return-void
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->M:I

    return v0
.end method

.method public o(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->B:I

    return-void
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->N:I

    return v0
.end method

.method public p(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->C:I

    return-void
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->K:I

    return v0
.end method

.method public q(Ljava/lang/Object;)V
    .registers 8

    const/16 v2, 0x3a98

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSParams setPlayStartBufferTime: playStartBufferTime > 15000 "

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "TTSParams setPlayStartBufferTime: playStartBufferTime < 0 "

    aput-object v2, v1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/unisound/common/y;->e([Ljava/lang/Object;)V

    :cond_43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->z:I

    return-void
.end method

.method public r()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->x:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_a

    const-string v1, "TTSParams object2String: obj is null"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move-object p1, v0

    :goto_9
    return-object p1

    :cond_a
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_11

    check-cast p1, Ljava/lang/String;

    goto :goto_9

    :cond_11
    const-string v1, "TTSParams object2String: obj can not change to String"

    invoke-static {v1}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_9
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->y:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "TTSParams setSampleRate: mSampleRate is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_b
    :sswitch_b
    return-void

    :cond_c
    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v0, "TTSParams setSampleRate: mSampleRate unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    goto :goto_b

    :sswitch_24
    iput v0, p0, Lcom/unisound/sdk/bw;->E:I

    goto :goto_b

    :sswitch_27
    iput v0, p0, Lcom/unisound/sdk/bw;->E:I

    goto :goto_b

    :sswitch_2a
    iput v0, p0, Lcom/unisound/sdk/bw;->E:I

    goto :goto_b

    :sswitch_2d
    iput v0, p0, Lcom/unisound/sdk/bw;->E:I

    goto :goto_b

    :sswitch_data_30
    .sparse-switch
        0x1f40 -> :sswitch_b
        0x3e80 -> :sswitch_24
        0x5622 -> :sswitch_2a
        0x5dc0 -> :sswitch_2d
        0xbb80 -> :sswitch_27
    .end sparse-switch
.end method

.method public t()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/sdk/bw;->D:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, "TTSParams addField: value is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unisound/sdk/bw;->F:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_b

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "TTSParams addField: value can not change to integer"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public u()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->A:I

    return v0
.end method

.method public u(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->r(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, "TTSParams setServerAddress: address unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-direct {p0, v0}, Lcom/unisound/sdk/bw;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_10
.end method

.method public v()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->B:I

    return v0
.end method

.method public v(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_18

    :cond_12
    const-string v0, "TTSParams setStreamType: mStreamType unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unisound/sdk/bw;->G:I

    goto :goto_17
.end method

.method public w()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->C:I

    return v0
.end method

.method public w(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 4

    const/4 v1, 0x1

    if-nez p1, :cond_d

    const-string v0, "TTSParams object2Integer: obj is null"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_c
    return-object p1

    :cond_d
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_14

    check-cast p1, Ljava/lang/Integer;

    goto :goto_c

    :cond_14
    const-string v0, "TTSParams object2Integer: obj can not change to integer"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_c
.end method

.method public x()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->z:I

    return v0
.end method

.method public x(Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1f

    const-string v0, "TTSParams setMode: mMode unusable"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    iput-object v0, p0, Lcom/unisound/sdk/bw;->J:Ljava/lang/Integer;

    goto :goto_1e
.end method

.method public y()I
    .registers 2

    iget v0, p0, Lcom/unisound/sdk/bw;->E:I

    return v0
.end method

.method public y(Ljava/lang/Object;)V
    .registers 4

    const/16 v0, 0x1e

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bw;->w(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_f

    :goto_c
    iput v0, p0, Lcom/unisound/sdk/bw;->O:I

    return-void

    :cond_f
    if-gtz v1, :cond_13

    const/4 v0, 0x1

    goto :goto_c

    :cond_13
    move v0, v1

    goto :goto_c
.end method

.method public z()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/bw;->F:Ljava/util/List;

    return-object v0
.end method

.method public z(Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bw;->F(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/bw;->U:Z

    return-void
.end method
