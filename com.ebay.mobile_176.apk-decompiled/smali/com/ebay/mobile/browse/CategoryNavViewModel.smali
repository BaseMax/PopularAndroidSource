.class Lcom/ebay/mobile/browse/CategoryNavViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/BaseSimpleItemViewModel;
.source "CategoryNavViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/uxcomponents/actions/NavigationAction;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private final data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

.field private lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;I)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p2, v0, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/BaseSimpleItemViewModel;-><init>(ILjava/lang/CharSequence;Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    .line 41
    iput-object p1, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    return-void
.end method


# virtual methods
.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getNavAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    if-nez v0, :cond_1

    return-void

    .line 58
    :cond_1
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->data:Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/browse/CategoryNav;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->title:Ljava/lang/CharSequence;

    .line 64
    iput-object p1, p0, Lcom/ebay/mobile/browse/CategoryNavViewModel;->lastThemeData:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

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
