.class public Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;
.super Landroidx/cardview/widget/CardView;
.source "AnswersGoogleDisplayAdView.java"


# instance fields
.field private adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

.field private currentNativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

.field private nativeAdView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context cannot be null"

    .line 32
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const-string v0, "Context cannot be null"

    .line 38
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context cannot be null"

    .line 43
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$onLayout$0(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->displayAd()V

    return-void
.end method

.method static synthetic lambda$removeAdView$1(Lcom/google/android/gms/ads/formats/NativeAdView;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/ads/formats/NativeAdView;->destroy()V

    return-void
.end method


# virtual methods
.method public displayAd()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->getNativeAd()Lcom/google/android/gms/ads/formats/NativeAd;

    move-result-object v0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->currentNativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->removeAdView()V

    if-nez v0, :cond_2

    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_3

    .line 150
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    iget-object v1, v1, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-static {v0, p0, v1}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getDisplayAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    iget-object v1, v1, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    iput-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->currentNativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    .line 155
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->invalidate()V

    :cond_3
    return-void
.end method

.method public getAdLoader()Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-object v0
.end method

.method public getCurrentNativeAd()Lcom/google/android/gms/ads/formats/NativeAd;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->currentNativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onDetachedFromWindow()V

    .line 88
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->removeAdView()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Landroidx/cardview/widget/CardView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$Uqsbpl0PUoFvFdzrU8AkI_GM_kc;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$Uqsbpl0PUoFvFdzrU8AkI_GM_kc;-><init>(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;)V

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->removeAdView()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->displayAd()V

    :goto_0
    return-void
.end method

.method public removeAdView()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->nativeAdView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->nativeAdView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->nativeAdView:Landroid/view/View;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    .line 129
    new-instance v1, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$_0pGQpDhY6hsmYvp_We7ZGiPlPU;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/ads/google/display/view/-$$Lambda$AnswersGoogleDisplayAdView$_0pGQpDhY6hsmYvp_We7ZGiPlPU;-><init>(Lcom/google/android/gms/ads/formats/NativeAdView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->nativeAdView:Landroid/view/View;

    return-void
.end method

.method public setNativeAdView(Lcom/google/android/gms/ads/formats/NativeAdView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->nativeAdView:Landroid/view/View;

    return-void
.end method

.method public showDisplayAdsView(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;)V
    .locals 1
    .param p1    # Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Ad Loader cannot be null"

    .line 114
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    .line 116
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->displayAd()V

    return-void
.end method
