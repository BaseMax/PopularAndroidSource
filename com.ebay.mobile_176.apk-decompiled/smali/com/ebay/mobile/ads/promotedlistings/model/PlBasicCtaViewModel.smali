.class public Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/LabelViewModel;
.source "PlBasicCtaViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field public buttonsEnabled:Landroidx/databinding/ObservableBoolean;

.field private final cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

.field private metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

.field private validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    const v1, 0x7f0d0336

    invoke-direct {p0, v1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/LabelViewModel;-><init>(ILjava/lang/CharSequence;)V

    .line 29
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->buttonsEnabled:Landroidx/databinding/ObservableBoolean;

    .line 40
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 41
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    .line 42
    iput-object p3, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public synthetic getLandingTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler$-CC;->$default$getLandingTitle(Lcom/ebay/mobile/ads/promotedlistings/navigation/PlBasicActionHandler;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPrimary()Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->getActionType()Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;->PRIMARY:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->buttonsEnabled:Landroidx/databinding/ObservableBoolean;

    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->validator:Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;

    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/model/PlBasicCtaViewModel;->metadata:Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getErrorMessage(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

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
