.class public Lcom/ebay/mobile/browse/ListingsModuleViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;
.source "ListingsModuleViewModel.java"


# instance fields
.field private final spanCount:I


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;I)V
    .locals 10
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;",
            "I)V"
        }
    .end annotation

    .line 43
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getTrackingList()Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 44
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/browse/ListingsModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 42
    invoke-direct/range {v0 .. v9}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    move/from16 v1, p8

    .line 50
    iput v1, v0, Lcom/ebay/mobile/browse/ListingsModuleViewModel;->spanCount:I

    return-void
.end method


# virtual methods
.method public getSpanCount()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/ebay/mobile/browse/ListingsModuleViewModel;->spanCount:I

    return v0
.end method

.method public getSpanSize(I)I
    .locals 2

    .line 63
    iget v0, p0, Lcom/ebay/mobile/browse/ListingsModuleViewModel;->spanCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/ListingsModuleViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt p1, v0, :cond_1

    .line 70
    iget p1, p0, Lcom/ebay/mobile/browse/ListingsModuleViewModel;->spanCount:I

    return p1

    .line 72
    :cond_1
    invoke-super {p0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;->getSpanSize(I)I

    move-result p1

    return p1
.end method
