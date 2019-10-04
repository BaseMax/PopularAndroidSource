.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;
.super Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;
.source "PlBasicAdRateEditViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel<",
        "Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;",
        ">;",
        "Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemWithView;"
    }
.end annotation


# instance fields
.field public errorMessage:Ljava/lang/CharSequence;

.field private errorTextualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

.field public errorViewVisibility:Landroidx/databinding/ObservableInt;

.field public final nameChanged:Landroid/text/TextWatcher;

.field public title:Ljava/lang/CharSequence;

.field private final validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;)V
    .locals 1

    const v0, 0x7f0d0333

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicBaseViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/Module;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;I)V

    .line 89
    new-instance p1, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->nameChanged:Landroid/text/TextWatcher;

    .line 51
    new-instance p1, Landroidx/databinding/ObservableInt;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorViewVisibility:Landroidx/databinding/ObservableInt;

    .line 52
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    return-void
.end method

.method public static bindEditText(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    .locals 2
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "binding"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->module:Lcom/ebay/nautilus/domain/data/experience/type/base/Module;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/modules/PlBasicAdRateEditModule;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->title:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getErrorMessage(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorTextualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 70
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorViewVisibility:Landroidx/databinding/ObservableInt;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorTextualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorTextualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorTextualDisplay:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;->errorMessage:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onBindWithView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0a0bf4

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 120
    new-instance v0, Lcom/ebay/mobile/ads/promotedlistings/model/-$$Lambda$YaF606X0UmckuWXRyCTPPP3jFFs;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/ads/promotedlistings/model/-$$Lambda$YaF606X0UmckuWXRyCTPPP3jFFs;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$DecimalFilter;-><init>(Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel;Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicAdRateEditViewModel$1;)V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
