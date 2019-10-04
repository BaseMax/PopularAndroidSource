.class public Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "CompatibilityAnswerSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field public final compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;)V
    .locals 1

    .line 29
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    invoke-direct {p0, p1, v0}, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V
    .locals 6

    .line 34
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->COMPATIBILITY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 35
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 36
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductUtil;->convertToProductContext(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswer;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    .line 37
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;->removeNonFinderItems()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object v0
.end method

.method public synthetic getContainerViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider$-CC;->$default$getContainerViewModel(Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v0

    return-object v0
.end method

.method public setContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 4

    .line 44
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;->totalSize()I

    move-result p2

    .line 46
    invoke-static {}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->newBuilder()Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->personalizedGarageProducts:Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;

    .line 48
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;->userSavedGarageProducts:Ljava/util/List;

    const v3, 0x7f120380

    .line 49
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addGarageProducts(Ljava/util/List;Ljava/lang/String;)V

    .line 50
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/compatibility/PersonalizedGarageProducts;->recentlyVisitedGarageProducts:Ljava/util/List;

    const v2, 0x7f12037f

    .line 51
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addGarageProducts(Ljava/util/List;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const p2, 0x7f12037e

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setTitle(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    const v1, 0x7f12037c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const p2, 0x7f120379

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setTitle(Ljava/lang/String;)V

    .line 61
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->compatibleProductContext:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    const v1, 0x7f120378

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;Z)V

    .line 63
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/CompatibilityAnswerSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-void
.end method
