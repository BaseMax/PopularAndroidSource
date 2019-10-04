.class public Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "TextualDisplayViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private text:Ljava/lang/CharSequence;

.field private textAppearance:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private textAppearanceAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V
    .locals 0
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const-string p1, "TextualDisplay object should not be null!"

    .line 48
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 49
    iput p3, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textAppearanceAttr:I

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d0658

    const v1, 0x7f040434

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const v0, 0x7f0d0658

    .line 42
    invoke-direct {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;I)V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textAppearance:I

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 68
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->text:Ljava/lang/CharSequence;

    .line 73
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textAppearanceAttr:I

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->textAppearance:I

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
