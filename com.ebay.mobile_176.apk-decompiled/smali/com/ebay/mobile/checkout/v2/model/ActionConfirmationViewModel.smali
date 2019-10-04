.class public Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;
.super Lcom/ebay/mobile/common/BindableDialogFragment$AlertViewModel;
.source "ActionConfirmationViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

.field public cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field public okAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/ebay/mobile/common/BindableDialogFragment$AlertViewModel;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

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

.method public onBind(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->title:Ljava/lang/CharSequence;

    .line 38
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;->messages:Ljava/util/List;

    const-string v1, "\n"

    invoke-static {p1, v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->content:Ljava/lang/CharSequence;

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->content:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->content:Ljava/lang/CharSequence;

    .line 41
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->actionConfirmation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionConfirmation;->callToActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 43
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->CANCEL:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne v1, v2, :cond_0

    .line 45
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 46
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->cancelButton:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->okAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 51
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->okButton:Ljava/lang/String;

    goto :goto_0

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

.method public show(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/ebay/mobile/common/BindableDialogFragment;->create(Lcom/ebay/mobile/common/BindableDialogFragment$BindableDialogViewModel;)Lcom/ebay/mobile/common/BindableDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, p1, v1}, Lcom/ebay/mobile/common/BindableDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ebay/mobile/common/BindableDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
