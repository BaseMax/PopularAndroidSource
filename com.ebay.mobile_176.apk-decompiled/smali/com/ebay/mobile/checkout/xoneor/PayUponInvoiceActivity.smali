.class public Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "PayUponInvoiceActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private dobInput:Lcom/google/android/material/textfield/TextInputEditText;

.field private dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private minimumDateOfBirth:Ljava/util/Date;

.field private pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

.field private result:Lcom/ebay/mobile/activities/ActivityResult;

.field private waitingForSetPayment:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;)Ljava/util/Date;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    return-object p0
.end method

.method private initPayUponInvoice()Z
    .locals 3

    .line 333
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAY_UPON_INVOICE:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodsModule;->getAvailablePaymentMethodWithType(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;)Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    .line 338
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private launchAddressForm(Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;)V
    .locals 3

    .line 191
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditActivity;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->createCheckoutIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "editTitle"

    .line 192
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getBillingAddressTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "usingExperienceService"

    const/4 v2, 0x1

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "addressType"

    const-string v2, "PAY_UPON_INVOICE_BILLING"

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "addressId"

    .line 195
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "addressMeta"

    .line 196
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getBillingAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "addressFieldsModule"

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x26c0

    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private renderBillingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a03c2

    .line 378
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v0, :cond_2

    .line 384
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const v1, 0x7f0a03bf

    .line 386
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 387
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->addressLines:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->getSpannableFromStringArray(Ljava/util/List;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0a03c1

    .line 390
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a03c0

    .line 392
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 393
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    if-eqz v2, :cond_3

    .line 396
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 399
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    const p1, 0x7f0a03c3

    .line 401
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private renderDateOfBirth(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a03c9

    .line 357
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 359
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;->sectionTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a03c8

    .line 366
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;->displayInfo:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v2, :cond_3

    .line 368
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;->displayInfo:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private renderScreen()V
    .locals 3

    .line 299
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->initPayUponInvoice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->finish()V

    return-void

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 308
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->setResult(I)V

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    .line 315
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getMinBirthdate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->getPrimaryToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->text:Ljava/lang/String;

    .line 320
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 322
    :cond_3
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->transferMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->renderTransferMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->birthdateInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->renderDateOfBirth(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BirthdateDetails;)V

    .line 326
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->renderBillingAddress(Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;)V

    .line 327
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->stopProgress()V

    return-void
.end method

.method private renderTransferMessage(Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)V
    .locals 2

    const v0, 0x7f0a03ca

    .line 343
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 344
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 346
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "PayUponInvoice"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 230
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-static {p1, p2, p3, v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->validateOnActivityResult(IILandroid/content/Intent;Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Lcom/ebay/mobile/activities/ActivityResult;

    move-result-object p3

    iput-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    .line 233
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p3, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x26c0

    if-eq p1, p3, :cond_2

    const/16 p1, -0x3e7

    if-eq p2, p1, :cond_1

    .line 242
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-nez p2, :cond_2

    .line 244
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->setResult(I)V

    .line 245
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
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

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onAddressFieldsSaved(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 290
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 291
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->renderScreen()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03c3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->launchAddressForm(Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d00d9

    .line 60
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->startProgress()V

    .line 62
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->showBackButton()V

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->setResult(I)V

    const v0, 0x7f0a03c5

    .line 65
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a03c7

    .line 66
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_0

    const-string v0, "dob_calendar"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const-string v1, "dob_min"

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    const-string/jumbo v1, "waiting_for_set_payment"

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 77
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 137
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_2

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 207
    invoke-virtual {p1}, Ljava/util/Calendar;->clear()V

    .line 208
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 210
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 211
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p3, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 215
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 216
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getMinBirthdateError()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 218
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_1
    :goto_0
    const p1, 0x7f0a03c6

    .line 223
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 4

    .line 144
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 148
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getEmptyBirthdateError()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    return v0

    .line 155
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 159
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getMinBirthdateError()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_2
    return v0

    .line 165
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    if-nez v1, :cond_4

    .line 167
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    .line 168
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->startProgress()V

    .line 169
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getBillingAddressId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->pui:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethod;->getBillingAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->setPayUponInvoice(Ljava/util/Date;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 122
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "dob_min"

    .line 123
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->minimumDateOfBirth:Ljava/util/Date;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "dob_calendar"

    .line 124
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->dobInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v0, "waiting_for_set_payment"

    .line 125
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 255
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 257
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p2, :cond_0

    .line 259
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p2, p2, Lcom/ebay/mobile/activities/ActivityResult;->requestCode:I

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget p3, p3, Lcom/ebay/mobile/activities/ActivityResult;->resultCode:I

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    iget-object v0, v0, Lcom/ebay/mobile/activities/ActivityResult;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p3, v0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p2, 0x0

    .line 260
    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->result:Lcom/ebay/mobile/activities/ActivityResult;

    if-eqz p1, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->isTaskRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasAddressFieldErrors()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->initPayUponInvoice()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->waitingForSetPayment:Z

    .line 271
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->launchAddressForm(Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;)V

    return-void

    .line 274
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x1

    .line 277
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->setResult(I)V

    .line 278
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->finish()V

    return-void

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/PayUponInvoiceActivity;->renderScreen()V

    return-void
.end method
