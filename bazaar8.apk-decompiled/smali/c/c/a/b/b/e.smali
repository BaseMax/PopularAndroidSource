.class public final Lc/c/a/b/b/e;
.super Ljava/lang/Object;
.source "Mapper.kt"


# direct methods
.method public static final a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;
    .locals 14

    const-string v0, "$this$toDownloadedVideoEntity"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPath"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoName()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoDesc()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getCoverUrl()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getExpirationDate()J

    move-result-wide v8

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getShareLink()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getQualityString()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getDownloadType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v12

    .line 14
    sget-object v13, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-object v1, v0

    move-object v6, p1

    .line 15
    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V

    return-object v0
.end method

.method public static final a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)Lcom/farsitel/bazaar/data/entity/DownloadedApp;
    .locals 3

    const-string v0, "$this$toDownloadedApp"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/data/entity/DownloadedApp;

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result p0

    .line 3
    invoke-direct {v0, v1, v2, p0}, Lcom/farsitel/bazaar/data/entity/DownloadedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
