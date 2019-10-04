.class public Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;
.super Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;
.source "VipEbayGoogleTextAdsListener.java"


# instance fields
.field fragmentWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;",
            ">;"
        }
    .end annotation
.end field

.field googleTextAdViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Landroid/view/ViewGroup;Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;)V
    .locals 1
    .param p3    # Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V

    .line 27
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->googleTextAdViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    const-string v0, "000vip"

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdFailedToLoad(I)V

    .line 35
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->removeAdViewFromParent()V

    .line 37
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showGoogleTextAdsView(Z)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 45
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdLoaded()V

    .line 47
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->removeAdViewFromParent()V

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    if-eqz v0, :cond_3

    .line 53
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    if-eqz v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAdContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showGoogleTextAdsView(Z)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showGoogleTextAdsView(Z)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->showGoogleTextAdsView(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method removeAdViewFromParent()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->fragmentWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;

    .line 84
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/VipEbayGoogleTextAdsListener;->googleTextAdViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/vip/VipAdsFragment;->getGoogleTextAdContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
