.class public Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "MotorFinderSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field private answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V
    .locals 6

    .line 33
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MOTOR_FULL_FINDER_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 34
    iput-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 35
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    return-void
.end method

.method private addActions(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;)V
    .locals 10

    .line 80
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    invoke-static {v0}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->newMapper(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;)Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/ebay/common/net/api/verticals/MotorFinderAnswerMapper;->getCompatibleProductContexts()Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    const-string v5, "TIRES"

    .line 86
    iget-object v6, v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleMetaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v6, v6, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->partType:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "BY_SIZE"

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleMetaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->queryType:Ljava/lang/String;

    .line 87
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    const v1, 0x7f120faa

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, v3, v2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;ZZ)V

    .line 91
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->clearTitle()V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->getCurrentItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    const-string v6, ""

    .line 102
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleMetaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;->queryType:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x409c26e9

    if-eq v8, v9, :cond_3

    const v9, 0x52788324

    if-eq v8, v9, :cond_2

    goto :goto_2

    :cond_2
    const-string v8, "BY_VEHICLE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const-string v8, "BY_SIZE"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v7, 0x1

    :cond_4
    :goto_2
    packed-switch v7, :pswitch_data_0

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    :pswitch_0
    const v5, 0x7f120fa6

    .line 115
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :pswitch_1
    if-eqz v1, :cond_5

    const v5, 0x7f120fa4

    .line 108
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x1

    goto :goto_4

    :cond_5
    const v5, 0x7f120fa5

    .line 112
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 119
    :goto_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    invoke-virtual {p2, v4, v6, v5}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addGarageProducts(Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;

    if-eqz v1, :cond_1

    .line 73
    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductUtil;->convertToGarageProduct(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;)Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1, v0, p3}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addGarageProducts(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private addTitle(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;)V
    .locals 1

    .line 57
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->getCurrentItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120fa7

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120fa8

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

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
    .locals 2

    .line 41
    invoke-static {}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->newBuilder()Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;

    move-result-object p2

    .line 42
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->identification:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswerIdentification;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->identification:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswerIdentification;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswerIdentification;->provider:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->setAnswerProvider(Ljava/lang/String;)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->userSavedGarageProducts:Ljava/util/List;

    const v1, 0x7f120380

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-direct {p0, p2, v0, v1}, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->addGarageProducts(Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;Ljava/util/List;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->recentlyVisitedGarageProducts:Ljava/util/List;

    const v1, 0x7f12037f

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-direct {p0, p2, v0, v1}, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->addGarageProducts(Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;Ljava/util/List;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->addTitle(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->addActions(Landroid/content/Context;Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;)V

    .line 51
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorFinderAnswer;->trackingList:Ljava/util/List;

    invoke-virtual {p2, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->enableHscrollTracking(Ljava/util/List;)V

    .line 52
    invoke-virtual {p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MotorFinderSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    return-void
.end method
