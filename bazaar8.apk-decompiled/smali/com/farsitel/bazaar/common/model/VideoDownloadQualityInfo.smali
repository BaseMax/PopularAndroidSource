.class public final Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;
.super Ljava/lang/Object;
.source "VideoDownloadQualityInfo.kt"


# instance fields
.field public final _expireTime:Ljava/lang/Long;

.field public final coverVideo:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final purchaseState:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

.field public final referrer:Ljava/lang/String;

.field public final remainingDownloadCount:Ljava/lang/Integer;

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;"
        }
    .end annotation
.end field

.field public final videoDownloadItemModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoSubtitle;",
            ">;",
            "Lcom/farsitel/bazaar/common/model/VideoPurchaseState;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "coverVideo"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoDownloadItemModels"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrer"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->coverVideo:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->_expireTime:Ljava/lang/Long;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->description:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->remainingDownloadCount:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->videoDownloadItemModels:Ljava/util/List;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->subtitles:Ljava/util/List;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->purchaseState:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->referrer:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;ILh/f/b/f;)V
    .locals 11

    and-int/lit8 v0, p9, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, p3

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    .line 2
    invoke-direct/range {v2 .. v10}, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/farsitel/bazaar/common/model/VideoPurchaseState;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCoverVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->coverVideo:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpireTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->_expireTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final getPurchaseState()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->purchaseState:Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    return-object v0
.end method

.method public final getReferrer()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public final getRemainingDownloadCount()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->remainingDownloadCount:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoDownloadItemModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;->videoDownloadItemModels:Ljava/util/List;

    return-object v0
.end method
