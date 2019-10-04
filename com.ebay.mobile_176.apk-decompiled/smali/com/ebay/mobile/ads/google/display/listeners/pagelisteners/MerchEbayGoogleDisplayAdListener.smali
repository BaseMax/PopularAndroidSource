.class public Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;
.super Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;
.source "MerchEbayGoogleDisplayAdListener.java"


# instance fields
.field private adsDataObservableField:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/google/android/gms/ads/formats/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

.field private final sidHelper:Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/databinding/ObservableField;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;",
            "Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/databinding/ObservableField<",
            "Lcom/google/android/gms/ads/formats/NativeAd;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 31
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->sidHelper:Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;

    .line 32
    iput-object p7, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adsDataObservableField:Landroidx/databinding/ObservableField;

    return-void
.end method


# virtual methods
.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->VIP_100981:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 53
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    const-string v0, "DFP onAdFailedToLoad: %s"

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string v1, "failure"

    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->clearStartTime()V

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 38
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdLoaded()V

    const-string v0, "DFP onAdLoaded"

    .line 39
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adsDataObservableField:Landroidx/databinding/ObservableField;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->getNativeAd()Lcom/google/android/gms/ads/formats/NativeAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    const-string/jumbo v2, "success"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 68
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdOpened()V

    const-string v0, "DFP onAdOpened"

    .line 69
    invoke-static {v0}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->sidHelper:Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/MerchEbayGoogleDisplayAdListener;->trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;)V

    return-void
.end method
