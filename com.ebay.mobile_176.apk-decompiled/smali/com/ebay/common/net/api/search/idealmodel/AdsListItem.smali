.class public Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "AdsListItem.java"


# instance fields
.field public final googleTextAdView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .line 14
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ADS:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 15
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->googleTextAdView:Landroid/view/View;

    .line 16
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/AdsListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method
