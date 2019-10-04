.class public Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;
.super Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;
.source "SearchResultEbayGoogleTextAdListener.java"


# instance fields
.field public adContainer:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private searchViewManagerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/search/SearchViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Lcom/ebay/mobile/search/SearchViewManager;Landroid/view/ViewGroup;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V

    .line 27
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->searchViewManagerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private removeAdViewFromParent()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    const-string v0, "000srp"

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->adContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdFailedToLoad(I)V

    .line 56
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->removeAdViewFromParent()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->removeAdViewFromParent()V

    .line 39
    :try_start_0
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdLoaded()V

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->searchViewManagerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/search/SearchViewManager;

    .line 43
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SearchResultEbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/search/SearchViewManager;->googleTextAdLoaded(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
