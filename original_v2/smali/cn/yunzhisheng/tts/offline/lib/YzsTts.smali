.class public Lcn/yunzhisheng/tts/offline/lib/YzsTts;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

.field private static volatile d:Z


# instance fields
.field private b:J

.field private c:J

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "yzstts"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    iput-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcn/yunzhisheng/tts/offline/lib/YzsTts;
    .registers 1

    sget-object v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-nez v0, :cond_b

    new-instance v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-direct {v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;-><init>()V

    sput-object v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    :cond_b
    sget-object v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    return-object v0
.end method

.method private native cancel(J)V
.end method

.method private native changeSpeaker(JLjava/lang/String;)I
.end method

.method private native create(J)J
.end method

.method private native createbase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native getCheckInfo(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private native getOption(JI)Ljava/lang/String;
.end method

.method private native release(J)V
.end method

.method private native releasebase(J)V
.end method

.method private native setOption(JILjava/lang/String;)I
.end method


# virtual methods
.method public a(J[B)I
    .registers 9

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_f

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "YzsTts process receiveData start"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_f
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "YzsTts receiveSamples start"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_27
    invoke-virtual {p0, p1, p2, p3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->receiveSamples(J[B)I

    move-result v0

    sget-boolean v2, Lcom/unisound/common/y;->l:Z

    if-eqz v2, :cond_5d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "YzsTts receiveSamples end handle = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "; audioLength = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "; first byte"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aget-byte v4, p3, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_5d
    monitor-exit v1

    :cond_5e
    :goto_5e
    return v0

    :catchall_5f
    move-exception v0

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_18 .. :try_end_61} :catchall_5f

    throw v0

    :cond_62
    sget-boolean v1, Lcom/unisound/common/y;->l:Z

    if-eqz v1, :cond_5e

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "YzsTts process receiveData end"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    goto :goto_5e
.end method

.method public a(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-nez v0, :cond_a

    const v0, -0x11e5c

    :goto_9
    return v0

    :cond_a
    sget-boolean v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    if-eqz v0, :cond_12

    const v0, -0x11e5d

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    invoke-direct {p0, v2, v3, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->changeSpeaker(JLjava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    const v0, -0x11e5e

    monitor-exit v1

    goto :goto_9

    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    const/16 v0, 0x72

    goto :goto_9
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    return-wide v0
.end method

.method public a(F)V
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const-string v2, "%1$.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v5, v2}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "YzsTts setLog : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public a(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "YzsTts setFrontSilence : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->createbase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_13

    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->create(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_29

    monitor-exit v1

    goto :goto_12

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    const/4 v0, 0x1

    goto :goto_12
.end method

.method public b(J[B)I
    .registers 11

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "YzsTts process receiveData2 start"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_15
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "YzsTts receiveSamples start"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->receiveSamples2(J[B)I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "YzsTts receiveSamples end handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; audioLength = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; first byte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    monitor-exit v1

    :goto_58
    return v0

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_15 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "YzsTts process receiveData2 end"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    goto :goto_58
.end method

.method public b(F)V
    .registers 9

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const-string v2, "%1$.1f"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v6, v2}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "YzsTts setVoiceSpeed : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public b(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "YzsTts setBackSilence : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public b(Ljava/lang/Boolean;)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "YzsTts setIsReadEnglishInPinyin : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public c()V
    .registers 7

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->release(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_20

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    invoke-direct {p0, v0, v1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->releasebase(J)V

    iput-wide v4, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b:J

    const/4 v0, 0x0

    sput-boolean v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public c(F)V
    .registers 9

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x3

    const-string v3, "%1$.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "YzsTts setVoiceVolume : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public c(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    :cond_10
    return-void
.end method

.method public d(F)V
    .registers 9

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x2

    const-string v3, "%1$.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "YzsTts setVoicePitch : error"

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public d()Z
    .registers 5

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(I)Z
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/4 v2, 0x6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public e()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_f

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "YzsTts process cancel start"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_42

    sget-boolean v0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "YzsTts cancel start"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_2b
    iget-wide v2, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    invoke-direct {p0, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->cancel(J)V

    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "YzsTts cancel end"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_50

    sput-boolean v4, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d:Z

    :cond_42
    sget-boolean v0, Lcom/unisound/common/y;->l:Z

    if-eqz v0, :cond_4f

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "YzsTts process cancel end"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/unisound/common/y;->d([Ljava/lang/Object;)V

    :cond_4f
    return-void

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0
.end method

.method public e(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/16 v2, 0xa

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    :cond_11
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->getCheckInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, ""

    :cond_d
    return-object v0
.end method

.method public f(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/16 v2, 0xb

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    :cond_11
    return-void
.end method

.method public g(I)V
    .registers 6

    invoke-virtual {p0}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c:J

    const/16 v2, 0xc

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->setOption(JILjava/lang/String;)I

    :cond_11
    return-void
.end method

.method public native receiveSamples(J[B)I
.end method

.method public native receiveSamples2(J[B)I
.end method

.method public native setText(JLjava/lang/String;)I
.end method
