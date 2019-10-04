.class public Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;
.super Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;
.source "CheckoutRecyclerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;
.implements Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;
.implements Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;
.implements Lcom/ebay/payments/experience/PerformActionCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment<",
        "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment$DatePickerDialogHelperContract;",
        "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;",
        "Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;",
        "Lcom/ebay/payments/experience/PerformActionCallback;"
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_FOCUS_DELAY_MS:J = 0x3e8L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_CHECKOUT_PARAMS_V2:Ljava/lang/String; = "extra_checkout_params"

.field public static final EXTRA_CHECKOUT_SPLIT_MODULE_ACTION:Ljava/lang/String; = "extra_checkout_split_module_action"


# instance fields
.field checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

.field private datePickerDialogFieldId:Ljava/lang/String;

.field private dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field preferences:Lcom/ebay/common/Preferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private result:Lcom/ebay/mobile/activities/ActivityResult;

.field private resultCode:I

.field private screen:Ljava/lang/String;

.field private splitModuleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

.field private xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;-><init>()V

    const-string v0, "Unknown"

    .line 163
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    return-void
.end method

.method private addMenu(Landroid/view/Menu;)V
    .locals 7
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 849
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 852
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7abaeba7

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v3, v4, :cond_3

    const v4, -0x45dc8289

    if-eq v3, v4, :cond_2

    const v4, -0x42edc033

    if-eq v3, v4, :cond_1

    const v4, 0x2c0260f9

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "billingAddress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const-string v3, "addressFields"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "payUponInvoiceDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "creditCardDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 873
    :pswitch_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    .line 874
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    if-eqz v1, :cond_5

    .line 875
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->billingFieldsAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    if-eqz v2, :cond_5

    .line 876
    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->billingFieldsAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 867
    :pswitch_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    .line 868
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    if-eqz v1, :cond_5

    .line 870
    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;->actions:Ljava/util/List;

    goto :goto_1

    .line 860
    :pswitch_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    .line 861
    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    if-eqz v1, :cond_5

    .line 863
    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;->actions:Ljava/util/List;

    goto :goto_1

    .line 855
    :pswitch_3
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    if-eqz v1, :cond_5

    .line 857
    iget-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;->actions:Ljava/util/List;

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 884
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 886
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 887
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 889
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "menuTagAction"

    .line 890
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 891
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    if-nez v5, :cond_6

    .line 893
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private focusOnBillingFormForAccessibility()V
    .locals 5

    .line 1610
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1613
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "10102"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1617
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    new-instance v2, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutRecyclerFragment$hm0lYzUeszRtq5gNQzv-3GcYnEM;

    invoke-direct {v2, v0}, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutRecyclerFragment$hm0lYzUeszRtq5gNQzv-3GcYnEM;-><init>(Landroid/view/View;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v2, v3, v4}, Lcom/ebay/nautilus/domain/content/MainThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$focusOnBillingFormForAccessibility$0(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1619
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/16 v0, 0x8

    .line 1620
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private performMenuAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1180
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->shouldShowDynamicMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateForm()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 1183
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1191
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 1192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1193
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->EXPAND_SHIPPING_ADDRESSES:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    .line 1194
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1195
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1197
    :cond_1
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {v0, p0, v1, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 1198
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 1199
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 1200
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v2

    :cond_2
    return v0
.end method

.method private processPaypalIdentity(IILandroid/content/Intent;)V
    .locals 11

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const-string v3, "extraPromotionId"

    .line 1442
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    const/16 v3, 0x7d0

    if-ne p1, v3, :cond_1

    .line 1444
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 1447
    :goto_1
    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v4, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {v4, p3, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportProxIdlErrorToApls(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/content/Intent;I)V

    const/4 v4, -0x1

    const v5, 0x7f120a38

    const/4 v7, 0x2

    const/4 v10, 0x1

    if-eq p2, v4, :cond_6

    const/16 v4, 0x8

    if-eq p2, v4, :cond_5

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p3, :cond_2

    const-string/jumbo v0, "proxErrorCode"

    .line 1512
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "proxErrorDescription"

    .line 1514
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1515
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-string v2, "IDENTITY"

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodError(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1518
    :cond_2
    iput-boolean v10, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void

    :pswitch_1
    if-eqz p3, :cond_3

    const-string/jumbo v0, "proxErrorCode"

    .line 1496
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "proxErrorDescription"

    .line 1498
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1499
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-string v2, "IDENTITY"

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodError(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1502
    :cond_3
    iput-boolean v10, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void

    .line 1480
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz v0, :cond_4

    .line 1482
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 1483
    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/dagger/KernelComponent;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/dagger/AppComponent;

    invoke-interface {v0}, Lcom/ebay/mobile/dagger/AppComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object v0

    .line 1484
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    .line 1485
    iput-boolean v10, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void

    .line 1490
    :cond_4
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v10}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_5
    const v0, 0x7f120209

    .line 1505
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120a55

    .line 1506
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1505
    invoke-virtual {p0, v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1507
    iput-boolean v10, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void

    :cond_6
    if-nez p3, :cond_7

    .line 1523
    :goto_2
    invoke-virtual {p0, v7}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 1454
    :cond_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_8

    .line 1456
    invoke-virtual {p0, v5}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v10}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1459
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->federationLinking:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "extraPaypalCode"

    .line 1461
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "extraPaypalState"

    .line 1462
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "extraPaypalError"

    .line 1463
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "proxErrorDescription"

    .line 1465
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "token"

    .line 1466
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "key"

    .line 1467
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1468
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    .line 1469
    invoke-virtual/range {v0 .. v9}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPalFedLinking(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_3

    :cond_9
    const-string v0, "payPalLinkId"

    .line 1474
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1475
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v4, 0x0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPaymentMethodPayPal(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    .line 1477
    :goto_3
    iput-boolean v10, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processPaypalIdentityWithChallenge(I)V
    .locals 7

    const-string/jumbo v0, "user_cancelled"

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    const-string v0, "3ds_failure"

    goto :goto_0

    .line 1433
    :goto_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->purchase(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void
.end method

.method private renderScreen()V
    .locals 10

    .line 668
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 669
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->autofillCreditCardDetails:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    .line 674
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->autofillShippingAddress:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const-string v1, "creditCardDetails"

    .line 676
    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    const-string v1, "addressFields"

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 677
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    .line 680
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    if-eqz v1, :cond_6

    .line 682
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 686
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 688
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 693
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 696
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->finishActivity()V

    goto/16 :goto_5

    .line 700
    :cond_6
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz v1, :cond_15

    .line 702
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->clear()V

    .line 703
    new-instance v1, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;Landroid/content/Context;)V

    .line 705
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->bundle(Landroid/os/Bundle;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->splitModuleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 706
    invoke-virtual {v1, v2}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->currentAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;

    move-result-object v1

    .line 707
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->shouldSuppressGooglePay()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->suppressGooglePay(Z)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;

    move-result-object v1

    .line 708
    invoke-virtual {v1, p0}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->itemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter$Builder;->build()Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 713
    invoke-virtual {v1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 714
    invoke-virtual {v1}, Lcom/ebay/mobile/payments/experience/RecyclerViewScreenPresenter;->getScrollingViewData()Ljava/util/List;

    move-result-object v1

    .line 717
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->savedState:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 718
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 719
    instance-of v5, v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    if-eqz v5, :cond_7

    .line 720
    check-cast v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->savedState:Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;->restoreState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 722
    :cond_8
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->textInputState:Landroid/os/Bundle;

    if-eqz v3, :cond_b

    .line 724
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 727
    instance-of v5, v4, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    if-eqz v5, :cond_9

    .line 728
    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->textInputState:Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;->restoreTextInputIfEmpty(Landroid/os/Bundle;)V

    goto :goto_1

    .line 730
    :cond_a
    iput-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->textInputState:Landroid/os/Bundle;

    .line 733
    :cond_b
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->stateSpinnerState:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    .line 735
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 738
    instance-of v5, v4, Lcom/ebay/mobile/checkout/v2/model/SpinnerInputStateHandler;

    if-eqz v5, :cond_c

    .line 739
    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/SpinnerInputStateHandler;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->stateSpinnerState:Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/SpinnerInputStateHandler;->restoreSpinnerState(Landroid/os/Bundle;)V

    goto :goto_2

    .line 741
    :cond_d
    iput-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->stateSpinnerState:Landroid/os/Bundle;

    .line 744
    :cond_e
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->containerVisibilityState:Landroid/os/Bundle;

    if-eqz v3, :cond_11

    .line 746
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 749
    instance-of v5, v4, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    if-eqz v5, :cond_f

    .line 751
    check-cast v4, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->containerVisibilityState:Landroid/os/Bundle;

    invoke-interface {v4, v5}, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;->restoreVisibilityState(Landroid/os/Bundle;)V

    goto :goto_3

    .line 755
    :cond_10
    iput-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->containerVisibilityState:Landroid/os/Bundle;

    .line 758
    :cond_11
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->scannedCardNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 760
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->getInstance()Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->scannedCardNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->setCardNumber(Ljava/lang/String;)V

    .line 761
    iput-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->scannedCardNumber:Ljava/lang/String;

    .line 764
    :cond_12
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v2, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->addAll(Ljava/util/List;)V

    goto :goto_4

    .line 769
    :cond_13
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1210d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 768
    invoke-virtual {p0, v2, v1, v3}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 770
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setCancelResultStatus()V

    const-string/jumbo v4, "xoneor"

    const-string v5, "get_module"

    .line 771
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v2

    :cond_14
    move-object v6, v2

    const/4 v7, 0x0

    const-string v8, "null_presenter_error"

    const-string v1, "Presenter for %s is null"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    aput-object v9, v2, v3

    .line 772
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 771
    invoke-static/range {v4 .. v9}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_15
    :goto_4
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->restoreRecyclerViewInstanceState()V

    .line 777
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->shouldShowDynamicMenu()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 778
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 780
    :cond_16
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->trackRenderedScreen()V

    const/4 v0, 0x2

    .line 781
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    :goto_5
    return-void

    :cond_17
    :goto_6
    return-void
.end method

.method private setCancelResultStatus()V
    .locals 2

    .line 615
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, -0x3e7

    .line 618
    iput v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    .line 619
    iget v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    :cond_0
    return-void
.end method

.method private setRemoveAfterOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1038
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v0

    .line 1042
    sget-object v1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$ActionEnum:[I

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1070
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    :pswitch_0
    const-string/jumbo p1, "rewardsRedemption"

    .line 1067
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    :pswitch_1
    const-string p1, "paymentMethods"

    .line 1064
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "riskContingency"

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    :pswitch_2
    const-string p1, "editAddressRecommendation"

    .line 1061
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    .line 1047
    :pswitch_3
    new-array v0, v2, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1048
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    .line 1049
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1051
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    .line 1052
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1051
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v0

    .line 1054
    :cond_3
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, p1, :cond_4

    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL_CREDIT:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eq v0, p1, :cond_4

    const-string p1, "payUponInvoiceDetails"

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 1056
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1057
    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSelectedPaymentMethodMeta(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1081
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1082
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    .line 1085
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1084
    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setSelectedPaymentMethod(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)V

    .line 1086
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PROMOTION_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPromotionId(Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setExchangeRateBundle(Landroid/os/Bundle;)V

    .line 1088
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->WEBVIEW:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->RESOLVE_CREDIT_CARD_CHALLENGE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 1089
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object p1

    if-ne v1, p1, :cond_0

    const/16 p1, 0x7d3

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    .line 1088
    :goto_0
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setRequestType(I)V

    :cond_1
    return-void
.end method

.method private shouldRemoveAfterOperationActionByScreen()V
    .locals 5

    .line 629
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x7abaeba7

    const/4 v4, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x21052e3f

    if-eq v2, v3, :cond_2

    const v3, 0x5064c06f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "rewardsRedemption"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "directDebitDetails"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "creditCardDetails"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 647
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;

    if-eqz v0, :cond_5

    .line 648
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/RewardsModule;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    iput-boolean v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    .line 641
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;

    .line 642
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;

    if-eqz v0, :cond_5

    .line 643
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    iput-boolean v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    goto :goto_1

    .line 635
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    .line 636
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    if-eqz v0, :cond_5

    .line 637
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 638
    iput-boolean v4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldShowDynamicMenu()Z
    .locals 2

    const-string v0, "addressFields"

    .line 659
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "creditCardDetails"

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "payUponInvoiceDetails"

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "billingAddress"

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shouldSuppressGooglePay()Z
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->shouldSuppressGooglePay()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->shouldSuppressGooglePay()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private trackRenderedScreen()V
    .locals 4

    .line 799
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 803
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "riskContingency"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v3, "directDebitDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_2
    const-string v3, "payPalCreditDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "paymentMethods"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "splitOrder"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_5
    const-string v3, "expandShippingAddress"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "addressFields"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v3, "payPalDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v3, "payUponInvoiceDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_9
    const-string v3, "creditCardDetails"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 833
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/DirectDebitDetailsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 830
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrder;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 827
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/RiskContingencyModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 824
    :pswitch_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayUponInvoiceDetails;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 821
    :pswitch_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 818
    :pswitch_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 815
    :pswitch_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 812
    :pswitch_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 809
    :pswitch_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalCreditDetails;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    goto :goto_1

    .line 806
    :pswitch_9
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 839
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 840
    instance-of v2, v1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v2, :cond_2

    .line 841
    iget-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->isActive:Z

    check-cast v1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 842
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    .line 841
    invoke-static {v2, v0, v1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackRenderedModuleView(ZLcom/ebay/nautilus/domain/data/experience/type/base/IModule;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7abaeba7 -> :sswitch_9
        -0x45dc8289 -> :sswitch_8
        -0x44532011 -> :sswitch_7
        -0x42edc033 -> :sswitch_6
        -0x2c4f3794 -> :sswitch_5
        -0x1523a3ac -> :sswitch_4
        -0x2648134 -> :sswitch_3
        0xfe17cf6 -> :sswitch_2
        0x21052e3f -> :sswitch_1
        0x22ea5400 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private updateActionParamsWithFormData(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1213
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1215
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 1225
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;

    if-eqz v2, :cond_1

    .line 1227
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;

    .line 1229
    iget-object v1, v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    if-eqz v1, :cond_0

    .line 1233
    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1235
    invoke-static {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->updateActionParamsFromViewModelList(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_0

    .line 1238
    :cond_1
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v2, :cond_0

    .line 1239
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->updateActionParamWithFormData(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
    .locals 5
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const v1, 0x7f120a38

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 586
    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->modules:Ljava/util/Map;

    if-nez v4, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasFatalError()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 595
    const-class v4, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    .line 596
    invoke-virtual {p1, v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    if-eqz p1, :cond_2

    .line 597
    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->notifications:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->notifications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 599
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;->notifications:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 600
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 601
    :goto_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setCancelResultStatus()V

    .line 602
    invoke-virtual {p0, v0, p1, v3}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_2
    return v3

    .line 588
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 589
    invoke-virtual {p0, v0, p1, v3}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setCancelResultStatus()V

    return v2
.end method

.method private windowShouldBeSecure()Z
    .locals 2

    const-string v0, "creditCardDetails"

    .line 274
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    .line 316
    invoke-super {p0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->initializeRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 318
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 319
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 320
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 321
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 323
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1631
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1359
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1361
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x7da

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 1369
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1370
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p2

    .line 1371
    :goto_0
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v1, :cond_2

    .line 1372
    check-cast v0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p2

    :cond_2
    if-eqz p3, :cond_3

    const-string v0, "io.card.payment.scanResult"

    .line 1374
    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "io.card.payment.scanResult"

    .line 1376
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lio/card/payment/CreditCard;

    iget-object p3, p3, Lio/card/payment/CreditCard;->cardNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->scannedCardNumber:Ljava/lang/String;

    .line 1378
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->getInstance()Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    move-result-object p3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->scannedCardNumber:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->setCardNumber(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1380
    invoke-static {p1, p2, v2}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackCardScanningCompleted(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;Lcom/ebay/nautilus/kernel/content/EbayContext;I)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    const/4 p3, 0x0

    .line 1383
    invoke-static {p1, p2, p3}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackCardScanningCompleted(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;Lcom/ebay/nautilus/kernel/content/EbayContext;I)V

    :cond_4
    :goto_1
    return-void

    .line 1387
    :cond_5
    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    const/16 v0, -0x3e7

    if-ne p2, v0, :cond_6

    .line 1391
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->finishActivity()V

    return-void

    .line 1394
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_7

    const p1, 0x7f12077c

    .line 1396
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f120a38

    .line 1397
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1396
    invoke-virtual {p0, p1, p2, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    if-nez p2, :cond_8

    const/4 p1, 0x2

    .line 1402
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 1406
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 1407
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz v0, :cond_9

    return-void

    :cond_9
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 1420
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 1421
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->processPaypalIdentityWithChallenge(I)V

    goto :goto_2

    .line 1414
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->processPaypalIdentity(IILandroid/content/Intent;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAddressFieldsChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 368
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p3, :cond_0

    .line 369
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 371
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    .line 372
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 374
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 378
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    const-string p3, "addressFields"

    .line 381
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 382
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p3, v0, p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_2
    const-string p1, "creditCardDetails"

    .line 385
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "directDebitDetails"

    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 391
    :cond_3
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->renderScreen()V

    goto :goto_1

    .line 387
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1, p3, v0, v1, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->updateAddressFormFields(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 388
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    :goto_1
    const/4 p1, 0x1

    .line 393
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleActionPerformed:Z

    return-void
.end method

.method public onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 402
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p3, :cond_0

    .line 403
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    :cond_0
    const-string p1, "expandShippingAddress"

    .line 405
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddresses(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void

    :cond_1
    const-string p1, "addressFields"

    .line 410
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "billingAddress"

    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 413
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    .line 414
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    const/4 p2, 0x2

    if-nez p1, :cond_3

    .line 416
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 420
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    .line 421
    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    .line 425
    iput-boolean p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 433
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;

    if-eqz v0, :cond_5

    .line 435
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_recommended_address"

    .line 436
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/ShippingAddressesModule;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/Recommendation;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "extra_checkout_params"

    .line 437
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "editAddressRecommendation"

    const v0, 0x7f120a33

    .line 439
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->loadBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 440
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 441
    instance-of v0, p1, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    if-eqz v0, :cond_4

    .line 443
    check-cast p1, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    .line 445
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;-><init>()V

    .line 446
    invoke-interface {p1, v0, p2, p3}, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;->addFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_4
    return-void

    .line 452
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p1, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    if-eqz p1, :cond_6

    .line 455
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1, p3, v0, v1, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->updateAddressFormFields(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 456
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 461
    :cond_6
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->renderScreen()V

    return-void
.end method

.method public onAddressesChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 349
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p3, :cond_0

    .line 350
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 352
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    .line 353
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    .line 355
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->renderScreen()V

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleActionPerformed:Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 225
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 226
    invoke-super {p0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    if-eqz p1, :cond_2

    .line 229
    instance-of v0, p1, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v0, :cond_2

    .line 235
    check-cast p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/view/util/DialogManager;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    goto :goto_0

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'s activity should implement PaymentsFragmentActivityContract"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 902
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 185
    invoke-super {p0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_checkout_params"

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    const-string/jumbo v1, "screen"

    .line 191
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const-string v1, "extra_checkout_split_module_action"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->splitModuleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "date_picker_dialog_field_id"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->datePickerDialogFieldId:Ljava/lang/String;

    const-string v0, "extra_activity_result_code"

    .line 198
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    .line 199
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 201
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->windowShouldBeSecure()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setWindowToSecure()V

    .line 207
    :cond_2
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;->builder(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;

    move-result-object p1

    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;-><init>()V

    .line 208
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;->setExecutionHandlers(Ljava/lang/Object;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object p1

    .line 210
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$-CC;->builder(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object v0

    .line 211
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setComponentClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    .line 212
    invoke-interface {p1, p0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->setItemClickListener(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;)Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;

    move-result-object p1

    .line 213
    invoke-interface {p1}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->componentBindingInfo:Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;

    .line 215
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->initDataManagers()V

    .line 218
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->shouldShowDynamicMenu()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setHasOptionsMenu(Z)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 280
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->addMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0d00da

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 338
    invoke-super {p0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 341
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    return-void
.end method

.method public onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z
    .locals 5

    .line 908
    instance-of v0, p2, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 911
    :cond_0
    instance-of v0, p2, Lcom/ebay/payments/experience/PaymentsAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 913
    instance-of v0, p2, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    if-eqz v0, :cond_3

    .line 915
    move-object v0, p2

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    .line 916
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowBubbleHelp()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showBubbleHelp(Landroidx/fragment/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 918
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowActionMenu()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showActionMenu(Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 920
    :cond_2
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->shouldShowActionConfirmation()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->showActionConfirmation(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 923
    :cond_3
    instance-of p1, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz p1, :cond_4

    .line 925
    move-object p1, p2

    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 926
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->shouldShowBubbleHelp()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->showBubbleHelp(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 930
    :cond_4
    check-cast p2, Lcom/ebay/payments/experience/PaymentsAction;

    .line 931
    invoke-interface {p2}, Lcom/ebay/payments/experience/PaymentsAction;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    if-nez p1, :cond_5

    return v1

    .line 935
    :cond_5
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object p2

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->EXPAND_BILLING_ADDRESS:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne p2, v0, :cond_9

    .line 938
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 940
    instance-of v3, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    if-eqz v3, :cond_6

    .line 942
    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    const-string v3, "10103"

    .line 943
    iget-object v4, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 946
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 947
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    if-eqz p1, :cond_7

    .line 948
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->toggleVisibility()Z

    .line 951
    :cond_7
    iget-object p1, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of p1, p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    if-eqz p1, :cond_8

    .line 953
    iget-object p1, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->toggleVisibility()Z

    .line 954
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->focusOnBillingFormForAccessibility()V

    :cond_8
    return v2

    .line 962
    :cond_9
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setRemoveAfterOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    .line 963
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setSelectedPaymentMethodMeta(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    .line 964
    new-instance p2, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {p2, p0, v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 965
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 966
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result p2

    if-eqz p2, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 967
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v2

    .line 971
    :cond_b
    instance-of v0, p2, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    if-eqz v0, :cond_10

    .line 973
    check-cast p2, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;

    .line 974
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a030d

    if-eq p1, v0, :cond_e

    const v0, 0x7f0a0ae2

    if-eq p1, v0, :cond_c

    return v1

    .line 984
    :cond_c
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object p2, p2, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->okAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p1, p0, v0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 985
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 987
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result p2

    if-eqz p2, :cond_d

    const/4 v1, 0x1

    .line 986
    :cond_d
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 988
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v2

    .line 977
    :cond_e
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object p2, p2, Lcom/ebay/mobile/checkout/v2/model/ActionConfirmationViewModel;->cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p1, p0, v0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 978
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 980
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 v1, 0x1

    .line 979
    :cond_f
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 981
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v2

    .line 996
    :cond_10
    instance-of p1, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz p1, :cond_12

    .line 998
    check-cast p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 999
    sget-object p1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$FieldParameterEnum:[I

    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "creditCardDetails"

    .line 1005
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1007
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_CAMERA:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ebay/mobile/util/PermissionUtil;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1009
    sget-object p1, Lcom/ebay/mobile/util/PermissionUtil;->PERMISSION_CAMERA:[Ljava/lang/String;

    const/4 p2, 0x3

    const v0, 0x7f120905

    const v1, 0x7f12090c

    .line 1010
    invoke-static {p0, p1, p2, v0, v1}, Lcom/ebay/mobile/util/PermissionUtil;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;III)Z

    return v2

    .line 1015
    :cond_11
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->startCardScanning()V

    goto :goto_0

    .line 1002
    :pswitch_1
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->datePickerDialogFieldId:Ljava/lang/String;

    .line 1003
    invoke-virtual {p2, p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->showDatePickerFragment(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;)Z

    move-result p1

    return p1

    :cond_12
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1097
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    .line 1098
    instance-of p2, p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    if-eqz p2, :cond_1

    .line 1100
    check-cast p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    .line 1101
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1105
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->getParamKey()Ljava/lang/String;

    move-result-object p3

    .line 1107
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 1108
    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 1109
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->getParamValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1115
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    .line 1116
    sget-object p3, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne p1, p3, :cond_1

    .line 1117
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->performOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 288
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "menuTagAction"

    .line 291
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 292
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->performMenuAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onRefresh()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 301
    invoke-super {p0, p1}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "screen"

    .line 302
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_checkout_params"

    .line 303
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "date_picker_dialog_field_id"

    .line 304
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->datePickerDialogFieldId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_activity_result_code"

    .line 305
    iget v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->resultCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 468
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p3, :cond_0

    .line 469
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 472
    :cond_0
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->preferences:Lcom/ebay/common/Preferences;

    invoke-virtual {p3}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getMessages()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 473
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/ebay/common/view/EbayErrorHandler;->handleResultStatus(Landroidx/fragment/app/Fragment;ILcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    .line 475
    :cond_1
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz p3, :cond_2

    .line 477
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne p3, v0, :cond_2

    iget-boolean p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleActionPerformed:Z

    if-nez p3, :cond_2

    .line 480
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->performOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    return-void

    .line 484
    :cond_2
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    .line 486
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_3

    .line 488
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 489
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_3

    .line 490
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 494
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    const/4 p2, 0x2

    if-nez p1, :cond_4

    .line 496
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 500
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->meta:Lcom/ebay/nautilus/domain/data/experience/type/base/ServiceMeta;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;

    .line 501
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 502
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 504
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 505
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->screenFlowDestination:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_6

    .line 509
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setSelectedPaymentMethodMeta(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    .line 511
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {p1, p0, p2, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 512
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 513
    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    .line 515
    instance-of p1, p3, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-eqz p1, :cond_5

    .line 516
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ebay/payments/checkout/analytics/CheckoutTrackingData;->trackExperienceAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    :cond_5
    return-void

    .line 522
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->shouldShowSepaMandate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 524
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 525
    new-instance p2, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutServiceMeta;->screenFlowDestination:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p2, p0, p3, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 526
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 527
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    .line 529
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->removeScreenFlowDestination()V

    return-void

    .line 533
    :cond_7
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->shouldRemoveAfterOperationActionByScreen()V

    const-string p1, "creditCardDetails"

    .line 539
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;

    .line 540
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    if-nez p1, :cond_d

    .line 542
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/address/AddressFields;

    if-eqz p1, :cond_8

    .line 546
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 547
    invoke-virtual {p1, p3, v0, v1, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;->updateAddressFormFields(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 548
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void

    .line 553
    :cond_8
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    .line 554
    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    .line 555
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    .line 556
    invoke-virtual {p2, p3}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    .line 557
    iget-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    .line 558
    invoke-virtual {p3, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p3

    check-cast p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    .line 559
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    .line 560
    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    .line 561
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    if-eqz p1, :cond_9

    .line 564
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/CreditCardDetailsModule;

    invoke-virtual {v2, v3, p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_9
    if-eqz p3, :cond_a

    .line 566
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodsModule;

    invoke-virtual {p1, v2, p3}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_a
    if-eqz p2, :cond_b

    .line 568
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class p3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/notifications/NotificationsModule;

    invoke-virtual {p1, p3, p2}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_b
    if-eqz v0, :cond_c

    .line 570
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/details/CartDetailsModule;

    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    :cond_c
    if-eqz v1, :cond_d

    .line 572
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PayPalDetails;

    invoke-virtual {p1, p2, v1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addSessionModule(Ljava/lang/reflect/Type;Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    .line 574
    :cond_d
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->renderScreen()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 248
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string p1, "extra_checkout_params"

    .line 252
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    const-string/jumbo p1, "screen"

    .line 253
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    const-string p1, "loadState"

    .line 255
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 260
    instance-of p2, p1, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    if-eqz p2, :cond_1

    .line 261
    check-cast p1, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;->setToolbar(Z)V

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->enabledCreditCardAutofill:Z

    if-eqz p1, :cond_2

    const-string p1, "creditCardDetails"

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->enabledShippingAddressAutofill:Z

    if-eqz p1, :cond_4

    const-string p1, "addressFields"

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->screen:Ljava/lang/String;

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 265
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    .line 266
    :cond_4
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    return-void
.end method

.method public performOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1248
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    .line 1249
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 1252
    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->savedState:Landroid/os/Bundle;

    .line 1254
    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v0

    .line 1255
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->CANCEL:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    .line 1256
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 1257
    :cond_0
    sget-object v1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$ActionEnum:[I

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 1335
    :pswitch_1
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleActionPerformed:Z

    .line 1336
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->removeAdvancedFeatures(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1323
    :pswitch_2
    iput-boolean v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1324
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateForm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 1328
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1329
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->createPaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1332
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    goto/16 :goto_0

    .line 1310
    :pswitch_3
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1311
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1312
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveContainerVisibilityState()V

    .line 1313
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateForm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1315
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 1316
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1317
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->updatePaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1320
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    goto/16 :goto_0

    .line 1301
    :pswitch_4
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1302
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1303
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->createPaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1296
    :pswitch_5
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1297
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1298
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->updatePaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1284
    :pswitch_6
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1285
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1286
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateForm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 1289
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1290
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->validatePaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto/16 :goto_0

    .line 1293
    :cond_3
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    goto/16 :goto_0

    .line 1280
    :pswitch_7
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1281
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editPaymentMethod(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1269
    :pswitch_8
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddresses(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1260
    :pswitch_9
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1261
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->changeSelectedAddress(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1339
    :pswitch_a
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->removeAfterOperationAction:Z

    .line 1340
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1341
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->validateForm()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1343
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    .line 1344
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->updateActionParamsWithFormData(Ljava/util/Map;)V

    .line 1345
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->redeemRewards(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1348
    :cond_4
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    goto :goto_0

    .line 1275
    :pswitch_b
    new-array v0, v3, [Z

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1276
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveStateSpinnerState()V

    .line 1277
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addAddress(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1264
    :pswitch_c
    new-array v0, v2, [Z

    aput-boolean v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveTextInputState([Z)V

    .line 1265
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->saveStateSpinnerState()V

    .line 1266
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editAddress(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1306
    :pswitch_d
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->moduleActionPerformed:Z

    .line 1307
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getPaymentInstrument(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1272
    :pswitch_e
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->getParams()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddressFields(Ljava/util/Map;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performPopupMenuAction(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1138
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;

    if-eqz v1, :cond_3

    .line 1142
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v2, :cond_3

    .line 1144
    sget-object v2, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$ActionEnum:[I

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 1163
    iget-object p1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setRemoveAfterOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    .line 1164
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    invoke-direct {p1, p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;-><init>(Landroidx/fragment/app/Fragment;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    .line 1165
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setXoParams(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 1166
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->isPayPalFlowInIntermediatedCheckout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->setPayPalFlowInIntermediatedCheckout(Z)Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;

    move-result-object p1

    .line 1167
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$Builder;->buildAndHandleAction()V

    return v4

    .line 1147
    :cond_0
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    if-nez v2, :cond_1

    return v0

    .line 1150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object p1

    .line 1151
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1152
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionItem;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->messages:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/ebay/mobile/payments/experience/PaymentsExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1156
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    if-eqz v2, :cond_2

    .line 1157
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1158
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-virtual {v1, v2, p1, v0}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_3
    return v0
.end method

.method processOnActivityNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1588
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "payment"

    const-string v1, "opType"

    .line 1591
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1593
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->setLoadState(I)V

    .line 1595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1596
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_METHOD_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getSelectedPaymentMethod()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1597
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->PAYMENT_INSTRUMENT_ID:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    new-instance p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->EDIT_PAYMENT_METHOD:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 1599
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->performOperationAction(Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    goto :goto_0

    :cond_0
    const-string v4, "P2_PAYPAL"

    const-string/jumbo v5, "redirectFromP2PayPal"

    .line 1602
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->session:Lcom/ebay/nautilus/domain/data/experience/payments/PaymentsSessionContract;

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 1603
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const/4 v7, 0x0

    const-string v8, "error_in_redirect_from_p2_paypal"

    .line 1604
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1602
    invoke-static/range {v4 .. v9}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reportErrorToApls(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBindingItemsAdapter(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1649
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    return-void
.end method

.method public setMainThreadHandler(Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1640
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    return-void
.end method

.method protected showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1537
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 1538
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->flush()V

    :cond_0
    return-void
.end method

.method public updateModelOnDateSet(Ljava/util/Calendar;)V
    .locals 5

    .line 1556
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->datePickerDialogFieldId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1558
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->bindingItemsAdapter:Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItemsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 1560
    instance-of v2, v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    if-eqz v2, :cond_0

    .line 1562
    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;

    .line 1563
    invoke-virtual {v1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 1565
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v3, :cond_1

    .line 1567
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 1569
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->datePickerDialogFieldId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1571
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->updateModelOnDateSet(Ljava/util/Calendar;Landroid/content/Context;)V

    return-void

    :cond_2
    return-void
.end method
