.class public Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
.super Ljava/lang/Object;
.source "EbayGoogleDisplayAdLoader.java"


# instance fields
.field private adUnitId:Ljava/lang/String;

.field public logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

.field private placementId:Ljava/lang/String;

.field private startLoad:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->startLoad:J

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    .line 44
    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->formatAdUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->adUnitId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearStartTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 127
    iput-wide v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->startLoad:J

    return-void
.end method

.method public getNativeAd()Lcom/google/android/gms/ads/formats/NativeAd;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->startLoad:J

    return-wide v0
.end method

.method public loadAd(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V
    .locals 4

    .line 67
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->adUnitId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnAppInstallAdLoadedListener;

    invoke-direct {v1, p0, p3}, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnAppInstallAdLoadedListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;

    invoke-direct {v1, p0, p3}, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;

    invoke-direct {v1, p0, p3}, Lcom/ebay/mobile/ads/google/display/listeners/InnerGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    const-string v1, "LoadGoogleNativeDisplayAd"

    .line 77
    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->placementId:Ljava/lang/String;

    sget-object v3, Lcom/ebay/mobile/merch/AplsInfo$Product;->GND:Lcom/ebay/mobile/merch/AplsInfo$Product;

    invoke-static {p1, v1, v2, v3}, Lcom/ebay/mobile/util/AdUtil;->createGoogleAdsLogTrackPerf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/mobile/merch/AplsInfo$Product;)Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    .line 81
    sget-boolean p1, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p3}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/ebay/mobile/util/AdUtil;->setErrorForDisplayAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->startLoad:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p3, p2}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    :cond_1
    const-string p2, "GoogleNativeAds"

    const-string p3, "loadDisplayAd"

    .line 93
    invoke-static {p2, p3, p1}, Lcom/ebay/mobile/util/AdUtil;->logGoogleAplsCrash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public logPerfData(Lcom/ebay/mobile/merch/AplsInfo$Cond;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/AdUtil;->logPerfData(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    return-void
.end method
