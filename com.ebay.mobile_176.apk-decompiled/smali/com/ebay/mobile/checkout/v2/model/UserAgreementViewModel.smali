.class public Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "UserAgreementViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field public showAlternate:Landroidx/databinding/ObservableBoolean;

.field public showCurrent:Landroidx/databinding/ObservableBoolean;

.field private termsAndConditionsAlternate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private termsAndConditionsCurrent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Ljava/util/List;Ljava/util/List;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;",
            ">;",
            "Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0d065a

    .line 51
    invoke-direct {p0, v0}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    .line 36
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showAlternate:Landroidx/databinding/ObservableBoolean;

    .line 37
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showCurrent:Landroidx/databinding/ObservableBoolean;

    const-string v0, "User agreement should not be null"

    .line 52
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const p1, 0x7f0a14c4

    .line 53
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->id:I

    .line 55
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showAlternate:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 56
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->showCurrent:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 63
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsCurrent:Ljava/util/List;

    .line 69
    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 75
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;

    invoke-direct {v1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_2
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsAlternate:Ljava/util/List;

    :cond_3
    if-eqz p4, :cond_4

    .line 83
    iget-object p1, p4, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;

    invoke-direct {p2, p0, p3}, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel$1;-><init>(Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    :cond_4
    return-void
.end method

.method static synthetic lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;Landroid/view/View;)V
    .locals 0

    .line 130
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method public static onModelClick(Landroid/widget/TextView;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxOnModelClick",
            "content"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 129
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getTermsAndConditionsAlternate()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsAlternate:Ljava/util/List;

    return-object v0
.end method

.method public getTermsAndConditionsCurrent()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsCurrent:Ljava/util/List;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsCurrent:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsCurrent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;

    .line 110
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsAlternate:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->termsAndConditionsAlternate:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;

    .line 114
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualDisplayViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_1

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
