.class public Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "XoDisplayAdFragment.java"

# interfaces
.implements Lcom/ebay/mobile/merch/MerchandiseDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field public static final EXTRA_FRAGMENT_TAG:Ljava/lang/String; = "com.ebay.mobile.merch.XoDisplayAdFragment.fragmentTag"

.field public static final EXTRA_ITEM_IDS:Ljava/lang/String; = "com.ebay.mobile.merch.XoDisplayAdFragment.itemIds"

.field public static final EXTRA_PLACEMENT_ID:Ljava/lang/String; = "com.ebay.mobile.ads.google.xo.XoDisplayAdFragment.placementId"

.field public static final HOUSE_AD_BODY_SITE_DE:Ljava/lang/String; = "Geld zur\u00fcck, falls mal etwas schiefgeht."

.field public static final HOUSE_AD_BODY_SITE_DEFAULT:Ljava/lang/String; = "Worry-free shopping. Get the item you ordered or your money back."

.field public static final HOUSE_AD_CTA_SITE_DE:Ljava/lang/String; = "Weitere Details"

.field public static final HOUSE_AD_CTA_SITE_DEFAULT:Ljava/lang/String; = "Learn More"

.field public static final HOUSE_AD_LABEL_SITE_DE:Ljava/lang/String; = "eBay-K\u00e4uferschutz"

.field public static final HOUSE_AD_LABEL_SITE_DEFAULT:Ljava/lang/String; = "eBay Money Back Guarantee"


# instance fields
.field private dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

.field private fragmentTag:Ljava/lang/String;

.field private impressionId:Ljava/lang/String;

.field public isUsingHouseAd:Z

.field private itemIds:[J

.field private merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

.field private placementId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->impressionId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    return-void
.end method

.method public static attach(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;IJ[J)Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;
    .locals 3

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 100
    new-instance v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;-><init>()V

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.ebay.mobile.ads.google.xo.XoDisplayAdFragment.placementId"

    .line 102
    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "com.ebay.mobile.merch.XoDisplayAdFragment.fragmentTag"

    .line 103
    invoke-virtual {v1, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p3, "com.ebay.mobile.merch.XoDisplayAdFragment.itemIds"

    .line 105
    invoke-virtual {v1, p3, p5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 106
    :cond_0
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->setArguments(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, p2, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-object v0
.end method

.method private getHouseAdCtaOnClickListner(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 412
    new-instance v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$2;-><init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isPlacementEnabled(Lcom/ebay/nautilus/kernel/content/EbayContext;J)Z
    .locals 2
    .param p0    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->XOS_100664:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 82
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    .line 83
    sget-object p2, Lcom/ebay/mobile/dcs/Dcs$Ads$B;->xoSuccessShow100664:Lcom/ebay/mobile/dcs/Dcs$Ads$B;

    .line 84
    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/ebay/mobile/util/AdUtil;->isAdExperimentOnForXo(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->setRetainInstance(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->initDataManagers()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    :goto_0
    const-string v0, "com.ebay.mobile.ads.google.xo.XoDisplayAdFragment.placementId"

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    const-string v0, "com.ebay.mobile.merch.XoDisplayAdFragment.itemIds"

    .line 157
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->itemIds:[J

    const-string v0, "com.ebay.mobile.merch.XoDisplayAdFragment.fragmentTag"

    .line 158
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->fragmentTag:Ljava/lang/String;

    const p3, 0x7f0d02c8

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    .line 162
    iget-object p2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz p2, :cond_1

    .line 163
    iget-object p2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAd;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    goto :goto_1

    .line 164
    :cond_1
    iget-boolean p2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->destroy()V

    .line 176
    :cond_0
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/ebay/mobile/merch/MerchandiseDataManager;->KEY:Lcom/ebay/mobile/merch/MerchandiseDataManager$KeyParams;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/merch/MerchandiseDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    .line 138
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/merch/MerchandiseDataManager;->registerObserver(Ljava/lang/Object;)V

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 141
    iget-wide v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->merchandiseDataManager:Lcom/ebay/mobile/merch/MerchandiseDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->itemIds:[J

    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/CommonLangUtils;->arrayToList([J)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/ebay/mobile/merch/MerchandiseDataManager;->getDisplayAds(Ljava/util/List;Ljava/util/List;ZLcom/ebay/mobile/merch/MerchandiseDataManager$Observer;)V

    :cond_0
    return-void
.end method

.method public onMerchandiseLoaded(Lcom/ebay/mobile/merch/MerchandiseDataManager;Lcom/ebay/nautilus/domain/content/Content;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/merch/MerchandiseDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;->placementsById:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 189
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 190
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 193
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/recommendation/Merchandise;->placementsById:Ljava/util/Map;

    iget-wide v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;

    if-eqz p2, :cond_8

    .line 194
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 196
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->impression:Lcom/ebay/nautilus/domain/data/recommendation/Impression;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->impression:Lcom/ebay/nautilus/domain/data/recommendation/Impression;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/recommendation/Impression;->plmt:Ljava/lang/String;

    iput-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->impressionId:Ljava/lang/String;

    goto :goto_0

    .line 199
    :cond_1
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->impressionId:Ljava/lang/String;

    .line 201
    :goto_0
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/recommendation/Placement;->ads:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;

    .line 203
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 206
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->providerParameters:Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;->ppid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 207
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->providerParameters:Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent$ProviderParameters;->ppid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 209
    :cond_2
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    if-eqz v2, :cond_4

    .line 211
    iget-object v2, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    invoke-static {v2}, Lcom/ebay/mobile/util/AdUtil;->targetingParametersToBundle(Lcom/google/gson/JsonElement;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 213
    const-class v3, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 215
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DFP Ad parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->targetingParameters:Lcom/google/gson/JsonElement;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 218
    :cond_4
    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->buildMfeAdUnitId(Lcom/ebay/nautilus/domain/data/recommendation/AdContent;)Ljava/lang/String;

    move-result-object v8

    .line 219
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    return-void

    .line 225
    :cond_5
    new-instance v0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    iget-wide v2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v2, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;

    iget-object v6, p2, Lcom/ebay/nautilus/domain/data/recommendation/AdContent;->campaignName:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->impressionId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    .line 227
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    invoke-direct/range {v3 .. v9}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p2

    invoke-virtual {v0, p1, p2, v2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->loadAd(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    .line 229
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 232
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p2

    .line 233
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Ads$I;->mitigationThresholdInMs:Lcom/ebay/mobile/dcs/Dcs$Ads$I;

    invoke-interface {p2, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v1, 0x2710

    if-le v0, v1, :cond_7

    .line 235
    :cond_6
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$Ads$I;->mitigationThresholdInMs:Lcom/ebay/mobile/dcs/Dcs$Ads$I;

    invoke-interface {p2, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->getDefault(Lcom/ebay/nautilus/domain/dcs/DcsPropInteger;)I

    move-result v0

    .line 236
    :cond_7
    new-instance p2, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$1;-><init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)V

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 249
    :cond_8
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    goto :goto_2

    :cond_9
    :goto_1
    return-void

    .line 253
    :cond_a
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public onMerchandiseLoading(Lcom/ebay/mobile/merch/MerchandiseDataManager;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "com.ebay.mobile.ads.google.xo.XoDisplayAdFragment.placementId"

    .line 125
    iget-wide v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->placementId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "com.ebay.mobile.merch.XoDisplayAdFragment.itemIds"

    .line 126
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->itemIds:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "com.ebay.mobile.merch.XoDisplayAdFragment.fragmentTag"

    .line 127
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->fragmentTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public populateDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V
    .locals 4
    .param p1    # Lcom/google/android/gms/ads/formats/NativeContentAdView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 279
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0053

    .line 282
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/mobile/util/AdUtil;->getAdvertisementText(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0048

    .line 286
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setBodyView(Landroid/view/View;)V

    :cond_1
    const v0, 0x7f0a0052

    .line 294
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x8

    .line 295
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0049

    .line 296
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 297
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    iget-object v3, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    :cond_2
    const v0, 0x7f0a0050

    .line 306
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 307
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setLogoView(Landroid/view/View;)V

    goto :goto_0

    .line 316
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    if-eqz p2, :cond_4

    const p2, 0x7f0a0051

    .line 323
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_4
    return-void
.end method

.method public populateHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V
    .locals 5
    .param p1    # Lcom/google/android/gms/ads/formats/NativeContentAdView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 359
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getCurrentSite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    iget v0, v0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_0

    const-string v0, "eBay Money Back Guarantee"

    const-string v1, "Worry-free shopping. Get the item you ordered or your money back."

    const-string v2, "Learn More"

    goto :goto_0

    :cond_0
    const-string v0, "eBay-K\u00e4uferschutz"

    const-string v1, "Geld zur\u00fcck, falls mal etwas schiefgeht."

    const-string v2, "Weitere Details"

    :goto_0
    const v3, 0x7f0a0053

    .line 375
    invoke-virtual {p1, v3}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 376
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0048

    .line 380
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 381
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0052

    .line 384
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 385
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 386
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0050

    .line 388
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 389
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0802d7

    .line 390
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->buyerProtectionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a0049

    .line 396
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x0

    .line 397
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 398
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-direct {p0, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getHouseAdCtaOnClickListner(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p2, :cond_2

    const p2, 0x7f0a0051

    .line 405
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    return-void
.end method

.method public showDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAd;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/formats/NativeContentAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 258
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 260
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    if-eqz v1, :cond_2

    :cond_1
    return-void

    .line 263
    :cond_2
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->populateDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V

    goto :goto_0

    :cond_3
    const p1, 0x7f0a0051

    .line 271
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;-><init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method public showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V
    .locals 4

    .line 330
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->dfpNativeAd:Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v1, :cond_2

    :cond_1
    return-void

    .line 335
    :cond_2
    iget-boolean v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 337
    iput-boolean v1, p0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    .line 338
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v2, "AdLatencyFallback"

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    .line 339
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v2

    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_3
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->populateHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;Z)V

    goto :goto_0

    :cond_4
    const p1, 0x7f0a0051

    .line 348
    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment$PopulateAdRunnable;-><init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method
