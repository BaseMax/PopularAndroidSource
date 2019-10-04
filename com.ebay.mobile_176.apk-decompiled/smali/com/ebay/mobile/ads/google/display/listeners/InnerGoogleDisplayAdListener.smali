.class public Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "InnerGoogleDisplayAdListener.java"


# instance fields
.field private final innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

.field private final loaderReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->loaderReference:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    const-string v0, "Inner listener onAdFailedToLoad"

    .line 24
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logNativeAdLoader(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->loaderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/ebay/mobile/merch/AplsInfo$Cond;->ERR:Lcom/ebay/mobile/merch/AplsInfo$Cond;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->logPerfData(Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    const-string v0, "Inner listener onAdLoaded"

    .line 44
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logNativeAdLoader(Ljava/lang/String;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    const-string v0, "Inner listener onAdOpened"

    .line 36
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logNativeAdLoader(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;->innerListener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdOpened()V

    :cond_0
    return-void
.end method
