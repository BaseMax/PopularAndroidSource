.class public Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;
.super Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;
.source "MessageAnswerSrpListItem.java"

# interfaces
.implements Lcom/ebay/common/view/search/SearchBindingViewHolder$ContainerViewModelProvider;


# instance fields
.field public final idealModel:Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;

.field public final legalDisclaimer:Ljava/lang/String;

.field public final subtitle:Ljava/lang/String;

.field public final title:Ljava/lang/CharSequence;

.field private viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    sget-object v1, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;->MESSAGE:Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->trackingInfo:Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/net/api/search/idealmodel/SrpListItem;-><init>(Lcom/ebay/common/net/api/search/idealmodel/SrpListItem$SrpListItemType;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->idealModel:Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;

    .line 29
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->messageLinks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->messageLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->messageLinks:Ljava/util/List;

    .line 30
    invoke-static {v0, v1}, Lcom/ebay/mobile/search/answers/v1/MessageLinkReader;->parse(Ljava/lang/String;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->label:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->title:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->legalDisclaimer:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->legalDisclaimer:Ljava/lang/String;

    .line 32
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/answers/MessageAnswer;->subtitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->subtitle:Ljava/lang/String;

    .line 33
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->ROW:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->placementSize:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    return-void
.end method


# virtual methods
.method public getComponentViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

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
    .locals 6

    .line 46
    new-instance p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    iget-object v1, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->subtitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->legalDisclaimer:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/ebay/common/net/api/search/idealmodel/MessageAnswerSrpListItem;->viewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    return-void
.end method
