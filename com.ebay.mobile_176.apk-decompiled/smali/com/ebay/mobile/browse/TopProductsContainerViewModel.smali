.class public Lcom/ebay/mobile/browse/TopProductsContainerViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;
.source "TopProductsContainerViewModel.java"


# instance fields
.field private final collapsedFooterIndex:I

.field private final expandedFooterIndex:I

.field private final spanCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;I)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;
        .annotation build Landroidx/annotation/Nullable;
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
    .param p5    # Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v10, p0

    .line 36
    sget v1, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_GRID_LIST_CARD:I

    sget-object v9, Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    move/from16 v0, p8

    .line 39
    iput v0, v10, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->spanCount:I

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v10, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandedFooterIndex:I

    if-eqz p5, :cond_0

    .line 42
    invoke-virtual/range {p5 .. p5}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;->getCollapsedItemCount()I

    move-result v0

    iput v0, v10, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->collapsedFooterIndex:I

    goto :goto_0

    .line 44
    :cond_0
    iget v0, v10, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandedFooterIndex:I

    iput v0, v10, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->collapsedFooterIndex:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getSpanCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->spanCount:I

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;

    .line 53
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandedFooterIndex:I

    if-ge p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->expandInfo:Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;

    .line 54
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->collapsedFooterIndex:I

    if-lt p1, v0, :cond_2

    .line 55
    :cond_1
    iget p1, p0, Lcom/ebay/mobile/browse/TopProductsContainerViewModel;->spanCount:I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
