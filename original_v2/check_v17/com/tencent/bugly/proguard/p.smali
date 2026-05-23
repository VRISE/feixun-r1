.class public final Lcom/tencent/bugly/proguard/p;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/p$a;
    }
.end annotation


# static fields
.field private static a:Lcom/tencent/bugly/proguard/p;

.field private static b:Lcom/tencent/bugly/proguard/q;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    .line 30
    sput-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/proguard/p;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/tencent/bugly/proguard/q;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/proguard/q;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 212
    monitor-enter p0

    .line 215
    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_e

    .line 217
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_15
    .catchall {:try_start_2 .. :try_end_d} :catchall_29

    move-result v0

    .line 224
    :cond_e
    if-eqz p4, :cond_13

    .line 225
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_26

    .line 231
    :cond_13
    :goto_13
    monitor-exit p0

    return v0

    .line 228
    :catch_15
    move-exception v1

    .line 220
    :try_start_16
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 221
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_29

    .line 224
    :cond_1f
    if-eqz p4, :cond_13

    .line 225
    const/4 v1, 0x0

    :try_start_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_13

    .line 212
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :catchall_29
    move-exception v0

    if-eqz p4, :cond_30

    .line 225
    const/4 v1, 0x0

    :try_start_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    :cond_30
    throw v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_26
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 157
    monitor-enter p0

    .line 160
    :try_start_3
    sget-object v2, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_23

    if-eqz p2, :cond_23

    .line 162
    const-string v3, "_id"

    invoke-virtual {v2, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 163
    cmp-long v4, v2, v0

    if-ltz v4, :cond_2a

    .line 164
    const-string v4, "[Database] insert %s success."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_22} :catch_36
    .catchall {:try_start_3 .. :try_end_22} :catchall_4b

    :goto_22
    move-wide v0, v2

    .line 175
    :cond_23
    if-eqz p3, :cond_28

    .line 176
    :try_start_25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_48

    .line 182
    :cond_28
    :goto_28
    monitor-exit p0

    return-wide v0

    .line 166
    :cond_2a
    :try_start_2a
    const-string v4, "[Database] replace %s error."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_35} :catch_36
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    goto :goto_22

    .line 179
    :catch_36
    move-exception v2

    .line 171
    :try_start_37
    invoke-static {v2}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 172
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_4b

    .line 175
    :cond_40
    if-eqz p3, :cond_28

    .line 176
    const-wide/16 v2, 0x0

    :try_start_44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_28

    .line 157
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :catchall_4b
    move-exception v0

    if-eqz p3, :cond_53

    .line 176
    const-wide/16 v2, 0x0

    :try_start_50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    :cond_53
    throw v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_48
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;
    .registers 12

    .prologue
    .line 28
    invoke-direct/range {p0 .. p10}, Lcom/tencent/bugly/proguard/p;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;
    .registers 22

    .prologue
    .line 188
    monitor-enter p0

    const/4 v10, 0x0

    .line 191
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_35

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 193
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_20
    .catchall {:try_start_2 .. :try_end_1b} :catchall_2e

    move-result-object v0

    .line 202
    :goto_1c
    if-eqz p10, :cond_1e

    .line 206
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 197
    :catch_20
    move-exception v0

    .line 198
    :try_start_21
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2e

    .line 202
    :cond_2a
    if-eqz p10, :cond_33

    move-object v0, v10

    .line 203
    goto :goto_1e

    .line 202
    :catchall_2e
    move-exception v0

    .line 203
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 188
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    move-object v0, v10

    goto :goto_1e

    :cond_35
    move-object v0, v10

    goto :goto_1c
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/p;
    .registers 2

    .prologue
    .line 54
    const-class v0, Lcom/tencent/bugly/proguard/p;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/p;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;)",
            "Lcom/tencent/bugly/proguard/p;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v1, Lcom/tencent/bugly/proguard/p;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    if-nez v0, :cond_e

    .line 48
    new-instance v0, Lcom/tencent/bugly/proguard/p;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/proguard/p;-><init>(Landroid/content/Context;Ljava/util/List;)V

    sput-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    .line 50
    :cond_e
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 571
    if-nez p0, :cond_4

    .line 588
    :cond_3
    :goto_3
    return-object v0

    .line 575
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 576
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 577
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/tencent/bugly/proguard/r;->b:I

    .line 578
    const-string v2, "_pc"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    .line 579
    const-string v2, "_th"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    .line 580
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 581
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->g:[B
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_51} :catch_53

    move-object v0, v1

    .line 582
    goto :goto_3

    .line 583
    :catch_53
    move-exception v1

    .line 584
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 585
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/o;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 317
    const/4 v2, 0x0

    .line 319
    :try_start_1
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/p;->c(I)Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_40

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_3c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3a

    .line 322
    :try_start_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/r;

    .line 323
    iget-object v3, v0, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 324
    if-eqz v3, :cond_10

    .line 325
    iget-object v0, v0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_25} :catch_26
    .catchall {:try_start_c .. :try_end_25} :catchall_3a

    goto :goto_10

    .line 329
    :catch_26
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 330
    :goto_2a
    :try_start_2a
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 331
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_3a

    .line 334
    :cond_33
    if-eqz p2, :cond_35

    .line 338
    :cond_35
    :goto_35
    return-object v0

    :cond_36
    move-object v0, v1

    .line 334
    :goto_37
    if-eqz p2, :cond_35

    goto :goto_35

    :catchall_3a
    move-exception v0

    .line 335
    throw v0

    .line 329
    :catch_3c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_2a

    :cond_40
    move-object v0, v2

    goto :goto_37
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z
    .registers 11

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 658
    monitor-enter p0

    .line 661
    :try_start_3
    sget-object v2, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 662
    if-eqz v3, :cond_3e

    .line 664
    invoke-static {p2}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 665
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    :goto_20
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 672
    const-string v3, "[Database] deleted %s data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_pf"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3b} :catch_6d
    .catchall {:try_start_3 .. :try_end_3b} :catchall_81

    .line 673
    if-lez v2, :cond_6b

    :goto_3d
    move v1, v0

    .line 680
    :cond_3e
    if-eqz p3, :cond_43

    .line 681
    :try_start_40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_7e

    .line 687
    :cond_43
    :goto_43
    monitor-exit p0

    return v1

    .line 667
    :cond_45
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " and _tp"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_69} :catch_6d
    .catchall {:try_start_45 .. :try_end_69} :catchall_81

    move-result-object v2

    goto :goto_20

    :cond_6b
    move v0, v1

    .line 673
    goto :goto_3d

    .line 684
    :catch_6d
    move-exception v0

    .line 676
    :try_start_6e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 677
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_6e .. :try_end_77} :catchall_81

    .line 680
    :cond_77
    if-eqz p3, :cond_43

    .line 681
    const/4 v0, 0x0

    :try_start_7a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_43

    .line 658
    :catchall_7e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 684
    :catchall_81
    move-exception v0

    if-eqz p3, :cond_88

    .line 681
    const/4 v1, 0x0

    :try_start_85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 683
    :cond_88
    throw v0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_7e
.end method

.method private a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 296
    .line 298
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 299
    int-to-long v2, p1

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 300
    iput-object p2, v1, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 302
    iput-object p3, v1, Lcom/tencent/bugly/proguard/r;->g:[B

    .line 303
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/p;->b(Lcom/tencent/bugly/proguard/r;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_1d
    .catchall {:try_start_1 .. :try_end_16} :catchall_2d

    move-result v0

    .line 309
    if-eqz p4, :cond_1c

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 313
    :cond_1c
    :goto_1c
    return v0

    .line 304
    :catch_1d
    move-exception v1

    .line 305
    :try_start_1e
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 306
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    .line 309
    :cond_27
    if-eqz p4, :cond_1c

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_1c

    .line 309
    :catchall_2d
    move-exception v1

    if-eqz p4, :cond_33

    .line 310
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_33
    throw v1
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z
    .registers 5

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/p;ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z
    .registers 6

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 721
    if-nez p0, :cond_4

    .line 736
    :cond_3
    :goto_3
    return-object v0

    .line 725
    :cond_4
    :try_start_4
    new-instance v1, Lcom/tencent/bugly/proguard/r;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/r;-><init>()V

    .line 726
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->a:J

    .line 727
    const-string v2, "_tm"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/r;->e:J

    .line 728
    const-string v2, "_tp"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    .line 729
    const-string v2, "_dt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/r;->g:[B
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_39} :catch_3b

    move-object v0, v1

    .line 730
    goto :goto_3

    .line 731
    :catch_3b
    move-exception v1

    .line 732
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 733
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized b(Lcom/tencent/bugly/proguard/r;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 385
    monitor-enter p0

    if-nez p1, :cond_7

    .line 409
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 390
    :cond_7
    :try_start_7
    sget-object v2, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 391
    if-eqz v2, :cond_5

    .line 392
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->d(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_5

    .line 394
    const-string v4, "t_pf"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 395
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 396
    const-string v4, "[Database] insert %s success."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_pf"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 397
    iput-wide v2, p1, Lcom/tencent/bugly/proguard/r;->a:J
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_32} :catch_34
    .catchall {:try_start_7 .. :try_end_32} :catchall_3f

    move v0, v1

    .line 398
    goto :goto_5

    .line 405
    :catch_34
    move-exception v1

    .line 406
    :try_start_35
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 407
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_5

    .line 411
    :catchall_3f
    move-exception v0

    .line 412
    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 385
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 542
    if-nez p0, :cond_4

    .line 564
    :cond_3
    :goto_3
    return-object v0

    .line 547
    :cond_4
    :try_start_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 548
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1c

    .line 549
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    :cond_1c
    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/proguard/r;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "_th"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 555
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    if-eqz v2, :cond_4b

    .line 556
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_4d

    :cond_4b
    move-object v0, v1

    .line 558
    goto :goto_3

    .line 559
    :catch_4d
    move-exception v1

    .line 560
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 561
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method private declared-synchronized c(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 598
    monitor-enter p0

    .line 601
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_58

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    const-string v1, "t_pf"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_23} :catch_cb
    .catchall {:try_start_2 .. :try_end_23} :catchall_c5

    move-result-object v2

    .line 606
    if-nez v2, :cond_2e

    .line 607
    if-eqz v2, :cond_2b

    .line 642
    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_85

    :cond_2b
    move-object v0, v8

    .line 648
    :goto_2c
    monitor-exit p0

    return-object v0

    .line 610
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    :goto_38
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 613
    invoke-static {v2}, Lcom/tencent/bugly/proguard/p;->b(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;

    move-result-object v5

    .line 614
    if-eqz v5, :cond_5a

    .line 615
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_47} :catch_48
    .catchall {:try_start_2e .. :try_end_47} :catchall_7e

    goto :goto_38

    .line 645
    :catch_48
    move-exception v0

    move-object v1, v2

    .line 637
    :goto_4a
    :try_start_4a
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 638
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_c8

    .line 641
    :cond_53
    if-eqz v1, :cond_58

    .line 642
    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_85

    :cond_58
    move-object v0, v8

    .line 648
    goto :goto_2c

    .line 619
    :cond_5a
    :try_start_5a
    const-string v5, "_tp"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 620
    const-string v6, " or _tp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_73} :catch_74
    .catchall {:try_start_5a .. :try_end_73} :catchall_7e

    goto :goto_38

    .line 622
    :catch_74
    move-exception v5

    :try_start_75
    const-string v5, "[Database] unknown id."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7d} :catch_48
    .catchall {:try_start_75 .. :try_end_7d} :catchall_7e

    goto :goto_38

    .line 645
    :catchall_7e
    move-exception v0

    :goto_7f
    if-eqz v2, :cond_84

    .line 642
    :try_start_81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 644
    :cond_84
    throw v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .line 598
    :catchall_85
    move-exception v0

    monitor-exit p0

    throw v0

    .line 628
    :cond_88
    :try_start_88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_bd

    .line 629
    const-string v5, " and _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 631
    const-string v4, "t_pf"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 632
    const-string v3, "[Database] deleted %s illegal data %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_pf"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_bd} :catch_48
    .catchall {:try_start_88 .. :try_end_bd} :catchall_7e

    .line 641
    :cond_bd
    if-eqz v2, :cond_c2

    .line 642
    :try_start_bf
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_85

    :cond_c2
    move-object v0, v1

    .line 644
    goto/16 :goto_2c

    .line 645
    :catchall_c5
    move-exception v0

    move-object v2, v8

    goto :goto_7f

    :catchall_c8
    move-exception v0

    move-object v2, v1

    goto :goto_7f

    :catch_cb
    move-exception v0

    move-object v1, v8

    goto/16 :goto_4a
.end method

.method private static d(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 694
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_b
    move-object v0, v1

    .line 714
    :cond_c
    :goto_c
    return-object v0

    .line 699
    :cond_d
    :try_start_d
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 700
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/r;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_25

    .line 701
    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    :cond_25
    const-string v2, "_tp"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/r;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    iget-object v2, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    if-eqz v2, :cond_c

    .line 706
    const-string v2, "_dt"

    iget-object v3, p0, Lcom/tencent/bugly/proguard/r;->g:[B

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_42} :catch_43

    goto :goto_c

    .line 709
    :catch_43
    move-exception v0

    .line 710
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 711
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4d
    move-object v0, v1

    .line 714
    goto :goto_c
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;Z)J
    .registers 7

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Landroid/database/Cursor;
    .registers 18

    .prologue
    .line 91
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/p;->a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/o;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 423
    monitor-enter p0

    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_89

    move-result-object v0

    .line 424
    if-eqz v0, :cond_5c

    .line 427
    if-ltz p1, :cond_30

    :try_start_c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    :goto_1b
    const-string v1, "t_lr"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_25} :catch_c4
    .catchall {:try_start_c .. :try_end_25} :catchall_be

    move-result-object v2

    .line 431
    if-nez v2, :cond_32

    .line 432
    if-eqz v2, :cond_2d

    .line 467
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_89

    :cond_2d
    move-object v0, v8

    .line 475
    :goto_2e
    monitor-exit p0

    return-object v0

    :cond_30
    move-object v3, v8

    .line 427
    goto :goto_1b

    .line 435
    :cond_32
    :try_start_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 437
    :goto_3c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 438
    invoke-static {v2}, Lcom/tencent/bugly/proguard/p;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/proguard/r;

    move-result-object v4

    .line 439
    if-eqz v4, :cond_5e

    .line 440
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4b} :catch_4c
    .catchall {:try_start_32 .. :try_end_4b} :catchall_82

    goto :goto_3c

    .line 461
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 462
    :goto_4e
    :try_start_4e
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 463
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_c1

    .line 466
    :cond_57
    if-eqz v1, :cond_5c

    .line 467
    :try_start_59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_89

    :cond_5c
    move-object v0, v8

    .line 475
    goto :goto_2e

    .line 444
    :cond_5e
    :try_start_5e
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 445
    const-string v6, " or _id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_77} :catch_78
    .catchall {:try_start_5e .. :try_end_77} :catchall_82

    goto :goto_3c

    .line 448
    :catch_78
    move-exception v4

    :try_start_79
    const-string v4, "[Database] unknown id."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_81} :catch_4c
    .catchall {:try_start_79 .. :try_end_81} :catchall_82

    goto :goto_3c

    .line 470
    :catchall_82
    move-exception v0

    :goto_83
    if-eqz v2, :cond_88

    .line 467
    :try_start_85
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 469
    :cond_88
    throw v0
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_89

    .line 423
    :catchall_89
    move-exception v0

    monitor-exit p0

    throw v0

    .line 454
    :cond_8c
    :try_start_8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b6

    .line 456
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    const-string v4, "t_lr"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 458
    const-string v3, "[Database] deleted %s illegal data %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "t_lr"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_b6} :catch_4c
    .catchall {:try_start_8c .. :try_end_b6} :catchall_82

    .line 466
    :cond_b6
    if-eqz v2, :cond_bb

    .line 467
    :try_start_b8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_89

    :cond_bb
    move-object v0, v1

    .line 469
    goto/16 :goto_2e

    .line 470
    :catchall_be
    move-exception v0

    move-object v2, v8

    goto :goto_83

    :catchall_c1
    move-exception v0

    move-object v2, v1

    goto :goto_83

    .line 461
    :catch_c4
    move-exception v0

    move-object v1, v8

    goto :goto_4e
.end method

.method public final a(ILcom/tencent/bugly/proguard/o;Z)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/tencent/bugly/proguard/o;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/bugly/proguard/p;->a(ILcom/tencent/bugly/proguard/o;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/proguard/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3a

    move-result v0

    if-nez v0, :cond_b

    .line 511
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 486
    :cond_b
    :try_start_b
    sget-object v0, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_9

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/r;

    .line 490
    const-string v4, " or _id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/bugly/proguard/r;->a:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    goto :goto_1c

    .line 483
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 493
    :cond_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4c

    .line 495
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_4c
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_3a

    .line 499
    :try_start_50
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 500
    const-string v1, "[Database] deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_lr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_6b} :catch_6c
    .catchall {:try_start_50 .. :try_end_6b} :catchall_77

    goto :goto_9

    .line 507
    :catch_6c
    move-exception v0

    .line 502
    :try_start_6d
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 503
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_6d .. :try_end_76} :catchall_77

    goto :goto_9

    .line 507
    :catchall_77
    move-exception v0

    :try_start_78
    throw v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_3a
.end method

.method public final a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;Z)Z
    .registers 7

    .prologue
    .line 285
    const/16 v0, 0x22b

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/o;)Z

    move-result v0

    return v0
.end method

.method public final a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;Z)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 243
    if-nez p5, :cond_15

    .line 244
    new-instance v0, Lcom/tencent/bugly/proguard/p$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/bugly/proguard/p$a;-><init>(Lcom/tencent/bugly/proguard/p;ILcom/tencent/bugly/proguard/o;)V

    .line 245
    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/p$a;->a(ILjava/lang/String;[B)V

    .line 246
    invoke-static {}, Lcom/tencent/bugly/proguard/w;->a()Lcom/tencent/bugly/proguard/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_14
    return v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/tencent/bugly/proguard/p;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/o;)Z

    move-result v0

    goto :goto_14
.end method

.method public final declared-synchronized a(Lcom/tencent/bugly/proguard/r;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 347
    monitor-enter p0

    if-nez p1, :cond_7

    .line 371
    :cond_5
    :goto_5
    monitor-exit p0

    return v0

    .line 352
    :cond_7
    :try_start_7
    sget-object v2, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 353
    if-eqz v2, :cond_5

    .line 354
    invoke-static {p1}, Lcom/tencent/bugly/proguard/p;->c(Lcom/tencent/bugly/proguard/r;)Landroid/content/ContentValues;

    move-result-object v3

    .line 355
    if-eqz v3, :cond_5

    .line 356
    const-string v4, "t_lr"

    const-string v5, "_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 357
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5

    .line 358
    const-string v4, "[Database] insert %s success."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "t_lr"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 359
    iput-wide v2, p1, Lcom/tencent/bugly/proguard/r;->a:J
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_32} :catch_34
    .catchall {:try_start_7 .. :try_end_32} :catchall_3f

    move v0, v1

    .line 360
    goto :goto_5

    .line 367
    :catch_34
    move-exception v1

    .line 368
    :try_start_35
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 369
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3f

    goto :goto_5

    .line 373
    :catchall_3f
    move-exception v0

    .line 374
    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 347
    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 519
    monitor-enter p0

    :try_start_2
    sget-object v1, Lcom/tencent/bugly/proguard/p;->b:Lcom/tencent/bugly/proguard/q;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_45

    move-result-object v1

    .line 520
    if-eqz v1, :cond_36

    .line 522
    if-ltz p1, :cond_1b

    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "_tp = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_1b
    const-string v2, "t_lr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 524
    const-string v1, "[Database] deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_lr"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_36} :catch_38
    .catchall {:try_start_c .. :try_end_36} :catchall_43

    .line 535
    :cond_36
    :goto_36
    monitor-exit p0

    return-void

    .line 531
    :catch_38
    move-exception v0

    .line 526
    :try_start_39
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 527
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_43

    goto :goto_36

    .line 531
    :catchall_43
    move-exception v0

    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 519
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method
