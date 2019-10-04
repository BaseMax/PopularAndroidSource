.class public Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "QueryAnswerListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field private containerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

.field public queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

.field private searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

.field public final uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;",
            "Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;)V"
        }
    .end annotation

    .line 68
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->QUERY_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    const-string/jumbo p4, "uxComponentType must be non-null"

    .line 70
    invoke-static {p1, p4}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const-string/jumbo p1, "queryAnswer must be non-null"

    .line 71
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    const-string p1, "placementSizeType must be non-null"

    .line 72
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    return-object v0
.end method

.method public getContainerViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->containerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    return-object v0
.end method

.method public setContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 86
    sget-object p2, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->NAVIGATION_ANSWER_COLLAPSIBLE_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-ne p2, v0, :cond_0

    .line 88
    new-instance p2, Lcom/ebay/mobile/search/answers/MagViewModelFactory;

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

    invoke-direct {p2, v0, v1}, Lcom/ebay/mobile/search/answers/MagViewModelFactory;-><init>(Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;Lcom/ebay/mobile/search/refine/SearchConfiguration;)V

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    .line 89
    invoke-virtual {p2, p1, v0}, Lcom/ebay/mobile/search/answers/MagViewModelFactory;->buildContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)Lcom/ebay/mobile/search/answers/MagContainerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->containerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    iget-object p2, p2, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->queries:Ljava/util/List;

    invoke-static {p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 94
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    sget-object v0, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->BASIC_USER_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    if-ne p2, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;->queries:Ljava/util/List;

    invoke-static {p1}, Lcom/ebay/mobile/search/answers/v1/AnswersBuilder;->buildBasicUserMessageViewModel(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    goto :goto_0

    .line 98
    :cond_1
    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->queryAnswer:Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-static {p2, v0, v1, p1}, Lcom/ebay/mobile/search/answers/v1/AnswersBuilder;->buildAnswersContainerViewModel(Lcom/ebay/nautilus/domain/data/answers/QueryAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Landroid/content/Context;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->containerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    .line 102
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    if-nez p1, :cond_3

    .line 103
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->containerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    :cond_3
    return-void
.end method

.method public setSearchConfiguration(Lcom/ebay/mobile/search/refine/SearchConfiguration;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/QueryAnswerListItem;->searchConfiguration:Lcom/ebay/mobile/search/refine/SearchConfiguration;

    return-void
.end method
