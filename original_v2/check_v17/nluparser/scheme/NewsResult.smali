.class public Lnluparser/scheme/NewsResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lnluparser/scheme/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnluparser/scheme/NewsResult$NewsBean;
    }
.end annotation


# instance fields
.field private count:I

.field private dataSourceName:Ljava/lang/String;

.field private errorCode:I

.field private news:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;"
        }
    .end annotation
.end field

.field private searchType:Ljava/lang/String;

.field private totalTime:I

.field private tts:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget v0, p0, Lnluparser/scheme/NewsResult;->count:I

    return v0
.end method

.method public getDataSourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/NewsResult;->dataSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lnluparser/scheme/NewsResult;->errorCode:I

    return v0
.end method

.method public getNews()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/NewsResult;->news:Ljava/util/List;

    return-object v0
.end method

.method public getSearchType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/NewsResult;->searchType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .registers 2

    iget v0, p0, Lnluparser/scheme/NewsResult;->totalTime:I

    return v0
.end method

.method public getTts()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lnluparser/scheme/NewsResult;->tts:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/NewsResult;->count:I

    return-void
.end method

.method public setDataSourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "dataSourceName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->dataSourceName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/NewsResult;->errorCode:I

    return-void
.end method

.method public setNews(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/NewsResult$NewsBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "news":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NewsResult$NewsBean;>;"
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->news:Ljava/util/List;

    return-void
.end method

.method public setSearchType(Ljava/lang/String;)V
    .registers 2
    .param p1, "searchType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->searchType:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .registers 2
    .param p1, "totalTime"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/NewsResult;->totalTime:I

    return-void
.end method

.method public setTts(Ljava/lang/String;)V
    .registers 2
    .param p1, "tts"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/NewsResult;->tts:Ljava/lang/String;

    return-void
.end method
