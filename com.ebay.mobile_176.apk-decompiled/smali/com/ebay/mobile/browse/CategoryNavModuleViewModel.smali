.class public Lcom/ebay/mobile/browse/CategoryNavModuleViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;
.source "CategoryNavModuleViewModel.java"


# instance fields
.field private final spanCount:I


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;I)V
    .locals 8
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNavModule;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Ljava/lang/String;",
            "Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;",
            "I)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/ebay/mobile/uxcomponents/viewmodel/AnswersContainerViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/answers/AnswersModule;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ExpandableViewModel;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/type/layout/PlacementSizeType;)V

    .line 51
    iput p7, p0, Lcom/ebay/mobile/browse/CategoryNavModuleViewModel;->spanCount:I

    return-void
.end method


# virtual methods
.method public getContainerStyle(Landroid/content/Context;)Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerStyle;

    const v1, 0x7f1301c0

    invoke-direct {v0, p1, v1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/ScrollingContainerStyle;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getSpanCount()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/ebay/mobile/browse/CategoryNavModuleViewModel;->spanCount:I

    return v0
.end method
