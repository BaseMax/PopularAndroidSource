.class public Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "VipAdsFragment.java"

# interfaces
.implements Lcom/ebay/mobile/merch/MerchandiseDataManager$Observer;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "ADS_VIP"


# instance fields
.field private enabledDisplayPlacements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private googleTextAdEnabled:Z

.field private googleTextAdView:Landroid/view/ViewGroup;

.field private isPaused:Z

.field private merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdEnabled:Z

    .line 65
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->isPaused:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->loadDisplayAds(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static attach(Landroidx/fragment/app/FragmentActivity;)Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "ADS_VIP"

    .line 95
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 100
    new-instance v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;-><init>()V

    const-string v1, "ADS_VIP"

    .line 101
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-object v0
.end method

.method private getDisplayAdsFromDfp(Lcom/ebay/nautilus/domain/data/recommendation/Placement;Ljava/lang/Long;)V
    .locals 9

    .line 298
    sget-object v0, Lcom/ebay/mobile/util/AdUtil;->logDfpAds:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lcom/ebay/mobile/util/AdUtil;->logDfpAds:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_7

    .line 301
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    .line 310
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;

    if-nez v6, :cond_2

    .line 313
    invoke-virtual {p0, v1, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    const-string p1, "Ads Mfe request:  empty response Ad content"

    .line 314
    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v5

    if-nez v5, :cond_3

    return-void

    .line 324
    :cond_3
    invoke-virtual {p0, v5, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 327
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->impression:Lcom/ebay/nautilus/domain/data/recommendation/Impression;

    if-eqz v1, :cond_4

    .line 328
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->impression:Lcom/ebay/nautilus/domain/data/recommendation/Impression;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Impression;->plmt:Ljava/lang/String;

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    .line 332
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_5

    return-void

    .line 335
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_6

    .line 339
    invoke-direct {p0, v5, v6, v7, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->loadDisplayAds(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 347
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;

    move-object v2, v0

    move-object v3, p0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$1;-><init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/view/View;Lcom/ebay/mobile/viewitem/ItemViewActivity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_2
    return-void

    .line 303
    :cond_7
    :goto_3
    invoke-virtual {p0, v1, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    const-string p1, "Ads Mfe request:  no response Ad content"

    .line 305
    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    return-void
.end method

.method public static getEnabledVipDisplayAdPlacements(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experimentation/Treatment;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {p0}, Lcom/ebay/mobile/util/AdUtil;->isAdExperimentOnForVip(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Z

    move-result p0

    .line 73
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 74
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Ads$B;->viShow100549:Lcom/ebay/mobile/dcs/Dcs$Ads$B;

    .line 75
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p0, :cond_0

    .line 76
    sget-object v2, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    sget-object v2, Lcom/ebay/mobile/dcs/Dcs$Ads$B;->viShow100628:Lcom/ebay/mobile/dcs/Dcs$Ads$B;

    .line 79
    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 80
    sget-object p0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getGoogleTextAds()V
    .locals 4

    .line 400
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    .line 408
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    .line 412
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->loadGoogleTextAds(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment$2;-><init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public static isGoogleTextEnabled(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Z
    .locals 2

    .line 87
    invoke-static {p0}, Lcom/ebay/mobile/util/AdUtil;->isAdExperimentOnForVip(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Z

    move-result p0

    .line 89
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Ads$B;->vipShowDirectGoogleTextAd:Lcom/ebay/mobile/dcs/Dcs$Ads$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadDisplayAds(Landroid/app/Activity;Lcom/ebay/nautilus/domain/data/recommendation/AdContent;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 9

    .line 371
    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->buildMfeAdUnitId(Lcom/ebay/nautilus/domain/data/recommendation/AdContent;)Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 375
    :cond_0
    new-instance v7, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    .line 376
    invoke-virtual {p4, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    .line 377
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v7, v6, v0}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v8, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;

    iget-object v4, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->campaignName:Ljava/lang/String;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v7

    move-object v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance p3, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 383
    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->providerParameters:Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;

    iget-object p4, p4, Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;->ppid:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 384
    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->providerParameters:Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;

    iget-object p4, p4, Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;->ppid:Ljava/lang/String;

    invoke-virtual {p3, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 386
    :cond_2
    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    if-eqz p4, :cond_4

    .line 388
    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    invoke-static {p4}, Lcom/ebay/mobile/util/AdUtil;->targetingParametersToBundle(Lcom/google/gson/JsonElement;)Landroid/os/Bundle;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 390
    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p3, v0, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 392
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DFP Ad parameters: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 395
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p2

    invoke-virtual {v7, p1, p2, v8}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->loadAd(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    return-void
.end method


# virtual methods
.method public getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;
    .locals 1

    .line 239
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f0a004a

    .line 240
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    .line 241
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0a004b

    .line 242
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGoogleTextAdContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 439
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0a0721

    .line 441
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 517
    instance-of v1, v0, Lcom/ebay/mobile/viewitem/ItemViewActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 520
    :cond_0
    check-cast v0, Lcom/ebay/mobile/viewitem/ItemViewActivity;

    return-object v0
.end method

.method public loadAds(Lcom/ebay/mobile/Item;)V
    .locals 5
    .param p1    # Lcom/ebay/mobile/Item;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 525
    iget-boolean v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->isPaused:Z

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Long;

    iget-wide v3, p1, Lcom/ebay/mobile/Item;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3, p0}, Lcom/ebay/mobile/merch/MerchandiseDataManager;->getDisplayAds(Ljava/util/List;Ljava/util/List;ZLcom/ebay/mobile/merch/MerchandiseDataManager$Observer;)V

    .line 530
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdEnabled:Z

    if-eqz p1, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAds()V

    :cond_1
    return-void
.end method

.method public loadGoogleTextAds(Landroid/view/ViewGroup;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 492
    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, v1, Lcom/ebay/mobile/viewitem/ItemViewActivity;->item:Lcom/ebay/mobile/Item;

    if-eqz v0, :cond_2

    .line 498
    iget-object v2, v0, Lcom/ebay/mobile/Item;->title:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v2, :cond_2

    .line 499
    iget-object v0, v0, Lcom/ebay/mobile/Item;->title:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->getText(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    .line 503
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 504
    new-instance v3, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-direct {v3}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;-><init>()V

    .line 505
    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    .line 506
    const-class v5, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v5}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v5

    iget-object v5, v5, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 507
    new-instance v6, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;

    iget-object v7, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    invoke-direct {v6, v3, v7, p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;-><init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Landroid/view/ViewGroup;Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)V

    .line 508
    new-instance v7, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    const-string v8, "000vip"

    invoke-static {v2}, Lcom/ebay/mobile/util/AdUtil;->getGoogleTextAdNumber(Z)I

    move-result v2

    invoke-static {v4}, Lcom/ebay/mobile/util/AdUtil;->isUserOptedOutOfPersonalizedAds(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result v4

    invoke-direct {v7, v8, v0, v2, v4}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object v0, v3

    move-object v2, p1

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    .line 511
    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V

    return-void

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->initDataManagers()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onDestroyView()V

    .line 121
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    invoke-virtual {v0, p0}, Lcom/ebay/mobile/merch/MerchandiseDataManager;->unregisterObserver(Ljava/lang/Object;)V

    .line 124
    iput-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/google/android/gms/ads/search/SearchAdView;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/search/SearchAdView;->destroy()V

    .line 134
    iput-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 142
    :cond_3
    sget-object v1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->removeNativeAdView(Landroid/view/ViewGroup;)V

    .line 146
    sget-object v1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->removeNativeAdView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    if-nez v1, :cond_1

    .line 191
    sget-object v1, Lcom/ebay/mobile/merch/MerchandiseDataManager;->KEY:Lcom/ebay/mobile/merch/MerchandiseDataManager$KeyParams;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/merch/MerchandiseDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    .line 192
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/merch/MerchandiseDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 195
    :cond_1
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p1

    .line 196
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    .line 195
    invoke-static {p1, v1}, Lcom/ebay/nautilus/domain/experimentation/Experiments;->getAdsTreatment(Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    move-result-object p1

    .line 197
    invoke-static {p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getEnabledVipDisplayAdPlacements(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    .line 198
    invoke-static {p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->isGoogleTextEnabled(Lcom/ebay/nautilus/domain/data/experimentation/Treatment;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdEnabled:Z

    .line 199
    iget-boolean v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdEnabled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->enabledDisplayPlacements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/ebay/mobile/viewitem/ItemViewActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    if-eqz v1, :cond_3

    .line 200
    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ItemViewActivity;->viewData:Lcom/ebay/mobile/viewitem/ViewItemViewData;

    iput-object p1, v0, Lcom/ebay/mobile/viewitem/ViewItemViewData;->adsExperimentState:Lcom/ebay/nautilus/domain/data/experimentation/Treatment;

    :cond_3
    return-void
.end method

.method public onMerchandiseLoaded(Lcom/ebay/mobile/merch/MerchandiseDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/merch/MerchandiseDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;",
            ">;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;->placementsById:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 214
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;->placementsById:Ljava/util/Map;

    sget-object v1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;

    if-eqz p1, :cond_0

    .line 216
    sget-object v1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getDisplayAdsFromDfp(Lcom/ebay/nautilus/domain/data/recommendation/Placement;Ljava/lang/Long;)V

    goto :goto_0

    .line 218
    :cond_0
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    .line 221
    :goto_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;->placementsById:Ljava/util/Map;

    sget-object p2, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Placement;

    if-eqz p1, :cond_1

    .line 223
    sget-object p2, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getDisplayAdsFromDfp(Lcom/ebay/nautilus/domain/data/recommendation/Placement;Ljava/lang/Long;)V

    goto :goto_1

    .line 225
    :cond_1
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    goto :goto_1

    .line 231
    :cond_2
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100549:Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    .line 233
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100628:Ljava/lang/Long;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    :goto_1
    return-void
.end method

.method public onMerchandiseLoading(Lcom/ebay/mobile/merch/MerchandiseDataManager;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/google/android/gms/ads/search/SearchAdView;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/search/SearchAdView;->pause()V

    .line 161
    :cond_1
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onPause()V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->isPaused:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 170
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->isPaused:Z

    .line 174
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/google/android/gms/ads/search/SearchAdView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/search/SearchAdView;->resume()V

    :cond_1
    return-void
.end method

.method public removeNativeAdView(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 282
    instance-of p1, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz p1, :cond_0

    .line 286
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/ebay/mobile/ads/google/vip/-$$Lambda$b3YM8auqOwSaR0yqvl5-312peks;

    invoke-direct {v1, p1}, Lcom/ebay/mobile/ads/google/vip/-$$Lambda$b3YM8auqOwSaR0yqvl5-312peks;-><init>(Lcom/google/android/gms/ads/formats/NativeAdView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public showDisplayAdsView(ZLjava/lang/Long;)V
    .locals 3

    .line 253
    sget-object v0, Lcom/ebay/mobile/util/AdUtil;->logDfpAds:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/ebay/mobile/util/AdUtil;->logDfpAds:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 257
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 260
    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f040114

    const v1, 0x7f070117

    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDimensionPixelSize(Landroid/content/Context;II)I

    move-result p1

    int-to-float p1, p1

    .line 265
    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 270
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->removeNativeAdView(Landroid/view/ViewGroup;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public showGoogleTextAdsView(Z)V
    .locals 4

    .line 453
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 454
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 463
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040114

    const v3, 0x7f070117

    invoke-static {v1, v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDimensionPixelSize(Landroid/content/Context;II)I

    move-result v1

    int-to-float v1, v1

    .line 466
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 470
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_0
    if-nez p1, :cond_4

    .line 473
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    .line 476
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x0

    .line 477
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->googleTextAdView:Landroid/view/ViewGroup;

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method
