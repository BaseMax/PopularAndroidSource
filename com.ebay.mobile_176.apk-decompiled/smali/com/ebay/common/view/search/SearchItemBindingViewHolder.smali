.class public Lcom/ebay/common/view/search/SearchItemBindingViewHolder;
.super Lcom/ebay/common/view/search/SearchBindingViewHolder;
.source "SearchItemBindingViewHolder.java"


# instance fields
.field private itemResourceId:I

.field private searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

.field private final searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;Lcom/ebay/common/net/api/search/SearchParameters;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/common/view/search/SearchBindingViewHolder;-><init>(Lcom/ebay/nautilus/shell/app/BaseActivity;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/nautilus/shell/uxcomponents/tracking/PulsarTrackingListener;)V

    .line 39
    iput-object p5, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    .line 40
    iput p6, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->itemResourceId:I

    .line 41
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    instance-of p1, p1, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    check-cast p1, Lcom/ebay/mobile/search/SearchResultFragmentActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchResultFragmentActivity;->getSearchConfiguration()Lcom/ebay/mobile/search/refine/SearchConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V
    .locals 7

    .line 49
    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    sget-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->LABELED_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    if-eq p1, v0, :cond_0

    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->itemType:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    sget-object v0, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->REGULAR:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    if-ne p1, v0, :cond_4

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    .line 53
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 54
    move-object v6, p2

    check-cast v6, Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;

    .line 55
    invoke-interface {v6}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;->getListingViewModel()Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    iget-object v3, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->searchParameters:Lcom/ebay/common/net/api/search/SearchParameters;

    iget v4, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->itemResourceId:I

    iget-object v5, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

    move-object v0, v6

    move-object v1, p1

    .line 59
    invoke-interface/range {v0 .. v5}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;->setListingViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/search/SearchParameters;ILcom/ebay/mobile/search/refine/SearchConfiguration;)V

    .line 60
    :cond_1
    invoke-interface {v6}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ListingViewModelProvider;->getListingViewModel()Lcom/ebay/mobile/search/answers/v1/ListingViewModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;->updateTimeLeft(Landroid/content/Context;)V

    .line 64
    iget-boolean v1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingSent:Z

    if-nez v1, :cond_3

    .line 67
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;->updateTimeLeft(Landroid/content/Context;)V

    .line 69
    move-object p1, p2

    check-cast p1, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;

    .line 70
    iget-object p1, p1, Lcom/ebay/common/net/api/search/idealmodel/ListingSrpListItem;->searchListing:Lcom/ebay/nautilus/domain/data/search/SearchListing;

    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/data/search/SearchListing;->isPromoted:Z

    if-eqz p1, :cond_3

    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->impressionTracking:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "PromotedListingImp"

    invoke-direct {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 73
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string/jumbo v1, "svcdata"

    iget-object v2, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->impressionTracking:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    iget-object v1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->owningActivity:Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 76
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;->srpUsePulsarTracking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Ads$B;

    invoke-interface {p1, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 78
    iget-object p1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->clickTracking:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 80
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v1, "PromotedListingClick"

    invoke-direct {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    .line 82
    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string/jumbo v1, "svcdata"

    iget-object v2, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->clickTracking:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/mobile/search/answers/v1/ListingViewModel;->legacyMtsTrackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    :cond_2
    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;->trackingSent:Z

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->viewDataBinding:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    :cond_4
    return-void
.end method

.method protected bridge synthetic onBindView(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/view/search/SearchItemBindingViewHolder;->onBindView(ILcom/ebay/common/net/api/search/idealmodel/SrpListItem;)V

    return-void
.end method
