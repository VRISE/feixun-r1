.class public Lcom/baidu/location/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/a/h$a;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/Object;

.field private static d:Lcom/baidu/location/a/h;

.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcom/baidu/location/a/h$a;

.field b:Lcom/baidu/location/a/h$a;

.field private f:Landroid/database/sqlite/SQLiteDatabase;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/location/a/h;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/a/h;->d:Lcom/baidu/location/a/h;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/d/j;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hst.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/a/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/h;->g:Z

    iput-object v1, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/a/h$a;

    iput-object v1, p0, Lcom/baidu/location/a/h;->b:Lcom/baidu/location/a/h$a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/h;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static a()Lcom/baidu/location/a/h;
    .registers 2

    sget-object v1, Lcom/baidu/location/a/h;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/a/h;->d:Lcom/baidu/location/a/h;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/a/h;

    invoke-direct {v0}, Lcom/baidu/location/a/h;-><init>()V

    sput-object v0, Lcom/baidu/location/a/h;->d:Lcom/baidu/location/a/h;

    :cond_e
    sget-object v0, Lcom/baidu/location/a/h;->d:Lcom/baidu/location/a/h;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private a(Z)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/baidu/location/b/b;->a()Lcom/baidu/location/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/b;->f()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->o()Lcom/baidu/location/b/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/baidu/location/b/f;->a()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_5b

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_38
    :goto_38
    if-eqz p1, :cond_3f

    const-string v0, "&imo=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3f
    invoke-static {}, Lcom/baidu/location/d/b;->a()Lcom/baidu/location/d/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/d/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_38
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    const/16 v1, 0x196

    invoke-virtual {v0, p1, v1}, Lcom/baidu/location/a/a;->a(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/h;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/location/a/h;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/a/h;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/location/a/h;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/a/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/a/h;->f()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/a/h;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/location/a/h;->g:Z

    return v0
.end method

.method private f()V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hotspot"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/baidu/location/a/h;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/baidu/location/a/h;->g:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v0, "content"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_19
    if-eqz v0, :cond_5

    const-string v1, "imo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "imo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "mac"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "imo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "mv"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "hst"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5e} :catch_94

    :try_start_5e
    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "hstdata"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5

    const-string v0, "id"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "hstdata"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_8f} :catch_91

    goto/16 :goto_5

    :catch_91
    move-exception v0

    goto/16 :goto_5

    :catch_94
    move-exception v0

    goto/16 :goto_5
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/a/h;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS hstdata(id Long PRIMARY KEY,hst INT,tt INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    iput-object v2, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2b
.end method

.method public c()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_d
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    iput-object v1, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_c

    :catchall_11
    move-exception v0

    iput-object v1, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    throw v0
.end method

.method public d()I
    .registers 8

    const/4 v1, 0x0

    const/4 v0, -0x3

    iget-boolean v2, p0, Lcom/baidu/location/a/h;->g:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/b/g;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/Jni;->c(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_7b

    move-result-object v2

    :try_start_31
    iget-object v3, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from hstdata where id = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_50} :catch_68
    .catchall {:try_start_31 .. :try_end_50} :catchall_71

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_68
    .catchall {:try_start_53 .. :try_end_5d} :catchall_7f

    move-result v0

    :goto_5e
    if-eqz v1, :cond_6

    :try_start_60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_6

    :catch_64
    move-exception v1

    goto :goto_6

    :cond_66
    const/4 v0, -0x2

    goto :goto_5e

    :catch_68
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_6

    :catch_6f
    move-exception v1

    goto :goto_6

    :catchall_71
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_75
    if-eqz v2, :cond_7a

    :try_start_77
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7d

    :cond_7a
    :goto_7a
    :try_start_7a
    throw v1
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7b} :catch_7b

    :catch_7b
    move-exception v1

    goto :goto_6

    :catch_7d
    move-exception v2

    goto :goto_7a

    :catchall_7f
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_75
.end method

.method public e()V
    .registers 11

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/baidu/location/a/h;->g:Z

    if-eqz v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/baidu/location/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_ca

    iget-object v1, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_ca

    invoke-static {}, Lcom/baidu/location/b/g;->a()Lcom/baidu/location/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/location/Jni;->c(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_97

    move-result-object v4

    const/4 v1, 0x0

    :try_start_32
    iget-object v5, p0, Lcom/baidu/location/a/h;->f:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select * from hstdata where id = \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_51} :catch_b4
    .catchall {:try_start_32 .. :try_end_51} :catchall_be

    move-result-object v2

    if-eqz v2, :cond_b2

    :try_start_54
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6b} :catch_d3
    .catchall {:try_start_54 .. :try_end_6b} :catchall_be

    int-to-long v8, v5

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x3f480

    cmp-long v5, v6, v8

    if-lez v5, :cond_9a

    :goto_74
    move v1, v0

    :goto_75
    if-eqz v2, :cond_7a

    :try_start_77
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_cf

    :cond_7a
    :goto_7a
    if-eqz v1, :cond_6

    :try_start_7c
    iget-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/a/h$a;

    if-nez v0, :cond_87

    new-instance v0, Lcom/baidu/location/a/h$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/a/h$a;-><init>(Lcom/baidu/location/a/h;)V

    iput-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/a/h$a;

    :cond_87
    iget-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/a/h$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/a/h;->a:Lcom/baidu/location/a/h$a;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/baidu/location/a/h;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/baidu/location/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_95} :catch_97

    goto/16 :goto_6

    :catch_97
    move-exception v0

    goto/16 :goto_6

    :cond_9a
    :try_start_9a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "mac"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v5, "hotspot"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/baidu/location/a/h;->a(Landroid/os/Bundle;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_b0} :catch_d3
    .catchall {:try_start_9a .. :try_end_b0} :catchall_be

    move v0, v1

    goto :goto_74

    :cond_b2
    move v1, v0

    goto :goto_75

    :catch_b4
    move-exception v0

    move-object v0, v2

    :goto_b6
    if-eqz v0, :cond_7a

    :try_start_b8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_7a

    :catch_bc
    move-exception v0

    goto :goto_7a

    :catchall_be
    move-exception v0

    if-eqz v2, :cond_c4

    :try_start_c1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_d1

    :cond_c4
    :goto_c4
    :try_start_c4
    throw v0

    :cond_c5
    invoke-direct {p0}, Lcom/baidu/location/a/h;->f()V

    goto/16 :goto_6

    :cond_ca
    invoke-direct {p0}, Lcom/baidu/location/a/h;->f()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_cd} :catch_97

    goto/16 :goto_6

    :catch_cf
    move-exception v0

    goto :goto_7a

    :catch_d1
    move-exception v1

    goto :goto_c4

    :catch_d3
    move-exception v0

    move-object v0, v2

    goto :goto_b6
.end method
