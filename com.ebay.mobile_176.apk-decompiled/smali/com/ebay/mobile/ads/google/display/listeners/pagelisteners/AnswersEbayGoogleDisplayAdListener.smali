.class public final Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;
.super Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;
.source "AnswersEbayGoogleDisplayAdListener.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# instance fields
.field private final placementId:Ljava/lang/String;

.field private final viewModelWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p2, v0, v0, v0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->viewModelWeakReference:Ljava/lang/ref/WeakReference;

    .line 32
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMapKey()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getToastContext()Landroid/content/Context;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->viewModelWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->getContext()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdFailedToLoad(I)V
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdFailedToLoad(I)V

    .line 59
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->viewModelWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DFP onAdFailedToLoad:  %s"

    const/4 v2, 0x1

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 65
    iget-object v1, v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewdtlsTrackingEnabled:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1, v4}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 68
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->ACTN:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->RETRIEVAL_NONE:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    invoke-virtual {v0, p1, v1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->logTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)V

    goto :goto_0

    .line 71
    :cond_1
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->ACTN:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->RETRIEVAL_FAILURE:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    invoke-virtual {v0, p1, v1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->logTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)V

    .line 72
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->showDisplayAds()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 39
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdLoaded()V

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->viewModelWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DFP onAdLoaded"

    const/4 v2, 0x0

    .line 44
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 47
    iget-object v1, v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewdtlsTrackingEnabled:Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 49
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->ACTN:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->RETRIEVAL_SUCCESS:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->logTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)V

    .line 50
    invoke-virtual {v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->showDisplayAds()V

    return-void
.end method

.method public onAdOpened()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 79
    invoke-super {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->onAdOpened()V

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;->viewModelWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "DFP onAdOpened"

    const/4 v2, 0x0

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->ACTN:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;->NAVSRC:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->logTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)V

    return-void
.end method
