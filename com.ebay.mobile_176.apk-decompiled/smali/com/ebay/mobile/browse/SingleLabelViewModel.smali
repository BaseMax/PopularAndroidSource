.class Lcom/ebay/mobile/browse/SingleLabelViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/LabelViewModel;
.source "SingleLabelViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/uxcomponents/actions/NavigationAction;
.implements Lcom/ebay/mobile/uxcomponents/actions/OperationAction;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private final componentOffsets:Landroid/graphics/Rect;

.field private lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

.field private final textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;ILandroid/graphics/Rect;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p2, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/LabelViewModel;-><init>(ILjava/lang/CharSequence;)V

    const-string p2, "TextualDisplay object must not be null!"

    .line 47
    invoke-static {p1, p2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iput-object p1, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 48
    iput-object p3, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->componentOffsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-object v0

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/LabelViewModel;->getComponentOffsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getNavAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getOperationAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->label:Ljava/lang/CharSequence;

    .line 67
    iput-object p1, p0, Lcom/ebay/mobile/browse/SingleLabelViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method
