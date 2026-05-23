.class public Lcom/unisound/common/as;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/content/Context;

.field private c:Landroid/media/MediaPlayer$OnCompletionListener;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/common/as;->b:Landroid/content/Context;

    return-void
.end method

.method private g()V
    .registers 5

    iget-object v0, p0, Lcom/unisound/common/as;->e:Ljava/lang/String;

    if-eqz v0, :cond_26

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/unisound/common/as;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0}, Lcom/unisound/common/as;->b()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/unisound/common/as;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/unisound/common/as;->b()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    goto :goto_25
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/as;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/as;->e:Ljava/lang/String;

    iput p1, p0, Lcom/unisound/common/as;->d:I

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/unisound/common/as;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/as;->d:I

    iput-object p1, p0, Lcom/unisound/common/as;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/unisound/common/as;->d:I

    return v0
.end method

.method public c()Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/as;->c:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lcom/unisound/common/as;->e()V

    :try_start_3
    invoke-direct {p0}, Lcom/unisound/common/as;->g()V

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/unisound/common/as;->c()Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public e()V
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    :cond_11
    return-void
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/common/as;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
