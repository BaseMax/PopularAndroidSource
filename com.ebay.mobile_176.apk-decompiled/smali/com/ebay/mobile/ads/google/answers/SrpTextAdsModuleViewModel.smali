.class public Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;
.super Ljava/lang/Object;
.source "SrpTextAdsModuleViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;
.implements Lcom/ebay/nautilus/domain/data/experience/type/util/PlacementInfoProvider;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/HasTrackingIdentifiers;
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# instance fields
.field private final componentOffsets:Landroid/graphics/Rect;

.field public isAdLoaded:Z

.field private final module:Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

.field public parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

.field private final placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

.field private final trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

.field private view:Landroid/view/View;

.field private final viewType:I


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;ILandroid/graphics/Rect;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->isAdLoaded:Z

    const-string v0, "SrpTextAdsModule must not be null"

    .line 57
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

    .line 58
    iput p2, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->viewType:I

    const-string p1, "componentOffsets must not be null"

    .line 59
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->componentOffsets:Landroid/graphics/Rect;

    .line 60
    iput-object p4, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    .line 61
    iput-object p5, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method


# virtual methods
.method public getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPlacementSize()Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-object v0
.end method

.method public getTrackingIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->isAdLoaded:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->viewType:I

    return v0
.end method

.method public onAdCallCompleted(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    .line 143
    iput-boolean p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->isAdLoaded:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->isAdLoaded:Z

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onBindWithView(Landroid/view/View;)V
    .locals 2

    .line 72
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->findBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/databinding/SearchAnswersGoogleTextBinding;

    .line 73
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    if-nez v1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->view:Landroid/view/View;

    .line 78
    iget-object p1, v0, Lcom/ebay/mobile/databinding/SearchAnswersGoogleTextBinding;->answersSearchAdContainer:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    .line 79
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;->getAds()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->setAd(Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V

    .line 80
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->setOnAdLoadedListener(Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;)V

    .line 85
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;->parentAdView:Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->loadAd()V

    :cond_0
    return-void
.end method
