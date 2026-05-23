.class public final Lcom/tencent/bugly/proguard/y;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/y$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/text/SimpleDateFormat;

.field private static c:I

.field private static d:Ljava/lang/StringBuilder;

.field private static e:Ljava/lang/StringBuilder;

.field private static f:Z

.field private static g:Lcom/tencent/bugly/proguard/y$a;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Landroid/content/Context;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:I

.field private static final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z

    .line 31
    const/16 v0, 0x1400

    sput v0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->n:Ljava/lang/Object;

    .line 47
    :try_start_11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 51
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    goto :goto_1a
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/y$a;)Lcom/tencent/bugly/proguard/y$a;
    .registers 1

    .prologue
    .line 19
    sput-object p0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    return-object p0
.end method

.method public static a(I)V
    .registers 3

    .prologue
    const/16 v0, 0x2800

    .line 108
    sget-object v1, Lcom/tencent/bugly/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_5
    sput p0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 110
    if-gez p0, :cond_e

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/tencent/bugly/proguard/y;->c:I

    .line 115
    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    .line 112
    :cond_e
    if-le p0, v0, :cond_c

    .line 113
    const/16 v0, 0x2800

    sput v0, Lcom/tencent/bugly/proguard/y;->c:I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_c

    .line 115
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 82
    const-class v1, Lcom/tencent/bugly/proguard/y;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->l:Z

    if-nez v0, :cond_d

    if-eqz p0, :cond_d

    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_71

    if-nez v0, :cond_f

    .line 100
    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    .line 86
    :cond_f
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    .line 88
    sput-object p0, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 90
    iget-object v2, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    sput-object v2, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/bugly/proguard/y;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/buglylog_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/proguard/y;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/proguard/y;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".txt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/tencent/bugly/proguard/y;->m:I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_6d} :catch_74
    .catchall {:try_start_f .. :try_end_6d} :catchall_71

    .line 99
    :goto_6d
    const/4 v0, 0x1

    :try_start_6e
    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->l:Z
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_71

    goto :goto_d

    .line 82
    :catchall_71
    move-exception v0

    monitor-exit v1

    throw v0

    .line 96
    :catch_74
    move-exception v0

    goto :goto_6d
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 143
    const-class v1, Lcom/tencent/bugly/proguard/y;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->l:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/tencent/bugly/proguard/y;->a:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9f

    if-nez v0, :cond_d

    .line 193
    :cond_b
    :goto_b
    monitor-exit v1

    return-void

    .line 148
    :cond_d
    :try_start_d
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    int-to-long v2, v0

    .line 151
    sget-object v0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x7800

    if-le v0, v4, :cond_33

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit16 v0, v0, -0x7800

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v4, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_a2

    sget-object v4, Lcom/tencent/bugly/proguard/y;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    sget-object v4, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/tencent/bugly/proguard/y;->m:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0001\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/bugly/proguard/y;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    sget-object v2, Lcom/tencent/bugly/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8a
    .catchall {:try_start_d .. :try_end_8a} :catchall_9f

    .line 154
    :try_start_8a
    sget-object v3, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-object v3, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sget v4, Lcom/tencent/bugly/proguard/y;->c:I

    if-gt v3, v4, :cond_a7

    .line 156
    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_8a .. :try_end_9a} :catchall_9c

    goto/16 :goto_b

    .line 193
    :catchall_9c
    move-exception v0

    :try_start_9d
    monitor-exit v2

    throw v0
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_9f

    .line 143
    :catchall_9f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 151
    :cond_a2
    :try_start_a2
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_9f

    move-result-object v0

    goto :goto_42

    .line 158
    :cond_a7
    :try_start_a7
    sget-boolean v3, Lcom/tencent/bugly/proguard/y;->f:Z

    if-eqz v3, :cond_ae

    .line 160
    monitor-exit v2

    goto/16 :goto_b

    .line 163
    :cond_ae
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/bugly/proguard/y;->f:Z

    .line 164
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v3

    new-instance v4, Lcom/tencent/bugly/proguard/y$1;

    invoke-direct {v4, v0}, Lcom/tencent/bugly/proguard/y$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 193
    monitor-exit v2
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_9c

    goto/16 :goto_b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 126
    if-nez p2, :cond_3

    .line 133
    :goto_2
    return-void

    .line 129
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 130
    if-nez v0, :cond_b

    const-string v0, ""

    .line 131
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Z)Z
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/y;->f:Z

    return v0
.end method

.method public static a()[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 221
    sget-boolean v1, Lcom/tencent/bugly/proguard/y;->a:Z

    if-nez v1, :cond_6

    .line 241
    :goto_5
    return-object v0

    .line 224
    :cond_6
    sget-object v2, Lcom/tencent/bugly/proguard/y;->n:Ljava/lang/Object;

    monitor-enter v2

    .line 229
    :try_start_9
    sget-object v1, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/y$a;->d(Lcom/tencent/bugly/proguard/y$a;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 230
    sget-object v1, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/y$a;->a(Lcom/tencent/bugly/proguard/y$a;)Ljava/io/File;

    move-result-object v1

    .line 234
    :goto_1b
    sget-object v3, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_20} :catch_3a
    .catchall {:try_start_9 .. :try_end_20} :catchall_27

    move-result v3

    if-nez v3, :cond_2c

    if-nez v1, :cond_2c

    .line 235
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_27

    goto :goto_5

    .line 243
    :catchall_27
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2a
    move-object v1, v0

    .line 232
    goto :goto_1b

    .line 237
    :cond_2c
    :try_start_2c
    sget-object v3, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BuglyLog.txt"

    invoke-static {v1, v3, v4}, Lcom/tencent/bugly/proguard/z;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_37} :catch_3a
    .catchall {:try_start_2c .. :try_end_37} :catchall_27

    move-result-object v0

    .line 238
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_27

    goto :goto_5

    .line 241
    :catch_3a
    move-exception v1

    monitor-exit v2

    goto :goto_5
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/bugly/proguard/y;->n:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1b

    iget-object v1, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    if-eqz v1, :cond_1b

    .line 65
    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->D:Lcom/tencent/bugly/crashreport/a;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/bugly/crashreport/a;->appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result v0

    .line 72
    :goto_10
    return v0

    .line 67
    :catch_11
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic c()Lcom/tencent/bugly/proguard/y$a;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/bugly/proguard/y;->g:Lcom/tencent/bugly/proguard/y$a;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/bugly/proguard/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/bugly/proguard/y;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method
