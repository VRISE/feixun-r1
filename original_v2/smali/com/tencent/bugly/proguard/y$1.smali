.class final Lcom/tencent/bugly/proguard/y$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tencent/bugly/proguard/y$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 167
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 169
    :try_start_5
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    if-nez v0, :cond_3e

    .line 171
    new-instance v0, Lcom/tencent/bugly/proguard/y$a;

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/y$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Lcom/tencent/bugly/proguard/y$a;)Lcom/tencent/bugly/proguard/y$a;

    .line 177
    :cond_17
    :goto_17
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y$a;->d(Lcom/tencent/bugly/proguard/y$a;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 179
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/y$a;->a(Ljava/lang/String;)Z

    .line 180
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 186
    :goto_38
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Z)Z
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3c} :catch_72
    .catchall {:try_start_5 .. :try_end_3c} :catchall_86

    .line 190
    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_86

    return-void

    .line 172
    :cond_3e
    :try_start_3e
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y$a;->b(Lcom/tencent/bugly/proguard/y$a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_17

    .line 175
    :cond_6a
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->c()Lcom/tencent/bugly/proguard/y$a;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/y$a;->c(Lcom/tencent/bugly/proguard/y$a;)Z

    goto :goto_17

    :catch_72
    move-exception v0

    goto :goto_3c

    .line 183
    :cond_74
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 184
    invoke-static {}, Lcom/tencent/bugly/proguard/y;->e()Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/y$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_85} :catch_72
    .catchall {:try_start_3e .. :try_end_85} :catchall_86

    goto :goto_38

    .line 190
    :catchall_86
    move-exception v0

    monitor-exit v1

    throw v0
.end method
