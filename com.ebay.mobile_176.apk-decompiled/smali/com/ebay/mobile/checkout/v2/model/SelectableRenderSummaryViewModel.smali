.class public Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;
.source "SelectableRenderSummaryViewModel.java"


# instance fields
.field public defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

.field public selected:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;III)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    .line 20
    new-instance p1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p1}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->selected:Landroidx/databinding/ObservableBoolean;

    const p1, 0x7f0a14b9

    .line 41
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->id:I

    .line 42
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->selected:Landroidx/databinding/ObservableBoolean;

    iget-boolean p2, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->selected:Z

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;III)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;III)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v1, 0x7f0d064c

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;III)V

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    .line 54
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    .line 48
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->uxComponentHint:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->uxComponentHint:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    :goto_0
    return-object v0
.end method

.method public isCheckbox()Z
    .locals 2

    .line 64
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->CHECKBOX:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isRadio()Z
    .locals 2

    .line 59
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->RADIO_BUTTON:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldShowChevron()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->hasAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->isRadio()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->isCheckbox()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
