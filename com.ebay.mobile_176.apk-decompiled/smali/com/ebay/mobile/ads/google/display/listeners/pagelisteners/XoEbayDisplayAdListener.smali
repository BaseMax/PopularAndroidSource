.class public Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;
.super Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;
.source "XoEbayDisplayAdListener.java"


# instance fields
.field private final fragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final placementId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p6, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivity(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)Landroidx/fragment/app/FragmentActivity;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    instance-of v1, p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    const-string v0, "DFP onAdFailedToLoad:  %s"

    const/4 v1, 0x1

    .line 97
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 106
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-eqz v0, :cond_1

    .line 107
    check-cast p1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string v1, "failure"

    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 5

    .line 42
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdLoaded()V

    const-string v0, "DFP onAdLoaded"

    .line 43
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    if-eqz v0, :cond_5

    .line 46
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-nez v1, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 51
    instance-of v2, v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v2, :cond_1

    .line 53
    move-object v2, v1

    check-cast v2, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string/jumbo v4, "success"

    invoke-virtual {p0, v2, v3, v4}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {v2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->clearStartTime()V

    .line 57
    :cond_1
    iget-boolean v2, v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->isUsingHouseAd:Z

    if-eqz v2, :cond_2

    return-void

    .line 60
    :cond_2
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {v2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->getNativeAd()Lcom/google/android/gms/ads/formats/NativeAd;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 61
    instance-of v4, v2, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v4, :cond_3

    .line 63
    check-cast v2, Lcom/google/android/gms/ads/formats/NativeContentAd;

    invoke-virtual {v0, v2, v3}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showDisplayAd(Lcom/google/android/gms/ads/formats/NativeContentAd;Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    .line 65
    instance-of v0, v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v0, :cond_4

    .line 67
    check-cast v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->trackDisplayAdRender(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0, v3}, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;->showHouseAd(Lcom/google/android/gms/ads/formats/NativeContentAdView;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onAdOpened()V
    .locals 5

    .line 77
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdOpened()V

    .line 79
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->getActivity(Lcom/ebay/mobile/ads/google/xo/XoDisplayAdFragment;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 84
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz v1, :cond_1

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    check-cast v0, Lcom/ebay/nautilus/shell/app/TrackingSupport;

    .line 87
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/TrackingSupport;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ad"

    const-string v4, "ad"

    invoke-direct {v2, v0, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/XoEbayDisplayAdListener;->trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V

    :cond_1
    return-void
.end method
