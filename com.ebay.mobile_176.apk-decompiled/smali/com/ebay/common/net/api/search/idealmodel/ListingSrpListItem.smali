.class public Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "ListingSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$WatchableItemProvider;


# instance fields
.field public final answerId:J

.field private dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

.field public final id:J

.field isWatched:Landroidx/databinding/ObservableBoolean;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

.field public final label:Ljava/lang/String;

.field private final preferredCurrencyCode:Ljava/lang/String;

.field public final searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

.field private final userIsSignedIn:Z

.field private viewModel:Lcom/ebay/mobile/search/answers/v1/ListingViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/search/SearchListing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/search/SearchListing;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 71
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 45
    new-instance p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p2}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->isWatched:Landroidx/databinding/ObservableBoolean;

    const-string p2, "You must pass in a valid SearchListing"

    .line 73
    invoke-static {p1, p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    const-wide/16 p2, -0x1

    .line 76
    iput-wide p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->answerId:J

    .line 77
    iget-wide p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->id:J

    iput-wide p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->id:J

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->label:Ljava/lang/String;

    .line 79
    iput-boolean p5, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->userIsSignedIn:Z

    .line 80
    iput-object p4, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->preferredCurrencyCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/search/SearchListing;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;JJLjava/lang/String;Lcom/ebay/mobile/verticals/search/DragAndDropConfig;Ljava/lang/String;ZLcom/ebay/nautilus/domain/data/search/ItemPivot;)V
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/search/SearchListing;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/search/SearchListing;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Lcom/ebay/mobile/verticals/search/DragAndDropConfig;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/ebay/nautilus/domain/data/search/ItemPivot;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    .line 89
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 45
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->isWatched:Landroidx/databinding/ObservableBoolean;

    const-string v0, "You must pass in a valid SearchListing"

    .line 91
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iput-object v7, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-object v0, p6

    .line 94
    iput-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->label:Ljava/lang/String;

    move-wide v0, p7

    .line 95
    iput-wide v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->id:J

    move-wide/from16 v0, p9

    .line 96
    iput-wide v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->answerId:J

    .line 97
    iget-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isPromoted:Z

    .line 98
    iget-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->promotedLabel:Ljava/lang/String;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->trackingSent:Z

    move-object/from16 v0, p12

    .line 100
    iput-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    move/from16 v0, p14

    .line 101
    iput-boolean v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->userIsSignedIn:Z

    move-object/from16 v0, p13

    .line 102
    iput-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->preferredCurrencyCode:Ljava/lang/String;

    move-object/from16 v0, p15

    .line 103
    iput-object v0, v6, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    return-void
.end method

.method private createCompatibilityContext(Lcom/ebay/mobile/search/refine/SearchConfiguration;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 162
    :cond_0
    iget-object p1, p1, Lcom/ebay/mobile/search/refine/SearchConfiguration;->fitmentInformation:Lcom/ebay/common/model/search/EbayFitmentInformation;

    .line 163
    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->fitmentPropId:Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/ebay/common/model/search/EbayFitmentInformation;->hasFitmentData()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;-><init>()V

    .line 169
    new-instance v2, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;-><init>()V

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    .line 170
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    invoke-virtual {p1, v1}, Lcom/ebay/common/model/search/EbayFitmentInformation;->find(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, v2, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->properties:Ljava/util/Map;

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static serviceDeliveredHotnessSignalsEnabled()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 220
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Search$B;->serviceDeliveredHotnessSignals:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method addXtTags()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->quantitySoldEnabledAndEligible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->serviceDeliveredHotnessSignalsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public getListingId()J
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-wide v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->id:J

    return-wide v0
.end method

.method public getListingViewModel()Lcom/ebay/mobile/search/answers/v1/ListingViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    return-object v0
.end method

.method public getPageCi()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->pageci:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->addXtTags()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiersWithXtTags()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v0

    return-object v0
.end method

.method quantitySoldEnabledAndEligible()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hotnessSignals:Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/search/SearchListing;->hotnessSignals:Lcom/ebay/nautilus/domain/data/search/HotnessSignals;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/HotnessSignals;->getPrimeHotnessSignal()Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 209
    sget-object v1, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->QTY_SOLD_TOTAL_SIGNAL:Lcom/ebay/nautilus/domain/data/search/HotnessSignal;

    .line 210
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->getRank()I

    move-result v1

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/HotnessSignal;->getRank()I

    move-result v0

    if-gt v1, v0, :cond_2

    .line 211
    :cond_1
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Search$B;->thresholdSignalTest:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public setIsWatched(Z)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->isWatched:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public setListingViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/mobile/search/refine/SearchConfiguration;)V
    .locals 5
    .param p5    # Lcom/ebay/mobile/search/refine/SearchConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 135
    invoke-direct {p0, p5}, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->createCompatibilityContext(Lcom/ebay/mobile/search/refine/SearchConfiguration;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    move-result-object p5

    .line 136
    new-instance v0, Lcom/ebay/mobile/search/SearchListingViewModel;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    new-instance v2, Lcom/ebay/mobile/search/SearchListingViewModel$DisplayOptions;

    iget-object v3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->preferredCurrencyCode:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->userIsSignedIn:Z

    invoke-direct {v2, p3, v3, v4}, Lcom/ebay/mobile/search/SearchListingViewModel$DisplayOptions;-><init>(Lcom/ebay/common/net/api/search/SearchParameters;Ljava/lang/String;Z)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/ebay/mobile/search/SearchListingViewModel;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/search/SearchListing;Lcom/ebay/mobile/search/SearchListingViewModel$DisplayOptions;)V

    .line 139
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->isWatched:Landroidx/databinding/ObservableBoolean;

    iput-object p2, v0, Lcom/ebay/mobile/search/SearchListingViewModel;->isWatched:Landroidx/databinding/ObservableBoolean;

    .line 140
    iput-object p5, v0, Lcom/ebay/mobile/search/SearchListingViewModel;->compatibilityContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    .line 141
    iget p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->trackingRank:I

    iput p2, v0, Lcom/ebay/mobile/search/SearchListingViewModel;->trackingRank:I

    .line 142
    new-instance p2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;

    invoke-direct {p2}, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;-><init>()V

    .line 143
    iget-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->label:Ljava/lang/String;

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->label:Ljava/lang/String;

    .line 144
    iget-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->listingItem:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    .line 145
    iget-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->trackingList:Ljava/util/List;

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->trackingList:Ljava/util/List;

    .line 146
    iget-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    iput-object p3, p2, Lcom/ebay/nautilus/domain/data/answers/LabeledItem;->itemPivot:Lcom/ebay/nautilus/domain/data/search/ItemPivot;

    .line 147
    new-instance p3, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    invoke-direct {p3, p1, p2, v0, p4}, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;-><init>(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/answers/LabeledItem;Lcom/ebay/mobile/search/SearchListingViewModel;I)V

    iput-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    .line 148
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    invoke-virtual {p2, p1}, Lcom/ebay/mobile/verticals/search/DragAndDropConfig;->checkAccessibility(Landroid/content/Context;)V

    .line 151
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    iget-object p3, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    invoke-virtual {p3}, Lcom/ebay/mobile/verticals/search/DragAndDropConfig;->isEnabled()Z

    move-result p3

    iput-boolean p3, p2, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;->dragAndDropSearchEnabled:Z

    .line 152
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    invoke-virtual {p2}, Lcom/ebay/mobile/verticals/search/DragAndDropConfig;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->dragAndDropConfig:Lcom/ebay/mobile/verticals/search/DragAndDropConfig;

    invoke-virtual {p2}, Lcom/ebay/mobile/verticals/search/DragAndDropConfig;->isTooltipEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 153
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    const p3, 0x7f121073

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;->dragAndDropTooltip:Ljava/lang/String;

    :cond_0
    return-void
.end method
