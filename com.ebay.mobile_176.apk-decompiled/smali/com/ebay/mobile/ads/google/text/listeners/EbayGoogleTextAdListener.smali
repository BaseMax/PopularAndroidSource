.class public abstract Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;
.super Ljava/lang/Object;
.source "EbayGoogleTextAdListener.java"

# interfaces
.implements Lcom/ebay/mobile/ads/google/util/GoogleAdNoFillDeveloperTool;


# instance fields
.field protected final googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

.field public final viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->viewWeakReference:Ljava/lang/ref/WeakReference;

    .line 39
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V

    return-void
.end method


# virtual methods
.method public callbackHelper(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getOnAdCallBackListener()Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getOnAdCallBackListener()Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;->onAdCallCompleted(I)V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 1

    const/4 v0, 0x5

    .line 89
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 3

    .line 68
    sget-boolean v0, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->getToastContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/util/AdUtil;->setErrorForTextAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 72
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 74
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    :goto_0
    return-void
.end method

.method public onAdImpression()V
    .locals 1

    const/4 v0, 0x6

    .line 94
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 60
    sget-boolean v0, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->getToastContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/util/AdUtil;->setErrorForTextAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->callbackHelper(I)V

    return-void
.end method
