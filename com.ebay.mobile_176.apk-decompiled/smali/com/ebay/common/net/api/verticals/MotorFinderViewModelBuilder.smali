.class public Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;
.super Ljava/lang/Object;
.source "MotorFinderViewModelBuilder.java"


# instance fields
.field private answerProvider:Ljava/lang/String;

.field private hScrollTrackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field private infoPresenter:Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;

.field private title:Ljava/lang/String;

.field private titleInfo:Ljava/lang/String;

.field private viewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    return-void
.end method

.method private appendTokens(Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/compatibility/NameValue;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/compatibility/NameValue;

    if-eqz v0, :cond_1

    .line 108
    iget-object v1, p1, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;->tokens:Ljava/util/Map;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/compatibility/NameValue;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/compatibility/NameValue;->value:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createContextWithoutSelection(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;
    .locals 2

    .line 131
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductUtil;->copyProductContext(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    move-result-object p1

    .line 133
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;->compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;->properties:Ljava/util/Map;

    :cond_0
    return-object p1
.end method

.method public static newBuilder()Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;
    .locals 1

    .line 42
    new-instance v0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;

    invoke-direct {v0}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public addAction(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->createContextWithoutSelection(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;)Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;

    move-result-object p1

    .line 124
    :cond_0
    iget-object p4, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    new-instance v0, Lcom/ebay/mobile/compatibility/answers/CompatibilityActionViewModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/ebay/mobile/compatibility/answers/CompatibilityActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductContext;Ljava/lang/String;Z)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addGarageProducts(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;

    if-eqz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    new-instance v2, Lcom/ebay/mobile/compatibility/answers/CompatibilityItemViewModel;

    iget-object v3, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->answerProvider:Ljava/lang/String;

    invoke-direct {v2, v0, v3, p2}, Lcom/ebay/mobile/compatibility/answers/CompatibilityItemViewModel;-><init>(Lcom/ebay/nautilus/domain/data/compatibility/UserGarageProduct;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addMotorPartSpec(Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 84
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->properties:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;

    invoke-direct {v0}, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;-><init>()V

    .line 87
    iput-object p3, v0, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;->metaType:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleMetaType;

    .line 88
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, v0, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;->tokens:Ljava/util/Map;

    .line 90
    iget-object p3, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->properties:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->appendTokens(Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;Ljava/util/List;)V

    if-eqz p2, :cond_0

    .line 93
    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProduct;->properties:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->appendTokens(Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;Ljava/util/List;)V

    .line 95
    :cond_0
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->trackingList:Ljava/util/List;

    iput-object p2, v0, Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;->trackingList:Ljava/util/List;

    .line 96
    iget-object p2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    new-instance p3, Lcom/ebay/mobile/compatibility/answers/MotorItemViewModel;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/verticals/motor/wire/PartsSpecification;->name:Ljava/lang/String;

    invoke-direct {p3, v0, p1}, Lcom/ebay/mobile/compatibility/answers/MotorItemViewModel;-><init>(Lcom/ebay/mobile/compatibility/SelectedCompatibleTokens;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 6

    .line 151
    sget v0, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_HORIZONTAL_LIST:I

    .line 153
    iget-object v1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lcom/ebay/mobile/compatibility/answers/MotorHeaderViewModel;

    iget-object v2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->titleInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->titleInfo:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->infoPresenter:Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/ebay/mobile/compatibility/answers/MotorHeaderViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 156
    :goto_0
    iget-object v2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->hScrollTrackingList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 157
    new-instance v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    .line 158
    invoke-virtual {v2, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    .line 159
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setHeaderViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    new-instance v2, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;

    iget-object v3, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    iget-object v4, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->hScrollTrackingList:Ljava/util/List;

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/ebay/common/net/api/verticals/HscrollTrackableViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;)V

    return-object v2
.end method

.method public clearTitle()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->title:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->titleInfo:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->infoPresenter:Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;

    return-void
.end method

.method public enableHscrollTracking(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->hScrollTrackingList:Ljava/util/List;

    return-void
.end method

.method public getCurrentItemCount()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->viewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAnswerProvider(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->answerProvider:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->title:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->titleInfo:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/ebay/common/net/api/verticals/MotorFinderViewModelBuilder;->infoPresenter:Lcom/ebay/nautilus/shell/uxcomponents/presenter/InfoPresenter;

    return-void
.end method
