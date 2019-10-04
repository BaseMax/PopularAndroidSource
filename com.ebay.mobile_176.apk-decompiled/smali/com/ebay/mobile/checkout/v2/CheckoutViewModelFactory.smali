.class public Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;
.super Ljava/lang/Object;
.source "CheckoutViewModelFactory.java"

# interfaces
.implements Lcom/ebay/mobile/payments/experience/PaymentsViewModelFactoryContract;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation


# static fields
.field public static final DIRECT_DEBIT_BILLING_ADDRESS_SUMMARY_CONTAINER_ID:Ljava/lang/String; = "111"
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation
.end field


# instance fields
.field private final doubleTapToEditBillingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;"
        }
    .end annotation
.end field

.field private final ds6ShimProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;"
        }
    .end annotation
.end field

.field private final expandableFooterContainerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final expandableLabelsCardViewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

.field private final visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableLabelsCardViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 140
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    .line 141
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableFooterContainerBuilderProvider:Ljavax/inject/Provider;

    .line 142
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;

    .line 143
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->doubleTapToEditBillingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/themes/Ds6ConfigurationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    .line 155
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableLabelsCardViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 156
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    .line 157
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableFooterContainerBuilderProvider:Ljavax/inject/Provider;

    .line 158
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;

    .line 159
    iput-object p6, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->doubleTapToEditBillingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private createAddressForm(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Checkout Session should not be null"

    .line 543
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 545
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    if-eqz p1, :cond_1

    .line 548
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->fields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    if-eqz v2, :cond_1

    .line 551
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v0, p2, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v6

    .line 552
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->notifications:Ljava/util/List;

    invoke-virtual {v0, v7, p1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const-string v4, "10102"

    const/4 v5, 0x0

    move-object v1, p2

    move-object v3, p3

    .line 559
    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCommonForm(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;Z)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object p1

    .line 558
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    new-instance p1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {p1, v6, v7}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createAddressRecommendationViewModel(Landroid/os/Bundle;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "bundle should not be null"

    .line 886
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "extra_recommended_address"

    .line 887
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;

    const-string v0, "Recommendation should not be null"

    .line 888
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 889
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;->addresses:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    const/4 v2, 0x0

    .line 901
    iput-boolean v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->selected:Z

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v0, p2, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object p2

    .line 904
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;->addresses:Ljava/util/List;

    .line 905
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createShippingAddressesViewModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 908
    new-instance p1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v1, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const-string v2, "105"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f1306c3

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 912
    new-instance v0, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {v0, p2, p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createBillingAddressFields(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 248
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    .line 249
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v0, p2, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v0

    .line 253
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->billingAddressFields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    .line 255
    new-instance p1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const-string v5, "10102"

    const/4 v6, 0x0

    move-object v2, p2

    move-object v4, p3

    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCommonForm(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;Z)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object p2

    .line 255
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createCreditCardFormViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Checkout Session should not be null"

    .line 1003
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1005
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    .line 1006
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->createCreditCardFormViews(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;Z)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1
.end method

.method private createPayPalCreditDetailsView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 5
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 750
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 754
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 756
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;->notifications:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 759
    :cond_1
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;->groups:Ljava/util/List;

    const v2, 0x7f040436

    const v3, 0x7f1306c3

    if-eqz v1, :cond_2

    .line 762
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;

    .line 763
    invoke-direct {p0, p2, v4, v3, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->inflateCallToActionRenderSummaryGroup(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;II)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    :cond_2
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;->authorizationSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;

    if-eqz v1, :cond_3

    .line 769
    invoke-direct {p0, v1, v3, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->inflateAuthorizationSummary(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;II)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_3
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v2, p2, p1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private createPayPalDetailsView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 778
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 782
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;->notifications:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 787
    :cond_1
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;->content:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;

    if-eqz v1, :cond_2

    .line 790
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const v3, 0x7f1306c3

    const v4, 0x7f040436

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateRenderSummaryGroup(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;IIZ)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 793
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    :cond_2
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v2, p2, p1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private createPayUponInvoiceView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 265
    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    move-object/from16 v2, p1

    .line 266
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 269
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    move-object/from16 v6, p2

    invoke-virtual {v3, v6, v4}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v3

    .line 270
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 273
    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->description:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 275
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;

    const-string v7, "payUponInvoiceDetails"

    invoke-direct {v2, v5, v7}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 277
    :cond_0
    new-instance v5, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v8, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const/4 v9, 0x0

    .line 279
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v15, 0x7f1305f0

    move-object v7, v5

    invoke-direct/range {v7 .. v15}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    .line 277
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v5, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v7, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->fields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    const/4 v8, 0x0

    const-string v9, "107"

    const/4 v10, 0x0

    move-object/from16 v6, p2

    .line 283
    invoke-virtual/range {v5 .. v10}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCommonForm(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;Z)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object v2

    .line 282
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->billingAddressSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;

    const v5, 0x7f1306c3

    const v6, 0x7f04045a

    const/4 v7, 0x0

    invoke-virtual {v2, v1, v5, v6, v7}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateRenderSummaryGroup(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;IIZ)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_1
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {v1, v3, v4}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method private createPaymentViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Z)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 304
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    .line 305
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 310
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->notifications:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 315
    :cond_1
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->paymentMethods:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;

    if-eqz p3, :cond_2

    .line 320
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->removeGooglePayIfPresentThenCheckEmptyList(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 323
    :cond_2
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    const v4, 0x7f1306c3

    const v5, 0x7f040436

    const/4 v6, 0x0

    .line 324
    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateRenderSummaryGroup(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;IIZ)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v2

    .line 323
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_3
    new-instance p3, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v1, p2, p1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v0}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p3
.end method

.method private createRewardsRedemptionViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 8
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Checkout Session should not be null"

    .line 1020
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1022
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v0, p2, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;->fields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    const-string v6, "110"

    const/4 v7, 0x0

    move-object v3, p2

    move-object v5, p3

    .line 1030
    invoke-virtual/range {v2 .. v7}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCommonForm(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;Z)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object p2

    .line 1032
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1035
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;->actions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 1037
    new-instance v2, Lcom/ebay/mobile/payments/cobranded/model/CobrandedRewardsRedemptionCallToActionViewModel;

    invoke-direct {v2, p2, p3}, Lcom/ebay/mobile/payments/cobranded/model/CobrandedRewardsRedemptionCallToActionViewModel;-><init>(Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;)V

    .line 1040
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_1
    new-instance p1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {p1, v0, v1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method private createRiskContingencyViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Checkout Session should not be null"

    .line 213
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;

    .line 216
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v0, p2, v1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->notification:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->notification:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    invoke-virtual {v3, v1, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 232
    :cond_1
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->inputFields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    if-eqz v2, :cond_2

    .line 233
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v5, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->inputFields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    const-string v7, "108"

    const/4 v8, 0x0

    move-object v4, p2

    move-object v6, p3

    .line 234
    invoke-virtual/range {v3 .. v8}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCommonForm(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;Z)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object p2

    .line 233
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->actions:Ljava/util/List;

    if-eqz p2, :cond_3

    .line 238
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;->actions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 239
    new-instance p3, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    sget-object v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    invoke-direct {p3, p2, v2}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_3
    new-instance p1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {p1, v0, v1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method private createShippingAddressAdditionalOptionsViewModel(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 528
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const v3, 0x7f0d0632

    const v5, 0x7f040437

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    const v2, 0x7f0a14bc

    .line 531
    iput v2, v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    .line 532
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createShippingAddressesViewModel(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    .line 507
    new-instance v4, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;

    invoke-direct {v4, v3, v2}, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createShippingViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    .line 457
    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    move-object/from16 v2, p1

    .line 458
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    if-eqz v1, :cond_3

    .line 462
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v2

    .line 464
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->hasNotifications()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v5, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->notifications:Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 470
    :cond_0
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->addresses:Ljava/util/List;

    .line 471
    invoke-direct {v0, v4}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createShippingAddressesViewModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 472
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->additionalOptions:Ljava/util/List;

    .line 473
    invoke-direct {v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createShippingAddressAdditionalOptionsViewModel(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v8, :cond_1

    .line 475
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 477
    new-instance v4, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v6, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const-string v7, "103"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7f1306bb

    move-object v5, v4

    invoke-direct/range {v5 .. v13}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 482
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 484
    new-instance v4, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v10, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const-string v11, "104"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x7f1306c3

    move-object v9, v4

    move-object v12, v1

    invoke-direct/range {v9 .. v17}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_2
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {v1, v2, v3}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private createSplitOrderView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 12
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 803
    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 807
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->notifications:Ljava/util/List;

    invoke-virtual {v1, v4, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 812
    :cond_1
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->summaryInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz v1, :cond_2

    .line 814
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const v2, 0x7f0d0649

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->summaryInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    const v5, 0x7f040458

    const v6, 0x7f040434

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;II)V

    const v2, 0x7f0a14bd

    .line 817
    iput v2, v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->id:I

    .line 819
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    :cond_2
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->orders:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->orders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;

    .line 825
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;

    invoke-direct {v3, v2}, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    :cond_3
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->actions:Ljava/util/List;

    if-eqz v1, :cond_8

    if-eqz p3, :cond_8

    .line 833
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 834
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 835
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object p3, v0

    .line 843
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 845
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 847
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;->PRIMARY:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    if-ne v3, v5, :cond_7

    .line 849
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v3

    goto :goto_3

    :cond_6
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_5

    .line 850
    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 852
    sget-object v5, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v5}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 853
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 854
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    sget-object v5, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    invoke-direct {v3, v2, v5}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 858
    :cond_7
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    sget-object v5, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    invoke-direct {v3, v2, v5}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 865
    :cond_8
    iget-object v8, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->footer:Ljava/util/List;

    if-eqz v8, :cond_9

    .line 866
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 867
    new-instance p3, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;

    const v7, 0x7f0d063f

    const/4 v9, 0x0

    const v0, 0x7f0600df

    .line 868
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    sget-object v11, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    move-object v6, p3

    invoke-direct/range {v6 .. v11}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(ILjava/util/List;IILandroid/graphics/Rect;)V

    move-object v8, p3

    goto :goto_4

    :cond_9
    move-object v8, v0

    .line 871
    :goto_4
    new-instance p3, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v2, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0x7f1306c3

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 875
    new-instance v0, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v1, p2, p1}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private hasUserAgreementContents(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 742
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->getCards()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 743
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->getCards()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/LabelsCard;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private inflateAuthorizationSummary(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;II)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 18
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;",
            ">;II)",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 428
    new-instance v5, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;

    move/from16 v6, p3

    invoke-direct {v5, v1, v6, v2}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    const/4 v1, 0x3

    .line 430
    new-array v1, v1, [Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    .line 432
    iget-object v6, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;->entries:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 435
    iget-object v6, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;->entries:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 437
    new-instance v7, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const v9, 0x7f0d034c

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v17}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZZZ)V

    .line 439
    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 443
    :cond_1
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;

    const v6, 0x7f0d0648

    invoke-direct {v2, v6, v1}, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;-><init>(I[Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_2
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;->footer:Ljava/util/List;

    .line 447
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 448
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;

    const-string v2, "payPalCreditDetails"

    invoke-direct {v1, v0, v2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v7, v1

    goto :goto_2

    :cond_3
    move-object v7, v4

    .line 450
    :goto_2
    new-instance v9, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v1, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    return-object v9
.end method

.method private inflateCallToActionRenderSummaryGroup(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;II)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
    .locals 9
    .param p3    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;",
            ">;II)",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;"
        }
    .end annotation

    .line 371
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 377
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p4, v2}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    .line 379
    :goto_0
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->actionRenderSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz p1, :cond_1

    .line 381
    new-instance p1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->actionRenderSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-direct {p1, p4}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)V

    .line 382
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_1
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->callToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    if-eqz p1, :cond_2

    .line 387
    new-instance p1, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    iget-object p4, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->callToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    sget-object v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    invoke-direct {p1, p4, v1}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    .line 389
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_2
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->entries:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 394
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    .line 396
    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;

    invoke-direct {v1, p4}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;)V

    .line 398
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 402
    :cond_3
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/CallToActionRenderSummaryGroup;->footer:Ljava/util/List;

    .line 403
    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 404
    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;

    invoke-direct {p2, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(Ljava/util/List;)V

    move-object v7, p2

    goto :goto_2

    :cond_4
    move-object v7, v0

    .line 406
    :goto_2
    new-instance p1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    sget v1, Lcom/ebay/mobile/payments/experience/PaymentsComponentViewType;->VERTICAL_LIST_ITEMS:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    return-object p1
.end method


# virtual methods
.method public createDirectDebitViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 20
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    const-string v2, "Checkout Session should not be null"

    .line 581
    invoke-static {v1, v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 583
    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;

    .line 584
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;

    const/4 v12, 0x0

    if-nez v11, :cond_0

    return-object v12

    .line 589
    :cond_0
    new-instance v1, Lcom/ebay/nautilus/shell/util/ComponentOffsetCalculator;

    invoke-direct {v1}, Lcom/ebay/nautilus/shell/util/ComponentOffsetCalculator;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/shell/util/ComponentOffsetCalculator;->getComponentOffset(Landroid/content/Context;IIII)Landroid/graphics/Rect;

    move-result-object v13

    .line 591
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-virtual {v1, v10, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/String;

    move-result-object v14

    .line 593
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 597
    invoke-virtual {v11}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->hasNotifications()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 598
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v2, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->notifications:Ljava/util/List;

    invoke-virtual {v1, v15, v2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->addModuleLevelNotification(Ljava/util/List;Ljava/util/List;)V

    .line 600
    :cond_1
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->fields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    .line 602
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    invoke-interface {v2}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    :goto_0
    const v17, 0x7f1306c2

    const v7, 0x7f040436

    if-eqz v1, :cond_8

    .line 607
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v2, :cond_4

    .line 609
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getIconType()Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;->DIRECT_DEBIT:Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    if-ne v2, v3, :cond_3

    .line 610
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const v4, 0x7f040452

    invoke-direct {v2, v3, v4}, Lcom/ebay/mobile/checkout/v2/model/IconAndTextHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    goto :goto_1

    .line 612
    :cond_3
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-direct {v2, v3, v7, v8}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_4
    move-object v3, v12

    .line 615
    :goto_2
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->entries:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v18, "109"

    if-eqz v16, :cond_5

    const v19, 0x7f1306c2

    goto :goto_3

    :cond_5
    const v1, 0x7f1306b7

    const v19, 0x7f1306b7

    :goto_3
    move-object v1, v2

    move-object/from16 v2, p2

    const v12, 0x7f040436

    move-object/from16 v7, p3

    const/4 v12, 0x0

    move-object/from16 v8, v18

    move/from16 v9, v19

    .line 616
    invoke-virtual/range {v1 .. v9}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCustomForm(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/util/Map;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;I)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 622
    instance-of v4, v3, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v4, :cond_6

    .line 624
    check-cast v3, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-virtual {v3}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IBAN"

    .line 625
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    .line 632
    :goto_4
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v3

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 635
    :goto_5
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->billingAddressFields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    if-eqz v1, :cond_a

    .line 638
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const v4, 0x7f040436

    invoke-direct {v2, v3, v4, v12}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    .line 642
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    .line 643
    invoke-virtual {v3, v12}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setInitialVisibility(I)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->doubleTapToEditBillingAddressAccessibilityDelegateProvider:Ljavax/inject/Provider;

    .line 644
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v3, v4}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setAccessibilityDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v3

    const-string v4, "111"

    .line 645
    invoke-virtual {v3, v4}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    sget v4, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 646
    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v5, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->billingAddressSummary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;

    .line 647
    invoke-virtual {v4, v5, v12}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateRenderSummaryGroupEntries(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v3

    .line 652
    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    const/16 v5, 0x8

    .line 653
    invoke-virtual {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setInitialVisibility(I)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v4

    const-string v5, "10102"

    .line 654
    invoke-virtual {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    sget v5, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 655
    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->entries:Ljava/util/List;

    move-object/from16 v6, p3

    const/4 v8, 0x0

    .line 656
    invoke-virtual {v5, v10, v1, v8, v6}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateFormFields(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Landroid/widget/AdapterView$OnItemSelectedListener;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 658
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 661
    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableFooterContainerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    if-eqz v16, :cond_9

    const v5, 0x7f1306c2

    goto :goto_6

    :cond_9
    const v17, 0x7f1306be

    const v5, 0x7f1306be

    .line 662
    :goto_6
    invoke-virtual {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->setContainerStyleRes(I)Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    move-result-object v4

    const-string v5, "10103"

    .line 665
    invoke-virtual {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    sget v5, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST:I

    .line 666
    invoke-virtual {v4, v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    .line 667
    invoke-virtual {v4, v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setHeaderViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v2

    .line 668
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v2

    .line 669
    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setFooterViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    new-instance v2, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;-><init>(I)V

    .line 670
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setExpandInfo(Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 671
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 673
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_a
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;

    if-eqz v1, :cond_c

    .line 679
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;->current:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    .line 681
    iget-object v2, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->paymentAgreement:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;->alternate:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    if-eqz v2, :cond_b

    .line 684
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->termsAndConditions:Ljava/util/List;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->termsAndConditions:Ljava/util/List;

    invoke-direct {v3, v1, v4, v2, v7}, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Ljava/util/List;Ljava/util/List;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    if-eqz v1, :cond_c

    .line 687
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;->termsAndConditions:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v7}, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Ljava/util/List;Ljava/util/List;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_c
    :goto_7
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->agreements:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 695
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->agreements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v6, 0x0

    :cond_d
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;

    if-nez v1, :cond_e

    goto :goto_8

    .line 700
    :cond_e
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;->current:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    invoke-direct {v0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->hasUserAgreementContents(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 702
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableLabelsCardViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 703
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;

    if-eqz v2, :cond_d

    .line 706
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;->current:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentAgreement;->alternate:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;

    add-int/lit8 v9, v6, 0x1

    move-object v1, v2

    move-object/from16 v2, p2

    move-object v5, v7

    .line 707
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;->create(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;I)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-result-object v1

    .line 710
    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    invoke-interface {v2}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 712
    new-instance v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    invoke-direct {v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;-><init>()V

    const-string v3, "110"

    .line 713
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v2

    sget v3, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_SINGLE_ITEM_CONTAINER:I

    .line 714
    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v2

    .line 715
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 717
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 720
    :cond_f
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v6, v9

    goto :goto_8

    .line 728
    :cond_10
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->actions:Ljava/util/List;

    if-eqz v1, :cond_11

    .line 729
    iget-object v1, v11, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 730
    new-instance v3, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    invoke-direct {v3, v2, v13}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 732
    :cond_11
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    invoke-direct {v1, v14, v15}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method public createViewModel(Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 165
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getScreen()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Checkout screen must not be null"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getSession()Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    move-result-object v0

    const-string v1, "Checkout session must not be null"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 167
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Context must not be null"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 169
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getSession()Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 170
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v3, "rewardsRedemption"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "billingAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo v3, "riskContingency"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "directDebitDetails"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_5
    const-string v3, "payPalCreditDetails"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_6
    const-string v3, "paymentMethods"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "splitOrder"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_8
    const-string v3, "expandShippingAddress"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_9
    const-string v3, "addressFields"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_a
    const-string v3, "payPalDetails"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_b
    const-string v3, "payUponInvoiceDetails"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_c
    const-string v3, "editAddressRecommendation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_d
    const-string v3, "creditCardDetails"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :pswitch_0
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createRewardsRedemptionViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 197
    :pswitch_1
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createDirectDebitViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 195
    :pswitch_2
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createAddressRecommendationViewModel(Landroid/os/Bundle;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getCurrentAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createSplitOrderView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 191
    :pswitch_4
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createBillingAddressFields(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 189
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createPayUponInvoiceView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 187
    :pswitch_6
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createRiskContingencyViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 185
    :pswitch_7
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createPayPalDetailsView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 183
    :pswitch_8
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createPayPalCreditDetailsView(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_9
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createCreditCardFormViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 179
    :pswitch_a
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createAddressForm(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 177
    :pswitch_b
    invoke-virtual {p1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->shouldSuppressGooglePay()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createPaymentViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;Z)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_c
    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->createShippingViews(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Context;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7abaeba7 -> :sswitch_d
        -0x6bbf671d -> :sswitch_c
        -0x45dc8289 -> :sswitch_b
        -0x44532011 -> :sswitch_a
        -0x42edc033 -> :sswitch_9
        -0x2c4f3794 -> :sswitch_8
        -0x1523a3ac -> :sswitch_7
        -0x2648134 -> :sswitch_6
        0xfe17cf6 -> :sswitch_5
        0x21052e3f -> :sswitch_4
        0x22ea5400 -> :sswitch_3
        0x2c0260f9 -> :sswitch_2
        0x5064c06f -> :sswitch_1
        0x523e442a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeGooglePayIfPresentThenCheckEmptyList(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;",
            ">;)Z"
        }
    .end annotation

    .line 342
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryGroup;->entries:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 345
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 347
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->isGooglePay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method updateAddressFormFields(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 12

    move-object v0, p0

    move-object v2, p1

    move-object v9, p2

    move-object v1, p3

    if-eqz v9, :cond_7

    if-eqz v1, :cond_7

    .line 927
    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p3, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    if-eqz v1, :cond_7

    .line 930
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    .line 931
    invoke-virtual {v3, p1, p2}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->getAddressContainerViewModel(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v3

    .line 932
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->fields:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 935
    instance-of v4, v3, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 937
    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->visibilityStateContainerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    .line 938
    invoke-virtual {v4, v6}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setInitialVisibility(I)Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v4

    const-string v7, "10102"

    .line 939
    invoke-virtual {v4, v7}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    sget v7, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST_NO_PADDING:I

    .line 940
    invoke-virtual {v4, v7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    iget-object v7, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->entries:Ljava/util/List;

    move-object/from16 v8, p4

    .line 941
    invoke-virtual {v7, p1, v1, v5, v8}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->inflateFormFields(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Landroid/widget/AdapterView$OnItemSelectedListener;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 943
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 945
    move-object v2, v3

    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;

    .line 947
    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->ds6ShimProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    invoke-interface {v4}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 948
    :goto_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItemCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 952
    invoke-virtual {p2, v8}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItem(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v10, v8

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 956
    :cond_2
    iget-object v7, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->expandableFooterContainerBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    if-eqz v4, :cond_3

    const v4, 0x7f1306c2

    goto :goto_2

    :cond_3
    const v4, 0x7f1306be

    .line 957
    :goto_2
    invoke-virtual {v7, v4}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->setContainerStyleRes(I)Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    move-result-object v4

    const-string v7, "10103"

    .line 960
    invoke-virtual {v4, v7}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;->setContainerId(Ljava/lang/String;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    sget v7, Lcom/ebay/nautilus/shell/uxcomponents/ContainerComponentType;->UX_CONTAINER_VERTICAL_LIST:I

    .line 961
    invoke-virtual {v4, v7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setViewType(I)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    .line 962
    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setHeaderViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v4

    .line 963
    invoke-virtual {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setData(Ljava/util/List;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v3

    .line 964
    invoke-virtual {v3, v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setFooterViewModel(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    new-instance v3, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    invoke-direct {v3, v5}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;-><init>(I)V

    .line 965
    invoke-virtual {v1, v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->setExpandInfo(Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;)Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;

    move-result-object v1

    .line 966
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    move-result-object v1

    .line 968
    invoke-virtual {p2, v2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->remove(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    .line 969
    invoke-virtual {p2, v10, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->add(ILcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    goto :goto_4

    :cond_4
    move-object/from16 v8, p4

    .line 972
    instance-of v4, v3, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v4, :cond_7

    .line 977
    iget-object v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->heading:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v4, :cond_5

    .line 979
    new-instance v7, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;

    const v10, 0x7f04045a

    invoke-direct {v7, v4, v10, v6}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    move-object v4, v7

    goto :goto_3

    .line 982
    :cond_5
    invoke-virtual {v3}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v4

    .line 984
    :goto_3
    iget-object v6, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->footer:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 986
    new-instance v5, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;

    invoke-direct {v5, v6}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(Ljava/util/List;)V

    .line 988
    :cond_6
    invoke-virtual {p2, v3}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->remove(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    .line 989
    iget-object v3, v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->experienceViewModelFactory:Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;

    iget-object v6, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldGroup;->entries:Ljava/util/List;

    const/4 v7, 0x0

    const-string v10, "10102"

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object/from16 v7, p4

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lcom/ebay/mobile/payments/experience/V2ExperienceViewModelFactory;->buildCustomForm(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;Ljava/util/Map;Landroid/widget/AdapterView$OnItemSelectedListener;Ljava/lang/String;)Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->add(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    :cond_7
    :goto_4
    return-void
.end method
