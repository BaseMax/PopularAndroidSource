.class public Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;
.super Landroid/widget/LinearLayout;
.source "DisplayAdContainerView.java"


# instance fields
.field private displayAdView:Landroid/view/View;

.field private nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context cannot be null"

    .line 27
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 33
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context cannot be null"

    .line 38
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic lambda$onLayout$0(Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->updateDisplayAdView()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 57
    new-instance p1, Lcom/ebay/mobile/ads/google/vip/-$$Lambda$DisplayAdContainerView$zQN7TlNK5pF7nzd32PhjLCtRwSo;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/ads/google/vip/-$$Lambda$DisplayAdContainerView$zQN7TlNK5pF7nzd32PhjLCtRwSo;-><init>(Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;)V

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeDisplayAdView()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->removeAllViews()V

    .line 65
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method public setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    if-eq p1, v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    .line 46
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->removeDisplayAdView()V

    .line 47
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->updateDisplayAdView()V

    :cond_0
    return-void
.end method

.method public updateDisplayAdView()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->setVisibility(I)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->getWidth()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->nativeAd:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-static {v0, p0, v2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdViewFactory;->getDisplayAdView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/ads/formats/NativeAd;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->displayAdView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040114

    const v2, 0x7f070117

    invoke-static {v0, v1, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeDimensionPixelSize(Landroid/content/Context;II)I

    move-result v0

    int-to-float v0, v0

    .line 91
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
