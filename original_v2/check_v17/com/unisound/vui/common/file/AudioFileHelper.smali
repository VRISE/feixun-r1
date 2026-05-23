.class public Lcom/unisound/vui/common/file/AudioFileHelper;
.super Ljava/lang/Object;


# static fields
.field public static final GENDER_CHILDREN:Ljava/lang/String; = "CHILDREN"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "FEMALE"

.field public static final GENDER_LZL:Ljava/lang/String; = "LZL"

.field public static final GENDER_MALE:Ljava/lang/String; = "MALE"

.field public static final GENDER_SWEET:Ljava/lang/String; = "SWEET"

.field private static final SWEET_MORE_SIZE:I = 0x6


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWakeupAudios:[Lcom/unisound/vui/common/a/c;

.field private randomIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getRandomIndex(Ljava/util/Random;)V
    .registers 5
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x6

    invoke-direct {p0}, Lcom/unisound/vui/common/file/AudioFileHelper;->getTTSFrontFromSp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWEET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->randomIndex:I

    :goto_1a
    return-void

    :cond_1b
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->randomIndex:I

    goto :goto_1a
.end method

.method private getTTSFrontFromSp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getUserTTSModelType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRandomWakeUpFilePath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    iget v1, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->randomIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/unisound/vui/common/a/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/common/file/FileHelper;->getWakeupAudioFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRandomWakeUpTips()[B
    .registers 3

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRandomIndex(Ljava/util/Random;)V

    iget-object v0, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    iget v1, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->randomIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/unisound/vui/common/a/c;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "wavFileName"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    invoke-direct {p0}, Lcom/unisound/vui/common/file/AudioFileHelper;->getTTSFrontFromSp()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_bc

    :cond_e
    :goto_e
    packed-switch v1, :pswitch_data_d2

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_23
    const-string v3, "FEMALE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :sswitch_2d
    const-string v3, "MALE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    goto :goto_e

    :sswitch_37
    const-string v3, "CHILDREN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x2

    goto :goto_e

    :sswitch_41
    const-string v3, "SWEET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x3

    goto :goto_e

    :sswitch_4b
    const-string v3, "LZL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x4

    goto :goto_e

    :pswitch_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "female/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "male/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "child/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sweet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :pswitch_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lzl/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    nop

    :sswitch_data_bc
    .sparse-switch
        -0x6e6fb201 -> :sswitch_37
        0x1287e -> :sswitch_4b
        0x23fe0d -> :sswitch_2d
        0x4ba36d0 -> :sswitch_41
        0x7b638f4c -> :sswitch_23
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_55
        :pswitch_69
        :pswitch_7d
        :pswitch_91
        :pswitch_a6
    .end packed-switch
.end method

.method public loadWakeupAudio()V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/unisound/vui/common/a/c;

    new-instance v2, Lcom/unisound/vui/common/a/c;

    const-string v3, "hi.pcm"

    invoke-virtual {p0, v3}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "im_here.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "please_say.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "hi_1.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "im_here_1.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "please_say_1.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "hi_2.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "im_here_2.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/unisound/vui/common/a/c;

    const-string v4, "please_say_2.pcm"

    invoke-virtual {p0, v4}, Lcom/unisound/vui/common/file/AudioFileHelper;->getRelativeAudioFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/unisound/vui/common/a/c;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    :goto_85
    iget-object v1, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    array-length v1, v1

    if-ge v0, v1, :cond_9b

    new-instance v1, Lcom/unisound/vui/common/a/a;

    iget-object v2, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/unisound/vui/common/file/AudioFileHelper;->mWakeupAudios:[Lcom/unisound/vui/common/a/c;

    aget-object v3, v3, v0

    invoke-direct {v1, v2, v3}, Lcom/unisound/vui/common/a/a;-><init>(Landroid/content/Context;Lcom/unisound/vui/common/a/c;)V

    invoke-static {v1}, Lcom/unisound/vui/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_9b
    return-void
.end method
