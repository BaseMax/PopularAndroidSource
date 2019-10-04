.class public Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "ItemsListSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field private listingsAnswer:Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

.field private final preferredCurrencyCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final userIsSignedIn:Z

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;",
            "Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 46
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->ITEMS_CAROUSEL:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    const-string p2, "listingsAnswer must be non-null"

    .line 48
    invoke-static {p1, p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->listingsAnswer:Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

    .line 49
    iput-object p4, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->preferredCurrencyCode:Ljava/lang/String;

    .line 50
    iput-boolean p5, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->userIsSignedIn:Z

    .line 51
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

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
    .locals 8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 66
    sget-object v0, Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;->SEARCH:Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->listingsAnswer:Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    sget-object v3, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ITEMS_CAROUSEL:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iget-object v6, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->preferredCurrencyCode:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->userIsSignedIn:Z

    move-object v4, p2

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/ebay/mobile/search/answers/v1/AnswersBuilder;->buildViewModel(Lcom/ebay/mobile/uxcomponents/viewmodel/UxHintType;Lcom/ebay/nautilus/domain/data/answers/ListingsAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/content/Context;Ljava/lang/String;Z)Lcom/ebay/mobile/search/answers/v1/ListingsAnswerViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ItemsListSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    :cond_0
    return-void
.end method
