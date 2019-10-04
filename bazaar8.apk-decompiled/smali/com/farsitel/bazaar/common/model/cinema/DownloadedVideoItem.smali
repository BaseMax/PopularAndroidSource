.class public final Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/DownloadableEntity;
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final _coverLocalPath:Ljava/lang/String;

.field public final _coverUrl:Ljava/lang/String;

.field public _entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final downloadId:Ljava/lang/String;

.field public final downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

.field public downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

.field public final entityId:Ljava/lang/String;

.field public entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

.field public final entityType:Lcom/farsitel/bazaar/common/model/EntityType;

.field public final expirationDate:J

.field public progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

.field public final qualityString:Ljava/lang/String;

.field public final shareLink:Ljava/lang/String;

.field public final videoDesc:Ljava/lang/String;

.field public final videoId:Ljava/lang/String;

.field public final videoInfo:Ljava/lang/String;

.field public final videoName:Ljava/lang/String;

.field public final videoPath:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p11

    move-object/from16 v8, p14

    move-object/from16 v9, p15

    const-string v10, "downloadId"

    invoke-static {p1, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "videoId"

    invoke-static {p2, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "videoName"

    invoke-static {p3, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "videoPath"

    invoke-static {v4, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "_coverUrl"

    invoke-static {v5, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "_coverLocalPath"

    invoke-static {v6, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "qualityString"

    invoke-static {v7, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "videoInfo"

    invoke-static {v8, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "_entityState"

    invoke-static {v9, v10}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    iput-object v2, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    iput-object v3, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    iput-object v4, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    iput-object v5, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    iput-object v6, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    iput-object v7, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    iput-object v8, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    iput-object v9, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    .line 2
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityId:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/common/model/EntityType;->VIDEO:Lcom/farsitel/bazaar/common/model/EntityType;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityType:Lcom/farsitel/bazaar/common/model/EntityType;

    .line 4
    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    iput-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    .line 5
    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;->ITEM:Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILh/f/b/f;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x800

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    goto :goto_0

    :cond_0
    move-object/from16 v16, p13

    :goto_0
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1

    move-object/from16 v19, v2

    goto :goto_1

    :cond_1
    move-object/from16 v19, p16

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-wide/from16 v11, p8

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v17, p14

    move-object/from16 v18, p15

    .line 6
    invoke-direct/range {v3 .. v19}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-void
.end method

.method private final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method private final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-wide v9, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    goto :goto_7

    :cond_7
    move-wide/from16 v9, p8

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-wide/from16 p8, v9

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    return-object v0
.end method

.method public final component12()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object v0
.end method

.method public final component15()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    return-wide v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const-string v0, "downloadId"

    move-object/from16 v17, v1

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoName"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoPath"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_coverUrl"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_coverLocalPath"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualityString"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_entityState"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v18, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V

    return-object v18
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    iget-wide v5, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object p1

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getCoverUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getDownloadId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadPriceType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    return-object v0
.end method

.method public final getDownloadServerState()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    return-object v0
.end method

.method public final getEnablePlayButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->COMPLETED:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->PENDING:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    :goto_0
    return-object v0
.end method

.method public getEntityType()Lcom/farsitel/bazaar/common/model/EntityType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityType:Lcom/farsitel/bazaar/common/model/EntityType;

    return-object v0
.end method

.method public final getExpirationDate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    return-wide v0
.end method

.method public final getNeedToSubmitDownload()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEnablePlayButton()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-object v0
.end method

.method public final getQualityString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    return-object v0
.end method

.method public final getShareLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoDownloadStateLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    sget v0, Lc/c/a/c/a;->downloading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.downloading)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lc/c/a/c/a;->download_in_queue:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.download_in_queue)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideoPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->viewType:I

    return v0
.end method

.method public final getVisibleDeleteIcon()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->CHECKING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getVisibleDownloadProgress()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->IN_QUEUE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/common/model/ui/EntityState;->DOWNLOADING:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final getVisiblePlayButton()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getVisibleDownloadProgress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getVisibleVideoInfo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    sget-object v1, Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;->SENT:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final get_entityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_d
    add-int/2addr v0, v1

    return v0
.end method

.method public final playButtonText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/ui/EntityState;->needToDownloadContinue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lc/c/a/c/a;->continue_download:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lc/c/a/c/a;->waiting_for_confirm:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "if (entityState.needToDo\u2026onfirm)\n                }"

    .line 5
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    sget v0, Lc/c/a/c/a;->play:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.string.play)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unhandled state happened"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setDownloadServerState(Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    return-void
.end method

.method public setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-void
.end method

.method public setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->progressInfo:Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    return-void
.end method

.method public final set_entityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedVideoItem(downloadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _coverUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _coverLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_coverLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->expirationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shareLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->shareLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", qualityString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->qualityString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadPriceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadPriceType:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadServerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->downloadServerState:Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->videoInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _entityState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->_entityState:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progressInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/common/model/cinema/DownloadedVideoItem;->getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
