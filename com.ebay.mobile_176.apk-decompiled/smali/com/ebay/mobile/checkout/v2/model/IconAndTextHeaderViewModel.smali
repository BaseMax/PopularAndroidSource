.class public Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;
.source "IconAndTextHeaderViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field public headerText:Ljava/lang/String;

.field private iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

.field public iconDrawable:Landroid/graphics/drawable/Drawable;

.field private textAppearanceAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private textAppearanceId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V
    .locals 7
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v1, 0x7f0d063a

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 32
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 33
    iput p2, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->textAppearanceAttr:I

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

.method public getTextAppearance()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->textAppearanceId:I

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->headerText:Ljava/lang/String;

    .line 45
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->textAppearanceAttr:I

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->textAppearanceId:I

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getIconType()Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/payments/experience/PaymentsIconHelper;->getIcon(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
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
