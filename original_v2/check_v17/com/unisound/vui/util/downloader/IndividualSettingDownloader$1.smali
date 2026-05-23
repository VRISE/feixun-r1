.class Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/util/upload/SimpleRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)V
    .registers 2
    .param p1, "this$0"    # Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    # getter for: Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;
    invoke-static {v0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->access$200(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)Lcom/unisound/vui/util/downloader/DownloaderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unisound/vui/util/downloader/DownloaderListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    # invokes: Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->parseNeedUpdate(Ljava/lang/String;)Z
    invoke-static {v0, p1}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->access$000(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    # invokes: Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->parserOptions(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {v0, p1}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->access$100(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    # getter for: Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;
    invoke-static {v1}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->access$200(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)Lcom/unisound/vui/util/downloader/DownloaderListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/unisound/vui/util/downloader/DownloaderListener;->onUpdate(Lorg/json/JSONObject;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader$1;->this$0:Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;

    # getter for: Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->downloaderListener:Lcom/unisound/vui/util/downloader/DownloaderListener;
    invoke-static {v0}, Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;->access$200(Lcom/unisound/vui/util/downloader/IndividualSettingDownloader;)Lcom/unisound/vui/util/downloader/DownloaderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/downloader/DownloaderListener;->onSameVersion()V

    goto :goto_17
.end method
