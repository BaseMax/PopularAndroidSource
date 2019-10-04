.class public Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;
.super Landroidx/cardview/widget/CardView;
.source "CsaGoogleTextAdView.java"


# instance fields
.field private ad:Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

.field private onAdCallBackListener:Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic lambda$removeSearchAdView$0(Landroid/view/View;)V
    .locals 0

    .line 68
    check-cast p0, Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/search/SearchAdView;->destroy()V

    return-void
.end method


# virtual methods
.method public getOnAdCallBackListener()Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->onAdCallBackListener:Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;

    return-object v0
.end method

.method public loadAd()V
    .locals 7

    .line 86
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v1, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-direct {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;-><init>()V

    .line 90
    new-instance v5, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->ad:Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, p0, v1, v0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/CsaGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v4

    iget-object v6, p0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->ad:Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V

    return-void
.end method

.method public removeSearchAdView()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->removeAllViews()V

    .line 66
    instance-of v1, v0, Lcom/google/android/gms/ads/search/SearchAdView;

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Lcom/ebay/mobile/ads/google/answers/-$$Lambda$CsaGoogleTextAdView$cLBZbNwf6jaQECzneOyiCeZHLDc;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/ads/google/answers/-$$Lambda$CsaGoogleTextAdView$cLBZbNwf6jaQECzneOyiCeZHLDc;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAd(Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->ad:Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    return-void
.end method

.method public setOnAdLoadedListener(Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/answers/CsaGoogleTextAdView;->onAdCallBackListener:Lcom/ebay/mobile/ads/google/text/view/OnAdCallCompletedCallBack;

    return-void
.end method
