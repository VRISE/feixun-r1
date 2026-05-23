.class public Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;
.super Ljava/lang/Object;
.source "SyncMusicListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;
    }
.end annotation


# instance fields
.field private musicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private udid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMusicList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->musicList:Ljava/util/List;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public setMusicList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "musicList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean$MusicInfo;>;"
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->musicList:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .registers 2
    .param p1, "udid"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/syncloud/SyncMusicListBean;->udid:Ljava/lang/String;

    .line 23
    return-void
.end method
