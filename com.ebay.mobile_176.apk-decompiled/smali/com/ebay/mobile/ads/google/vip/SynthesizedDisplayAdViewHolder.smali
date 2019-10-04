.class public Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;
.super Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;
.source "SynthesizedDisplayAdViewHolder.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder<",
        "Lcom/ebay/mobile/databinding/AdsVipPbDisplayBinding;",
        ">;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation


# instance fields
.field private final callback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/ebay/mobile/databinding/AdsVipPbDisplayBinding;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p2    # Lcom/ebay/mobile/databinding/AdsVipPbDisplayBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/databinding/ViewDataBinding;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    .line 25
    new-instance p1, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder$1;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder$1;-><init>(Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->callback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method


# virtual methods
.method public nativeAdUpdated()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEventHandler()Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;->getDisplayAdsDataForItem()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd;

    .line 64
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v1, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    :cond_0
    return-void
.end method

.method public onBindView(ILcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 0

    .line 38
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;->onBindView(ILcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 39
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->nativeAdUpdated()V

    .line 40
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEventHandler()Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;->getDisplayAdsDataForItem()Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->callback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

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
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-super {p0, p1}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    .line 54
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEventHandler()Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;->getDisplayAdsDataForItem()Landroidx/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->callback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 55
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p1, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;

    invoke-virtual {p1}, Lcom/ebay/mobile/ads/google/vip/DisplayAdContainerView;->removeDisplayAdView()V

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

.method public onRecycleView()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/ebay/mobile/viewitem/viewholder/SynthesizedBindingViewHolder;->onRecycleView()V

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->viewModel:Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/model/SynthesizedViewModel;->getEventHandler()Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/mobile/viewitem/model/ViewItemComponentEventHandler;->getDisplayAdsDataForItem()Landroidx/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/vip/SynthesizedDisplayAdViewHolder;->callback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

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
