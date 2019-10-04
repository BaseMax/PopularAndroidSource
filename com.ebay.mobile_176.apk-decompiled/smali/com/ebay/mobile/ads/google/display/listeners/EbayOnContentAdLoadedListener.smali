.class public Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;
.super Ljava/lang/Object;
.source "EbayOnContentAdLoadedListener.java"

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# instance fields
.field private final listener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;->loaderReference:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;->listener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;->loaderReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    iput-object p1, v0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    .line 29
    iget-object p1, v0, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->logTrackPerf:Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    sget-object v0, Lcom/ebay/mobile/merch/AplsInfo$Cond;->OKAY:Lcom/ebay/mobile/merch/AplsInfo$Cond;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/AdUtil;->logPerfData(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;Lcom/ebay/mobile/merch/AplsInfo$Cond;)V

    .line 30
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;->listener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    if-eqz p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayOnContentAdLoadedListener;->listener:Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdLoaded()V

    :cond_1
    return-void
.end method
