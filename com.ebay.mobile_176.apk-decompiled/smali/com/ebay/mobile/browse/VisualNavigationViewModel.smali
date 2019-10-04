.class public Lcom/ebay/mobile/browse/VisualNavigationViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;
.source "VisualNavigationViewModel.java"


# instance fields
.field private final cellCount:I

.field private final gridSize:I

.field private final remainderElements:I

.field private final spanCount:I


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;II)V
    .locals 12
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;
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
            "Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;",
            "II)V"
        }
    .end annotation

    move-object v10, p0

    move/from16 v11, p9

    .line 52
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingList()Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;

    .line 53
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/cardcontainer/ContainerModule;->getTrackingInfo()Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;-><init>(Lcom/ebay/nautilus/domain/data/answers/TrackingInfo;)V

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/IdentifiersAdapter;->asIdentifiers()Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 51
    invoke-direct/range {v0 .. v9}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    move/from16 v0, p8

    .line 59
    iput v0, v10, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->spanCount:I

    .line 60
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v10, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->cellCount:I

    .line 61
    iget v0, v10, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->cellCount:I

    rem-int/2addr v0, v11

    iput v0, v10, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->remainderElements:I

    .line 62
    iput v11, v10, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->gridSize:I

    return-void
.end method


# virtual methods
.method public getContainerStyle(Landroid/content/Context;)Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerStyle;

    const v1, 0x7f1305f8

    invoke-direct {v0, p1, v1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerStyle;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->spanCount:I

    return v0
.end method

.method public getSpanSize(I)I
    .locals 2

    .line 74
    iget v0, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->spanCount:I

    iget v1, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->gridSize:I

    div-int/2addr v0, v1

    .line 76
    iget v1, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->remainderElements:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->cellCount:I

    sub-int/2addr v1, p1

    iget p1, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->remainderElements:I

    if-gt v1, p1, :cond_0

    .line 78
    iget p1, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->spanCount:I

    iget v0, p0, Lcom/ebay/mobile/browse/VisualNavigationViewModel;->remainderElements:I

    div-int v0, p1, v0

    :cond_0
    return v0
.end method
