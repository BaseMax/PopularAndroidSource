.class public Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "MotorTireMessageSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field private answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V
    .locals 6

    .line 36
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FINDER_CONFIRMATION_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 37
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 38
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    return-void
.end method

.method private createMessage(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;)Ljava/lang/String;
    .locals 7

    .line 103
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->getPartSpecificationListSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 105
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;->partsSpecifications:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v1

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;->selectedProductName:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->getText(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "TIRES"

    const-string v4, "BY_SIZE"

    .line 112
    invoke-direct {p0, p2, v0, v4}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->findNameBy(Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "TIRES"

    const-string v5, "BY_VEHICLE"

    .line 113
    invoke-direct {p0, p2, v4, v5}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->findNameBy(Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    .line 116
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const v1, 0x7f120fa2

    const/4 v4, 0x2

    .line 117
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    aput-object v0, v4, v3

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 118
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const v0, 0x7f120fa1

    .line 119
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    const p2, 0x7f120fa3

    .line 121
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method private createTireSelectionViewModel(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 7

    .line 58
    invoke-direct {p0}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->getPartSpecificationListSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;->partsSpecifications:Ljava/util/List;

    .line 62
    invoke-static {}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->newBuilder()Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;

    move-result-object v2

    .line 64
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProductContexts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 65
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    .line 68
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleMetaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->productType:Ljava/lang/String;

    .line 69
    new-instance v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    const-string v5, "TIRES"

    const-string v6, "BY_SIZE"

    invoke-direct {v4, v3, v5, v6}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "TIRES"

    const-string v5, "BY_VEHICLE"

    .line 71
    invoke-virtual {p2, v1, v3, v5}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;

    move-result-object p2

    const v3, 0x7f120fa0

    .line 73
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120184

    .line 74
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v5, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;

    invoke-direct {v5, v4}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireLearnMorePresenter;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;)V

    invoke-virtual {v2, v3, p1, v5}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setTitle(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;)V

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;

    .line 79
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->properties:Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v2, v0, p2, v4}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addMotorPartSpec(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->trackingList:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->enableHscrollTracking(Ljava/util/List;)V

    .line 85
    invoke-virtual {v2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v1

    :cond_4
    return-object p1
.end method

.method private findNameBy(Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, v0, p2, p3}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProduct(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;->name:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private getPartSpecificationListSize()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;->partsSpecifications:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->partsSpecificationsData:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecificationsHolder;->partsSpecifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

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
    .locals 3

    .line 44
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    invoke-static {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->newMapper(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;

    move-result-object p2

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProductContexts()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->createMessage(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->createTireSelectionViewModel(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p2

    const v2, 0x7f120436

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance v2, Lcom/ebay/mobile/compatibility/answers/MotorTireMessageViewModel;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/ebay/mobile/compatibility/answers/MotorTireMessageViewModel;-><init>(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;)V

    .line 52
    iput-object v2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorTireMessageSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    return-void
.end method
