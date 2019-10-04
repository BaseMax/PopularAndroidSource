.class public Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "ImageSearchListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field public iconMessageAnswer:Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;

.field public final uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;)V
    .locals 6

    .line 32
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->IMAGE_SEARCH_ANSWER:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    iget-object v5, p1, Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;->trackingList:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 28
    sget-object v0, Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;->ICON_MESSAGE:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    .line 33
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->iconMessageAnswer:Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;

    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

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

    .line 44
    iget-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->iconMessageAnswer:Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;

    iget-object p2, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->uxComponentType:Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;

    invoke-static {p1, p2, v0}, Lcom/ebay/mobile/search/answers/v1/AnswersBuilder;->buildViewModel(Lcom/ebay/nautilus/domain/data/answers/IconMessageAnswer;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;Lcom/ebay/nautilus/domain/data/answers/AnswersUxComponentType;)Lcom/ebay/mobile/search/answers/v1/ImageSearchCardViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/ImageSearchListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    return-void
.end method
