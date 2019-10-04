.class public Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;
.super Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;
.source "SynthesizedTextGoogleTextAdListener.java"


# instance fields
.field public parentView:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Landroid/view/ViewGroup;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;)V

    .line 19
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private removeAdViewFromParent()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
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

    .line 59
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdFailedToLoad(I)V

    .line 26
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->removeAdViewFromParent()V

    .line 27
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;->onAdLoaded()V

    .line 34
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->removeAdViewFromParent()V

    .line 36
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->googleTextAdLoader:Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->getTextAdView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;->parentView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
