.class public Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;
.super Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;
.source "SynthesizedTextAdViewHolder.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder<",
        "Lcom/ebay/mobile/databinding/AdsVipPbTextBinding;",
        ">;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation


# instance fields
.field private adListener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

.field private googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/ebay/mobile/databinding/AdsVipPbTextBinding;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p2    # Lcom/ebay/mobile/databinding/AdsVipPbTextBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method


# virtual methods
.method public onBindView(ILcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 6

    .line 54
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;->onBindView(ILcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 57
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->isAdExperimentOffForMtp(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->adListener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    if-eqz p1, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->itemView:Landroid/view/View;

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    .line 65
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 67
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 68
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 73
    check-cast p1, Landroid/widget/LinearLayout;

    if-eq p1, v2, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 77
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x4

    .line 86
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p1, 0x0

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEventHandler()Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;->getItem()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/Item;

    if-eqz v0, :cond_4

    .line 89
    iget-object v1, v0, Lcom/ebay/mobile/Item;->title:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v1, :cond_4

    .line 90
    iget-object p1, v0, Lcom/ebay/mobile/Item;->title:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->getText(Z)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 94
    new-instance v0, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;

    invoke-direct {v0}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;-><init>()V

    .line 95
    invoke-static {p2}, Lcom/ebay/mobile/util/AdUtil;->getGoogleTextAdNumber(Z)I

    move-result p2

    .line 96
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->isUserOptedOutOfPersonalizedAds(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result v1

    .line 97
    iget-object v3, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {v3}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    const-class v4, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v3, v4}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {v3}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v3

    iget-object v3, v3, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 99
    new-instance v4, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;

    invoke-direct {v4, v0, v2}, Lcom/ebay/mobile/ads/google/text/listeners/pagelisteners/SynthesizedTextGoogleTextAdListener;-><init>(Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;Landroid/view/ViewGroup;)V

    iput-object v4, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->adListener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    .line 100
    new-instance v5, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;

    const-string v4, "000vip"

    invoke-direct {v5, v4, p1, p2, v1}, Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 102
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->adListener:Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/ads/google/text/GoogleTextAdLoader;->loadAd(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbaySite;Lcom/ebay/mobile/ads/google/text/listeners/EbayGoogleTextAdListener;Lcom/ebay/nautilus/domain/data/experience/ads/csatextads/CsaTextAd;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 43
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/search/SearchAdView;->destroy()V

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedTextAdViewHolder;->googleTextAdView:Lcom/google/android/gms/ads/search/SearchAdView;

    :cond_0
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
