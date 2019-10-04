.class public Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "ToggleMessageAnswerSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field private final answer:Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

.field private final uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

.field private viewModel:Lcom/ebay/mobile/search/answers/v1/ToggleMessageViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->TOGGLE_MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p3, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v5, p3, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;->trackingList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    const-string/jumbo v0, "uxComponentType must be non-null"

    .line 31
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    const-string p1, "answer must be non-null"

    .line 32
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

    const-string p1, "placementSizeType must be non-null"

    .line 34
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ToggleMessageViewModel;

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
    .locals 1

    .line 47
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->answer:Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;

    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-static {p1, p2, v0}, Lcom/ebay/mobile/search/answers/v1/AnswersBuilder;->buildViewModel(Lcom/ebay/nautilus/domain/data/answers/ToggleMessageAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;)Lcom/ebay/mobile/search/answers/v1/ToggleMessageViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ToggleMessageAnswerSrpListItem;->viewModel:Lcom/ebay/mobile/search/answers/v1/ToggleMessageViewModel;

    return-void
.end method
