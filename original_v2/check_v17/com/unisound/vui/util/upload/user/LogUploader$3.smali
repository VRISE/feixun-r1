.class Lcom/unisound/vui/util/upload/user/LogUploader$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/util/upload/user/LogUploader;->getCrashLogByte()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

.field final synthetic val$crashLogByte:[B


# direct methods
.method constructor <init>(Lcom/unisound/vui/util/upload/user/LogUploader;[B)V
    .registers 3
    .param p1, "this$0"    # Lcom/unisound/vui/util/upload/user/LogUploader;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    iput-object p2, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->val$crashLogByte:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    iget-object v0, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->this$0:Lcom/unisound/vui/util/upload/user/LogUploader;

    # getter for: Lcom/unisound/vui/util/upload/user/LogUploader;->crashFileList:Ljava/util/List;
    invoke-static {v0}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$200(Lcom/unisound/vui/util/upload/user/LogUploader;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v2, p0, Lcom/unisound/vui/util/upload/user/LogUploader$3;->val$crashLogByte:[B

    # invokes: Lcom/unisound/vui/util/upload/user/LogUploader;->renderByte(Ljava/io/File;[B)V
    invoke-static {v1, v0, v2}, Lcom/unisound/vui/util/upload/user/LogUploader;->access$300(Lcom/unisound/vui/util/upload/user/LogUploader;Ljava/io/File;[B)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method
