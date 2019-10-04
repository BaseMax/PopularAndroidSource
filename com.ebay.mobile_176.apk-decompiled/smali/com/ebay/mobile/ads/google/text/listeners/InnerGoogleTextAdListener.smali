.class public Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "InnerGoogleTextAdListener.java"


# instance fields
.field private final listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

.field private final loaderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->loaderWeakReference:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    const-string v0, "GTXT onAdClicked"

    .line 87
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    const-string v0, "GTXT onAdFailedToLoad"

    .line 50
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->loaderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    if-eqz v0, :cond_0

    .line 54
    sget-object v1, Lcom/ebay/mobile/merch/AplsInfo$Cond;->ERR:Lcom/ebay/mobile/merch/AplsInfo$Cond;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->logPerfData(Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdFailedToLoad(I)V

    :cond_1
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 96
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    const-string v0, "GTXT onAdImpression"

    .line 98
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    const-string v0, "GTXT onAdLeftApplication"

    .line 65
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    const-string v0, "GTXT onAdLoaded"

    .line 35
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->loaderWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    if-eqz v0, :cond_0

    .line 39
    sget-object v1, Lcom/ebay/mobile/merch/AplsInfo$Cond;->OKAY:Lcom/ebay/mobile/merch/AplsInfo$Cond;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->logPerfData(Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdLoaded()V

    :cond_1
    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 74
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    const-string v0, "GTXT onAdOpened"

    .line 76
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logGtxtAds(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/InnerGoogleTextAdListener;->listener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdOpened()V

    :cond_0
    return-void
.end method
