.class public Lcom/ebay/mobile/browse/QuickbarContainerViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;
.source "QuickbarContainerViewModel.java"


# instance fields
.field private positionToScrollTo:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            ")V"
        }
    .end annotation

    const v1, 0x7f0d0094

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Ljava/lang/String;)V

    .line 38
    iput p2, p0, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;->positionToScrollTo:I

    return-void
.end method

.method public static setContents(Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerView;Lcom/ebay/mobile/browse/QuickbarContainerViewModel;)V
    .locals 3
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxSelectedItem"
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerView;->setContents(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;)V

    .line 47
    iget v0, p1, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;->positionToScrollTo:I

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    iget v0, p1, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;->positionToScrollTo:I

    const/4 v1, 0x1

    sget-object v2, Lcom/ebay/nautilus/shell/util/RecyclerFindItemAndScrollUtil$SnapStrategy;->START:Lcom/ebay/nautilus/shell/util/RecyclerFindItemAndScrollUtil$SnapStrategy;

    .line 49
    invoke-static {p0, v0, v1, v2}, Lcom/ebay/nautilus/shell/util/RecyclerFindItemAndScrollUtil;->scrollToPosition(Landroidx/recyclerview/widget/RecyclerView;IZLcom/ebay/nautilus/shell/util/RecyclerFindItemAndScrollUtil$SnapStrategy;)V

    const/4 p0, 0x0

    .line 55
    iput p0, p1, Lcom/ebay/mobile/browse/QuickbarContainerViewModel;->positionToScrollTo:I

    :cond_0
    return-void
.end method
