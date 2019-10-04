.class public abstract Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.super Ljava/lang/Object;
.source "SrpListItem.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/HasTrackingIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;
    }
.end annotation


# static fields
.field public static final NOT_RANKED:I = -0x1


# instance fields
.field public final clickTracking:Ljava/lang/String;

.field public final impressionTracking:Ljava/lang/String;

.field public final itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

.field public placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

.field public final trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

.field public final trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public trackingRank:I

.field public trackingSent:Z

.field public viewType:I


# direct methods
.method constructor <init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingRank:I

    .line 25
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 26
    iput v0, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->viewType:I

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->UNKNOWN:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    goto :goto_0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    .line 35
    :goto_0
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->impressionTracking:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->clickTracking:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    .line 38
    iput-object p5, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTrackingIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;
    .locals 2

    .line 58
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v0

    return-object v0
.end method

.method public withPlacementSize(Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-object p0
.end method

.method public withTrackableRank(I)Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
    .locals 0

    .line 44
    iput p1, p0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingRank:I

    return-object p0
.end method
