.class public final Lc/c/a/n/j/e/b;
.super Ljava/lang/Object;
.source "Video.kt"


# direct methods
.method public static final a(Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;
    .locals 20

    move-object/from16 v7, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v0, "$this$toDownloadedVideoItem"

    move-object/from16 v13, p0

    invoke-static {v13, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverFilePath"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cinemaState"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v19, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    move-object/from16 v0, v19

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoName()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoDesc()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getVideoPath()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getCoverUrl()Ljava/lang/String;

    move-result-object v6

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getExpirationDate()J

    move-result-wide v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getShareLink()Ljava/lang/String;

    move-result-object v10

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getQualityString()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadPriceType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v12

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/DownloadedVideoModel;->getDownloadServerState()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x4000

    const/16 v18, 0x0

    .line 13
    invoke-direct/range {v0 .. v18}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V

    return-object v19
.end method
