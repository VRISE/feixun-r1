.class public Lcom/unisound/vui/data/c/a/d;
.super Lorg/greenrobot/greendao/AbstractDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/unisound/vui/data/entity/a/a/d;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/unisound/vui/data/c/d;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static a(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 5

    if-eqz p1, :cond_21

    const-string v0, "IF NOT EXISTS "

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"ORIGIN_PUSH_LOCATION\" (\"_id\" INTEGER PRIMARY KEY ,\"PUSH_ACTION_ID\" TEXT,\"LNG\" REAL,\"LAT\" REAL,\"ADDRESS\" TEXT,\"NAME\" TEXT,\"CITY_CODE\" TEXT,\"PROVINCE\" TEXT,\"CITY\" TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_21
    const-string v0, ""

    goto :goto_4
.end method

.method public static b(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_21

    const-string v0, "IF EXISTS "

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"ORIGIN_PUSH_LOCATION\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_21
    const-string v0, ""

    goto :goto_f
.end method


# virtual methods
.method public a(Landroid/database/Cursor;I)Ljava/lang/Long;
    .registers 5

    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Lcom/unisound/vui/data/entity/a/a/d;)Ljava/lang/Long;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final a(Lcom/unisound/vui/data/entity/a/a/d;J)Ljava/lang/Long;
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/vui/data/entity/a/a/d;->a(Ljava/lang/Long;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a/d;I)V
    .registers 8

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    move-object v0, v1

    :goto_a
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->a(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_78

    move-object v0, v1

    :goto_16
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->a(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    move-object v0, v1

    :goto_22
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->a(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    move-object v0, v1

    :goto_2e
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->b(Ljava/lang/Double;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_95

    move-object v0, v1

    :goto_3a
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->b(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9c

    move-object v0, v1

    :goto_46
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->c(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    move-object v0, v1

    :goto_52
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->d(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    move-object v0, v1

    :goto_5e
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/d;->e(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b1

    :goto_69
    invoke-virtual {p2, v1}, Lcom/unisound/vui/data/entity/a/a/d;->f(Ljava/lang/String;)V

    return-void

    :cond_6d
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_a

    :cond_78
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_7f
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_22

    :cond_8a
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    :cond_95
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_9c
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_a3
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_aa
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    :cond_b1
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_69
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a/d;)V
    .registers 7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_11
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->c()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    :cond_29
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->d()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    :cond_37
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_41
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_55
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_60
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6b
    return-void
.end method

.method protected final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a/d;)V
    .registers 7

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_11
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->c()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    :cond_29
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->d()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    :cond_37
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    const/4 v1, 0x5

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_41
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    const/4 v1, 0x7

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_55
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_60
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    const/16 v1, 0x9

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6b
    return-void
.end method

.method public b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a/d;
    .registers 14

    const/4 v9, 0x0

    new-instance v0, Lcom/unisound/vui/data/entity/a/a/d;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object v1, v9

    :goto_c
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_62

    move-object v2, v9

    :goto_15
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_69

    move-object v3, v9

    :goto_1e
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_74

    move-object v4, v9

    :goto_27
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    move-object v5, v9

    :goto_30
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_86

    move-object v6, v9

    :goto_39
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_8d

    move-object v7, v9

    :goto_42
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_94

    move-object v8, v9

    :goto_4b
    add-int/lit8 v10, p2, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_9b

    :goto_53
    invoke-direct/range {v0 .. v9}, Lcom/unisound/vui/data/entity/a/a/d;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_57
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_c

    :cond_62
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_69
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_1e

    :cond_74
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_27

    :cond_7f
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_30

    :cond_86
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_39

    :cond_8d
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_42

    :cond_94
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4b

    :cond_9b
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_53
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/d;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a/d;)V

    return-void
.end method

.method protected synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/d;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a/d;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a/d;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/c/a/d;->a(Lcom/unisound/vui/data/entity/a/a/d;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final isEntityUpdateable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/d;->b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a/d;->a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a/d;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/d;->a(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a/d;->a(Lcom/unisound/vui/data/entity/a/a/d;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
