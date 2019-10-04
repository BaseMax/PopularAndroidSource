.class public Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;
.super Ljava/lang/Object;
.source "AnswersGoogleDisplayAdViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/HasDynamicTrackingIdentifiers;
.implements Lcom/ebay/nautilus/shell/uxcomponents/tracking/HasViewTracking;
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;
    }
.end annotation


# instance fields
.field private adListener:Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

.field private adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

.field private adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private homeAdViewCard:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;",
            ">;"
        }
    .end annotation
.end field

.field private layoutId:I

.field private trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

.field private trackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field private viewTrackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public viewdtlsTrackingEnabled:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            "Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewdtlsTrackingEnabled:Landroidx/databinding/ObservableBoolean;

    const-string v0, "Context cannot be null"

    .line 71
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->context:Ljava/lang/ref/WeakReference;

    .line 73
    iput p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->layoutId:I

    .line 74
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    .line 75
    iput-object p5, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->trackingList:Ljava/util/List;

    .line 76
    iput-object p6, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewTrackingList:Ljava/util/List;

    const-string p1, "Ad Module cannot be null"

    .line 77
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    .line 78
    invoke-static {p4}, Lcom/ebay/mobile/util/AdUtil;->buildMfeAdUnitId(Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 80
    new-instance p2, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    if-eqz p1, :cond_1

    .line 83
    new-instance p1, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

    iget-object p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    .line 84
    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;-><init>(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adListener:Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

    .line 85
    invoke-direct {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->loadDisplayAd()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->context:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adListener:Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-object p0
.end method

.method private loadDisplayAd()V
    .locals 3

    .line 184
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getProviderParameters()Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/ProviderParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/ProviderParameters;->getPublisherId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setPublisherProvidedId(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 187
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getTargetingParameters()Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getTargetingParameters()Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->targetingParametersToBundle(Lcom/google/gson/JsonElement;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DFP Ad parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getTargetingParameters()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;-><init>(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    invoke-virtual {v1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->execute()Lcom/ebay/nautilus/domain/content/AsynchronousTask;

    :cond_1
    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adListener:Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

    return-object v0
.end method

.method public getAdLoader()Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    return-object v0
.end method

.method public getAdModule()Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    return-object v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->context:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getHomeAdViewCard()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->homeAdViewCard:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getTrackingIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->trackingIdentifiers:Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    return-object v0
.end method

.method public getViewTrackingInfo()Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewTrackingList:Ljava/util/List;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;->VIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;->getTracking(Ljava/util/List;Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object v0

    .line 224
    invoke-static {v0, v2}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->convertTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->layoutId:I

    return v0
.end method

.method public isViewTrackingEnabled()Landroidx/databinding/ObservableBoolean;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->viewdtlsTrackingEnabled:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public logTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adModule:Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTrackingActionType;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;

    move-result-object p1

    .line 204
    invoke-static {p1, p2}, Lcom/ebay/nautilus/domain/analytics/ExperienceTrackingUtil;->convertTracking(Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;Lcom/ebay/nautilus/domain/data/experience/type/base/ActionKindType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz p2, :cond_0

    .line 207
    iget-object p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/shell/app/FwActivity;

    invoke-interface {p2}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_0
    return-void
.end method

.method public onBindWithView(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-static {p1}, Landroidx/databinding/DataBindingUtil;->findBinding(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/databinding/NativeAdAnswersHomeBinding;

    if-nez p1, :cond_0

    const-string p1, "NativeAdAnswersHomeBinding binding not complete"

    const/4 v0, 0x0

    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/AdUtil;->logDfpAds(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object p1, p1, Lcom/ebay/mobile/databinding/NativeAdAnswersHomeBinding;->answersHomeAdContainer:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->homeAdViewCard:Ljava/lang/ref/WeakReference;

    .line 159
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->showDisplayAds()V

    return-void
.end method

.method public showDisplayAds()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->homeAdViewCard:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->homeAdViewCard:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->homeAdViewCard:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdView;->showDisplayAdsView(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;)V

    :cond_0
    return-void
.end method
