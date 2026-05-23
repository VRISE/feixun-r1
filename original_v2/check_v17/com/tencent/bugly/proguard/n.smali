.class public final Lcom/tencent/bugly/proguard/n;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:J

.field private static b:Lcom/tencent/bugly/proguard/n;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/bugly/proguard/n;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/n;->e:Ljava/util/Map;

    .line 57
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    .line 58
    const-string v0, "crashrecord"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/n;
    .registers 2

    .prologue
    .line 75
    const-class v0, Lcom/tencent/bugly/proguard/n;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/n;
    .registers 3

    .prologue
    .line 68
    const-class v1, Lcom/tencent/bugly/proguard/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    if-nez v0, :cond_e

    .line 69
    new-instance v0, Lcom/tencent/bugly/proguard/n;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;

    .line 71
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/n;->b:Lcom/tencent/bugly/proguard/n;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 68
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;I)Ljava/util/List;
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List",
            "<*>;>(ITT;)V"
        }
    .end annotation

    .prologue
    .line 224
    monitor-enter p0

    if-nez p2, :cond_5

    .line 243
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 227
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    const-string v2, "crashrecord"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_32
    .catchall {:try_start_5 .. :try_end_20} :catchall_3c

    .line 228
    const/4 v2, 0x0

    .line 230
    :try_start_21
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_3f
    .catchall {:try_start_21 .. :try_end_2b} :catchall_52

    .line 231
    :try_start_2b
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_5c
    .catchall {:try_start_2b .. :try_end_2e} :catchall_5a

    .line 236
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32
    .catchall {:try_start_2e .. :try_end_31} :catchall_3c

    goto :goto_3

    .line 240
    :catch_32
    move-exception v0

    .line 241
    :try_start_33
    const-string v0, "writeCrashRecord error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_3c

    goto :goto_3

    .line 224
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :catch_3f
    move-exception v0

    move-object v1, v2

    .line 233
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    const-string v0, "open record file error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_5a

    .line 236
    if-eqz v1, :cond_3

    .line 237
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_3

    .line 236
    :catchall_52
    move-exception v0

    move-object v1, v2

    :goto_54
    if-eqz v1, :cond_59

    .line 237
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_59
    throw v0
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_32
    .catchall {:try_start_4e .. :try_end_5a} :catchall_3c

    .line 236
    :catchall_5a
    move-exception v0

    goto :goto_54

    .line 232
    :catch_5c
    move-exception v0

    goto :goto_41
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/n;ILjava/util/List;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/n;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/n;->e:Ljava/util/Map;

    return-object v0
.end method

.method private declared-synchronized b(I)Z
    .registers 14

    .prologue
    const-wide/32 v10, 0x5265c00

    const/4 v1, 0x0

    .line 87
    monitor-enter p0

    :try_start_5
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->c(I)Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_4c
    .catchall {:try_start_5 .. :try_end_8} :catchall_8c

    move-result-object v2

    .line 88
    if-nez v2, :cond_e

    move v0, v1

    .line 124
    :goto_c
    monitor-exit p0

    return v0

    .line 91
    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_20
    :goto_20
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/m;

    .line 95
    iget-object v8, v0, Lcom/tencent/bugly/proguard/m;->b:Ljava/lang/String;

    if-eqz v8, :cond_41

    iget-object v8, v0, Lcom/tencent/bugly/proguard/m;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget v8, v0, Lcom/tencent/bugly/proguard/m;->d:I

    if-lez v8, :cond_41

    .line 97
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_41
    iget-wide v8, v0, Lcom/tencent/bugly/proguard/m;->c:J

    add-long/2addr v8, v10

    cmp-long v8, v8, v4

    if-gez v8, :cond_20

    .line 101
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4b} :catch_4c
    .catchall {:try_start_e .. :try_end_4b} :catchall_8c

    goto :goto_20

    .line 122
    :catch_4c
    move-exception v0

    :try_start_4d
    const-string v0, "isFrequentCrash failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_8c

    move v0, v1

    .line 124
    goto :goto_c

    .line 104
    :cond_57
    :try_start_57
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x2

    if-lt v0, v7, :cond_84

    .line 106
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_82

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/m;

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/m;->c:J

    add-long/2addr v6, v10

    cmp-long v0, v6, v4

    if-gez v0, :cond_82

    .line 108
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 109
    invoke-direct {p0, p1, v2}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V

    move v0, v1

    .line 110
    goto :goto_c

    .line 113
    :cond_82
    const/4 v0, 0x1

    goto :goto_c

    .line 117
    :cond_84
    invoke-interface {v2, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 118
    invoke-direct {p0, p1, v2}, Lcom/tencent/bugly/proguard/n;->a(ILjava/util/List;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_8a} :catch_4c
    .catchall {:try_start_57 .. :try_end_8a} :catchall_8c

    move v0, v1

    .line 119
    goto :goto_c

    .line 87
    :catchall_8c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/n;I)Z
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/n;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/n;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List",
            "<*>;>(I)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    monitor-enter p0

    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/n;->c:Landroid/content/Context;

    const-string v3, "crashrecord"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_3a
    .catchall {:try_start_2 .. :try_end_20} :catchall_55

    move-result v2

    if-nez v2, :cond_26

    move-object v0, v1

    .line 218
    :goto_24
    monitor-exit p0

    return-object v0

    .line 203
    :cond_26
    :try_start_26
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_30} :catch_58
    .catchall {:try_start_26 .. :try_end_30} :catchall_68

    .line 204
    :try_start_30
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_36} :catch_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_36} :catch_77
    .catchall {:try_start_30 .. :try_end_36} :catchall_70

    .line 211
    :try_start_36
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_55

    goto :goto_24

    .line 215
    :catch_3a
    move-exception v0

    .line 216
    :try_start_3b
    const-string v0, "readCrashRecord error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_55

    :cond_43
    :goto_43
    move-object v0, v1

    .line 218
    goto :goto_24

    .line 207
    :catch_45
    move-exception v0

    move-object v0, v1

    :goto_47
    :try_start_47
    const-string v2, "open record file error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_72

    .line 211
    if-eqz v0, :cond_43

    .line 212
    :try_start_51
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_3a
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_43

    .line 197
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 209
    :catch_58
    move-exception v0

    move-object v2, v1

    :goto_5a
    :try_start_5a
    const-string v0, "get object error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_70

    .line 211
    if-eqz v2, :cond_43

    .line 212
    :try_start_64
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_43

    .line 211
    :catchall_68
    move-exception v0

    move-object v2, v1

    :goto_6a
    if-eqz v2, :cond_6f

    .line 212
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    :cond_6f
    throw v0
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_70} :catch_3a
    .catchall {:try_start_64 .. :try_end_70} :catchall_55

    .line 211
    :catchall_70
    move-exception v0

    goto :goto_6a

    :catchall_72
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_6a

    .line 209
    :catch_77
    move-exception v0

    goto :goto_5a

    .line 207
    :catch_79
    move-exception v0

    move-object v0, v2

    goto :goto_47
.end method


# virtual methods
.method public final declared-synchronized a(II)V
    .registers 6

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/proguard/n$1;

    const/16 v2, 0x3ec

    invoke-direct {v1, p0, v2, p2}, Lcom/tencent/bugly/proguard/n$1;-><init>(Lcom/tencent/bugly/proguard/n;II)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 193
    monitor-exit p0

    return-void

    .line 135
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 252
    monitor-enter p0

    .line 254
    :try_start_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/n;->f:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/bugly/proguard/n;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 255
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/n$2;

    invoke-direct {v2, p0, p1}, Lcom/tencent/bugly/proguard/n$2;-><init>(Lcom/tencent/bugly/proguard/n;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_30
    .catchall {:try_start_2 .. :try_end_2e} :catchall_3a

    .line 266
    :goto_2e
    monitor-exit p0

    return v0

    .line 264
    :catch_30
    move-exception v1

    :try_start_31
    const-string v1, "canInit error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_2e

    .line 252
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
