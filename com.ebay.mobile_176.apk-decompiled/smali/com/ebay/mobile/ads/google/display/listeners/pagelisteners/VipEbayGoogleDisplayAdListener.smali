.class public Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;
.super Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;
.source "VipEbayGoogleDisplayAdListener.java"


# instance fields
.field private final fragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final placementId:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->placementId:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getActivity(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)Lcom/ebay/mobile/viewitem/ItemViewActivity;
    .locals 1
    .param p1    # Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getItemViewActivity()Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayAdView(Lcom/ebay/mobile/viewitem/ItemViewActivity;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 143
    invoke-static {p1, p2, p3}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getDisplayAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getErrorMapKey()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->placementId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentFromWeakReference()Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 5

    .line 96
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    .line 98
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "DFP onAdFailedToLoad:  %s"

    const/4 v3, 0x1

    .line 106
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->placementId:Ljava/lang/Long;

    invoke-virtual {v0, v4, p1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    .line 110
    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string v1, "failure"

    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 42
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdLoaded()V

    .line 44
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getFragmentFromWeakReference()Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 45
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "DFP onAdLoaded"

    .line 52
    invoke-static {v2}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->placementId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getAdContainer(Landroid/app/Activity;Ljava/lang/Long;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->removeNativeAdView(Landroid/view/ViewGroup;)V

    .line 58
    iget-object v3, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    iget-object v3, v3, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-virtual {p0, v1, v2, v3}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getDisplayAdView(Lcom/ebay/mobile/viewitem/ItemViewActivity;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 62
    iget-object v3, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->placementId:Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showDisplayAdsView(ZLjava/lang/Long;)V

    .line 65
    :cond_2
    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string/jumbo v2, "success"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public onAdOpened()V
    .locals 5

    .line 73
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdOpened()V

    .line 75
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getFragmentFromWeakReference()Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)Lcom/ebay/mobile/viewitem/ItemViewActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 86
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    .line 87
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ItemViewActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ad"

    const-string v4, "ad"

    invoke-direct {v2, v0, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/VipEbayGoogleDisplayAdListener;->trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    :cond_2
    return-void
.end method
