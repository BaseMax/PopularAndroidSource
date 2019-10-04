.class public Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;
.super Ljava/lang/Object;
.source "AdsViewModelFactory.java"


# static fields
.field private static final SUPPORTED_UX_COMPONENTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->THIRD_PARTY_ADS_BANNER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->NATIVE_ADS:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;->SUPPORTED_UX_COMPONENTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createViewModel(Landroid/content/Context;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 89
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    if-nez v0, :cond_1

    return-object v1

    .line 93
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getContainers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;

    .line 94
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    .line 99
    :cond_2
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/CardContainer;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    .line 106
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;

    .line 107
    invoke-static {v6}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->isValidForGoogle(Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v1

    .line 112
    :cond_4
    sget-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;->$SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    move-object p1, v1

    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getTrackingList()Ljava/util/List;

    move-result-object v1

    :cond_6
    move-object v7, v1

    .line 121
    new-instance p1, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    const v4, 0x7f0d02c3

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 123
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v8

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;-><init>(Landroid/content/Context;ILcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/domain/data/experience/ads/dfpdisplayads/DfpNativeDisplayAdCard;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    return-object p1
.end method

.method public static createViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/layout/LayoutType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Context must not be null"

    .line 52
    invoke-static {p0, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "LayoutType must not be null"

    .line 53
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "ModuleEntry must not be null"

    .line 54
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "UxHintType must not be null"

    .line 55
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    sget-object p1, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;->SUPPORTED_UX_COMPONENTS:Ljava/util/List;

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->THIRD_PARTY_ADS_BANNER:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    if-eqz p1, :cond_1

    .line 62
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;

    invoke-static {p0, p3, p1}, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;->createViewModel(Landroid/content/Context;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    .line 64
    :cond_0
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->uxComponentType:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->NATIVE_ADS:Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;

    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/domain/data/experience/type/layout/UxComponentType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    instance-of p0, p0, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

    if-eqz p0, :cond_1

    .line 67
    iget-object p0, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    check-cast p0, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/util/ModuleEntry;->placementSizeType:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-static {p0, p1, p3}, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory;->createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static createViewModel(Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 8
    .param p0    # Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PlacementSizeType must not be null"

    .line 143
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;->isValidForGoogle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 150
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    sget-object v0, Lcom/ebay/mobile/ads/google/answers/AdsViewModelFactory$1;->$SwitchMap$com$ebay$mobile$uxcomponents$viewmodel$UxHintType:[I

    invoke-virtual {p2}, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    move-object p2, v1

    goto :goto_0

    .line 159
    :cond_1
    new-instance p2, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;

    const v4, 0x7f0d03dc

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 163
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v6

    move-object v2, p2

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/ebay/mobile/ads/google/answers/SrpTextAdsModuleViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/ads/SrpTextAdsModule;ILandroid/graphics/Rect;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    :goto_0
    return-object p2
.end method
