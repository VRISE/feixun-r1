.class public Lcom/unisound/vui/data/c/a/e;
.super Lorg/greenrobot/greendao/AbstractDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao",
        "<",
        "Lcom/unisound/vui/data/entity/a/a/e;",
        "Ljava/lang/Void;",
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

    const-string v1, "\"ORIGIN_PUSH_MODEL\" (\"ID\" TEXT NOT NULL ,\"PUSH_MODEL_ID\" TEXT,\"READ\" INTEGER,\"TIME\" TEXT,\"PUSH_TIME_STAMP\" INTEGER);"

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

    const-string v1, "\"ORIGIN_PUSH_MODEL\""

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
.method public a(Landroid/database/Cursor;I)Ljava/lang/Void;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/unisound/vui/data/entity/a/a/e;)Ljava/lang/Void;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Lcom/unisound/vui/data/entity/a/a/e;J)Ljava/lang/Void;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a/e;I)V
    .registers 6

    const/4 v1, 0x0

    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/e;->a(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    move-object v0, v1

    :goto_13
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/e;->b(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_41

    move-object v0, v1

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/e;->a(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_51

    move-object v0, v1

    :goto_2b
    invoke-virtual {p2, v0}, Lcom/unisound/vui/data/entity/a/a/e;->c(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_58

    :goto_36
    invoke-virtual {p2, v1}, Lcom/unisound/vui/data/entity/a/a/e;->a(Ljava/lang/Long;)V

    return-void

    :cond_3a
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_41
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_4a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1f

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4a

    :cond_51
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_58
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_36
.end method

.method protected final a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a/e;)V
    .registers 7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x1

    :goto_24
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_27
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_31
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_3f
    return-void

    :cond_40
    const-wide/16 v0, 0x0

    goto :goto_24
.end method

.method protected final a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a/e;)V
    .registers 7

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v1, 0x2

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_15
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->c()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x1

    :goto_24
    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_27
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_31
    invoke-virtual {p2}, Lcom/unisound/vui/data/entity/a/a/e;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_3f
    return-void

    :cond_40
    const-wide/16 v0, 0x0

    goto :goto_24
.end method

.method public b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a/e;
    .registers 11

    const/4 v5, 0x0

    new-instance v0, Lcom/unisound/vui/data/entity/a/a/e;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_30

    move-object v2, v5

    :goto_12
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_37

    move-object v3, v5

    :goto_1b
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_47

    move-object v4, v5

    :goto_24
    add-int/lit8 v6, p2, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    :goto_2c
    invoke-direct/range {v0 .. v5}, Lcom/unisound/vui/data/entity/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_30
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_37
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    :goto_40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1b

    :cond_45
    const/4 v3, 0x0

    goto :goto_40

    :cond_47
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_4e
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_2c
.end method

.method protected synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/e;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/unisound/vui/data/entity/a/a/e;)V

    return-void
.end method

.method protected synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .registers 3

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/e;->a(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/unisound/vui/data/entity/a/a/e;)V

    return-void
.end method

.method public synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/data/c/a/e;->a(Lcom/unisound/vui/data/entity/a/a/e;)Ljava/lang/Void;

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
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/e;->b(Landroid/database/Cursor;I)Lcom/unisound/vui/data/entity/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .registers 4

    .prologue
    check-cast p2, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a/e;->a(Landroid/database/Cursor;Lcom/unisound/vui/data/entity/a/a/e;I)V

    return-void
.end method

.method public synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/data/c/a/e;->a(Landroid/database/Cursor;I)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 6

    .prologue
    check-cast p1, Lcom/unisound/vui/data/entity/a/a/e;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/vui/data/c/a/e;->a(Lcom/unisound/vui/data/entity/a/a/e;J)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
