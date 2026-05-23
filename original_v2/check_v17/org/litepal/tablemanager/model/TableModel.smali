.class public Lorg/litepal/tablemanager/model/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# instance fields
.field private className:Ljava/lang/String;

.field private columnModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V
    .registers 3
    .param p1, "columnModel"    # Lorg/litepal/tablemanager/model/ColumnModel;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public containsColumn(Ljava/lang/String;)Z
    .registers 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_b

    .line 154
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 149
    :cond_b
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 150
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 151
    const/4 v2, 0x1

    goto :goto_a

    .line 148
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnModelByName(Ljava/lang/String;)Lorg/litepal/tablemanager/model/ColumnModel;
    .registers 5
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 116
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 111
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 112
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public getColumnModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public removeColumnModelByName(Ljava/lang/String;)V
    .registers 6
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 139
    :cond_6
    :goto_6
    return-void

    .line 128
    :cond_7
    const/4 v2, -0x1

    .line 129
    .local v2, "indexToRemove":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1a

    .line 136
    :goto_11
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 137
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 130
    :cond_1a
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 131
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 132
    move v2, v1

    .line 133
    goto :goto_11

    .line 129
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .registers 2
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    .line 65
    return-void
.end method
