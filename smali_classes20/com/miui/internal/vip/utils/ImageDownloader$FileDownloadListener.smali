.class public Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/vip/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDownloadListener"
.end annotation


# instance fields
.field mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->setOnDownload(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V

    return-void
.end method


# virtual methods
.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    invoke-virtual {v0}, Lcom/miui/internal/vip/utils/ImageDownloadTask;->isWaitNetwork()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/internal/vip/utils/ImageDownloader;->sRecords:Ljava/util/Map;

    iget-object v2, v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/net/ConnectivityHelper;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/internal/vip/utils/ImageDownloader;->startDownload(Lcom/miui/internal/vip/utils/ImageDownloadTask;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/internal/vip/utils/ImageDownloader;->startReceiver()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/io/File;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;

    iget-object v0, v0, Lcom/miui/internal/vip/utils/ImageDownloadTask;->mSavePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;->onDownload(Ljava/lang/String;)V

    :cond_0
    return-object p3
.end method

.method public final setOnDownload(Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/vip/utils/ImageDownloader$FileDownloadListener;->mOnDownload:Lcom/miui/internal/vip/utils/ImageDownloader$OnFileDownload;

    return-void
.end method
