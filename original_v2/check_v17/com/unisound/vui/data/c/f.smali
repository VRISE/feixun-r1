.class public Lcom/unisound/vui/data/c/f;
.super Lorg/greenrobot/greendao/AbstractDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/data/c/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/unisound/vui/data/entity/a/d;",
        "Ljava/lang/String;",
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

    const-string v1, "\"WE_CHAT_MESSAGE\" (\"ID\" TEXT PRIMARY KEY NOT NULL ,\"FROM_USER\" TEXT,\"TO_USER\" TEXT,\"MSG_TYPE\" INTEGER,\"TIME\" INTEGER,\"SUCCESS\" INTEGER,\"READ\" INTEGER,\"CONTENT\" TEXT,\"GROUP_MEMBER_ID\" TEXT,\"IS_RECEIVE\" INTEGER);"

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

    const-string v1, "\"WE_CHAT_MESSAGE\""

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
.method public a(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 4

    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Lcom/unisound/vui/data/entity/a/d;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected final a(Lcom/unisound/vui/data/entity/a/d;J)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/unisound/vui/data/entity/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/d;I)V
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    move-object v0, v1

    :goto_c
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->a(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_82

    move-object v0, v1

    :goto_18
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->b(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_89

    move-object v0, v1

    :goto_24
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->c(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_90

    move-object v0, v1

    :goto_30
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->a(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9b

    move-object v0, v1

    :goto_3c
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->a(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    move-object v0, v1

    :goto_48
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->a(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b6

    move-object v0, v1

    :goto_54
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->b(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c6

    move-object v0, v1

    :goto_60
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->d(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_cd

    move-object v0, v1

    :goto_6c
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/d;->e(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d4

    :goto_77
    invoke-virtual {p2, v1}, Lcom/unisound/vui/data/entity/a/d;->c(Ljava/lang/Boolean;)V

    return-void

    :cond_7b
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_82
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_89
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_90
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_30

    :cond_9b
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3c

    :cond_a6
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_b4

    move v0, v2

    :goto_af
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_48

    :cond_b4
    move v0, v3

    goto :goto_af

    :cond_b6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_c4

    move v0, v2

    :goto_bf
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_54

    :cond_c4
    move v0, v3

    goto :goto_bf

    :cond_c6
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_60

    :cond_cd
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6c

    :cond_d4
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_e1

    :goto_dc
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_77

    :cond_e1
    move v2, v3

    goto :goto_dc
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/d;)V
    .registers 11

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_25
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_34
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_42
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_53

    const/4 v6, 0x6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8c

    move-wide v0, v2

    :goto_50
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_53
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_64

    const/4 v6, 0x7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    move-wide v0, v2

    :goto_61
    invoke-virtual {p1, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_64
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6f
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7a
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8b

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    :goto_88
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_8b
    return-void

    :cond_8c
    move-wide v0, v4

    goto :goto_50

    :cond_8e
    move-wide v0, v4

    goto :goto_61

    :cond_90
    move-wide v2, v4

    goto :goto_88
.end method

.method protected final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/d;)V
    .registers 11

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_11
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_25
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_34
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_42

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_42
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_53

    const/4 v6, 0x6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8c

    move-wide v0, v2

    :goto_50
    invoke-interface {p1, v6, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_53
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->g()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_64

    const/4 v6, 0x7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    move-wide v0, v2

    :goto_61
    invoke-interface {p1, v6, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_64
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    const/16 v1, 0x8

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6f
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7a

    const/16 v1, 0x9

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7a
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/d;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8b

    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_90

    :goto_88
    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_8b
    return-void

    :cond_8c
    move-wide v0, v4

    goto :goto_50

    :cond_8e
    move-wide v0, v4

    goto :goto_61

    :cond_90
    move-wide v2, v4

    goto :goto_88
.end method

.method public b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/d;
    .registers 14

    new-instance v0, Lcom/unisound/vui/data/entity/a/d;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_60

    const/4 v1, 0x0

    :goto_b
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x0

    :goto_14
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    const/4 v3, 0x0

    :goto_1d
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v4, 0x0

    :goto_26
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_80

    const/4 v5, 0x0

    :goto_2f
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v6, 0x0

    :goto_38
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_9b

    const/4 v7, 0x0

    :goto_41
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_ab

    const/4 v8, 0x0

    :goto_4a
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_b2

    const/4 v9, 0x0

    :goto_53
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_b9

    const/4 v10, 0x0

    :goto_5c
    invoke-direct/range {v0 .. v10}, Lcom/unisound/vui/data/entity/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :cond_60
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_67
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_6e
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_75
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_26

    :cond_80
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2f

    :cond_8b
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_99

    const/4 v6, 0x1

    :goto_94
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_38

    :cond_99
    const/4 v6, 0x0

    goto :goto_94

    :cond_9b
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-eqz v7, :cond_a9

    const/4 v7, 0x1

    :goto_a4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_41

    :cond_a9
    const/4 v7, 0x0

    goto :goto_a4

    :cond_ab
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4a

    :cond_b2
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_53

    :cond_b9
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getShort(I)S

    move-result v10

    if-eqz v10, :cond_c7

    const/4 v10, 0x1

    :goto_c2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5c

    :cond_c7
    const/4 v10, 0x0

    goto :goto_c2
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/f;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method protected synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/d;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/f;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/d;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/d;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/c/f;->a(Lcom/unisound/vui/data/entity/a/d;)Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/f;->b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/f;->a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/d;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/f;->a(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/f;->a(Lcom/unisound/vui/data/entity/a/d;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
