.class public final Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
.super Ljava/lang/Object;
.source "VideoDetail.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

.field public final details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

.field public final entityId:Ljava/lang/String;

.field public final referrer:Ljava/lang/String;

.field public final refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public final videoUrl:Ljava/lang/String;

.field public final waterMarkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/VideoPurchaseState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/cinema/RefreshData;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "entityId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buyInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;ILh/f/b/f;)V
    .locals 11

    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v7, p5

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 2
    invoke-direct/range {v2 .. v10}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    goto :goto_5

    :cond_5
    move-object v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p8

    :goto_7
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/VideoPurchaseState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/farsitel/bazaar/common/model/cinema/RefreshData;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;",
            "Ljava/lang/String;",
            ")",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;"
        }
    .end annotation

    const-string v0, "entityId"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buyInfo"

    move-object v3, p2

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUrl"

    move-object v4, p3

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    move-object v1, v0

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/cinema/RefreshData;Ljava/util/List;Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    iget-object v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBuyInfo()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    return-object v0
.end method

.method public final getDetails()Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    return-object v0
.end method

.method public final getEntityId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshData()Lcom/farsitel/bazaar/common/model/cinema/RefreshData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    return-object v0
.end method

.method public final getSubtitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWaterMarkUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/RefreshData;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public final isAddToPlayedList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPlayInfoModel(entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->buyInfo:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", waterMarkUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->waterMarkUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->refreshData:Lcom/farsitel/bazaar/common/model/cinema/RefreshData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->subtitles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->details:Lcom/farsitel/bazaar/common/model/cinema/PlayedVideoDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", referrer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;->referrer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
