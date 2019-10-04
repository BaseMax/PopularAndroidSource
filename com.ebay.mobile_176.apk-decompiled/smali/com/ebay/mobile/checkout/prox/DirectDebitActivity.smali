.class public final Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;
.super Lcom/ebay/mobile/checkout/BaseCheckoutActivity;
.source "DirectDebitActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;,
        Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$CreditTextWatcher;
    }
.end annotation


# instance fields
.field private addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

.field private bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private dob:Lcom/google/android/material/textfield/TextInputEditText;

.field private ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field private ibanNumberChangeListener:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;

.field private instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

.field private layoutBankAccountName:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutDobDetails:Landroid/widget/TextView;

.field private layoutIbanNumber:Lcom/google/android/material/textfield/TextInputLayout;

.field private minimumDateOfBirth:Ljava/util/Calendar;

.field private rememberSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private rememberWebLink:Landroid/widget/TextView;

.field private usingExperienceService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;-><init>()V

    .line 77
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->usingExperienceService:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    return-object p0
.end method

.method private addFundingInstrumentFromFormData()V
    .locals 3

    .line 632
    new-instance v0, Lcom/ebay/nautilus/domain/data/DirectDebit;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/DirectDebit;-><init>()V

    .line 634
    new-instance v1, Lcom/ebay/nautilus/domain/data/DirectDebit$Iban;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/data/DirectDebit$Iban;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->internationalBankAccountNumber:Lcom/ebay/nautilus/domain/data/DirectDebit$Iban;

    .line 639
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 645
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 646
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v1, "MM/dd/yyyy"

    .line 648
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->dateOfBirth:Ljava/lang/String;

    .line 649
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    .line 650
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    .line 651
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/BillingAddress;->setFirstLastNameFromFullNameString(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->apiAddDirectDebit(Lcom/ebay/nautilus/domain/data/DirectDebit;)V

    return-void
.end method

.method private getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;
    .locals 3

    .line 679
    new-instance v0, Lcom/ebay/nautilus/domain/data/BillingAddress;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/BillingAddress;-><init>()V

    .line 680
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getFisAddress()Lcom/ebay/nautilus/domain/data/address/AddressFields;

    move-result-object v1

    .line 682
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->country:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->countryCode:Ljava/lang/String;

    .line 683
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street1:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress:Ljava/lang/String;

    .line 684
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street2:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress2:Ljava/lang/String;

    .line 685
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->city:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->city:Ljava/lang/String;

    .line 686
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->stateOrProvince:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->state:Ljava/lang/String;

    .line 687
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->postalCode:Ljava/lang/String;

    return-object v0
.end method

.method private onClearMaskedFields()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private renderAddressUi()V
    .locals 6

    .line 243
    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 246
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    if-nez v1, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;-><init>()V

    iput-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 253
    iget-boolean v3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->usingExperienceService:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    if-eqz v3, :cond_0

    .line 254
    new-instance v3, Lcom/ebay/nautilus/domain/data/address/Address;

    iget-object v4, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    invoke-direct {v3, v4}, Lcom/ebay/nautilus/domain/data/address/Address;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "addressMeta"

    .line 257
    new-instance v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-direct {v5, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;-><init>(Lcom/ebay/nautilus/domain/data/address/Address;)V

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v3, "usingExperienceService"

    const/4 v4, 0x0

    .line 258
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v3, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x7f0a0096

    .line 260
    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 261
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private updateFundingInstrumentFromFormData()V
    .locals 4

    .line 660
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    .line 661
    new-instance v1, Lcom/ebay/nautilus/domain/data/DirectDebit;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/DirectDebit;-><init>()V

    .line 663
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    .line 664
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    .line 665
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/BillingAddress;->setFirstLastNameFromFullNameString(Ljava/lang/String;)V

    .line 667
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/BillingAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    .line 668
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->finish()V

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->apiUpdateDirectDebit(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/DirectDebit;)V

    return-void
.end method

.method private validateForm(Z)Z
    .locals 6

    .line 535
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutIbanNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 537
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutBankAccountName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 545
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->length()I

    move-result p1

    const/16 v2, 0x16

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    .line 546
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/DirectDebit;->validateMod97Checksum(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 548
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutIbanNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 549
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutIbanNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f120a48

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 554
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 556
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutBankAccountName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 557
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutBankAccountName:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f120a4b

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    :cond_2
    const v2, 0x7f120a46

    .line 563
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 564
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 565
    iget-object v4, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 568
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 574
    :catch_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 575
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x0

    .line 580
    :cond_3
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->validateFisAddress()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method


# virtual methods
.method addOrUpdateFundingInstrumentFromFormData()V
    .locals 3

    .line 616
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\u2022"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 620
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->updateFundingInstrumentFromFormData()V

    goto :goto_0

    .line 623
    :cond_0
    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addFundingInstrumentFromFormData()V

    goto :goto_0

    .line 626
    :cond_1
    invoke-direct {p0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addFundingInstrumentFromFormData()V

    :cond_2
    :goto_0
    return-void
.end method

.method public checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method clearBulletedFieldsToNullOnFocus(Landroid/view/View;)V
    .locals 1

    .line 698
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a03b6

    if-ne p1, v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->onClearMaskedFields()V

    :cond_0
    return-void
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "DirectDebitIBAN"

    return-object v0
.end method

.method public hideContent()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p2, 0x0

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setCheckoutResult(ILandroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 117
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 119
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "usingExperienceService"

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->usingExperienceService:Z

    const-string v1, "instrumentDetails"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v1, "fundingInstrumentId"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DD_"

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->apiGetFundingInstrument(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f0d00bc

    .line 128
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->initializeProgressViews()V

    .line 131
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->showBackButton()V

    const v0, 0x7f0a03b6

    .line 134
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a03ad

    .line 135
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a03a4

    .line 136
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a03b5

    .line 137
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutIbanNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a03ac

    .line 138
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDob:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a03ae

    .line 139
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDobDetails:Landroid/widget/TextView;

    const v0, 0x7f0a03a3

    .line 140
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutBankAccountName:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a0d88

    .line 141
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "ibanNumber"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "dob"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "cardholderName"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const-string/jumbo v1, "rememberToggle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 152
    :cond_1
    new-instance p1, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p1, p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;-><init>(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;Landroid/widget/EditText;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumberChangeListener:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;

    .line 154
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setDobDetailsText()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDobDetails:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setDobDetailsText()Z

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDobDetails:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz p1, :cond_3

    const p1, 0x7f0a03b2

    .line 164
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->disclaimerText:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    .line 175
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 176
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 177
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 178
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    const/16 v0, -0x12

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 181
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->usingExperienceService:Z

    if-eqz p1, :cond_5

    const p1, 0x7f0a03cb

    .line 183
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0d87

    .line 184
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    .line 187
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    if-eqz p1, :cond_4

    const v0, 0x7f0a0d86

    .line 190
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->VIEW_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 197
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    const v1, 0x7f0a123f

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    new-instance v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$1;-><init>(Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberWebLink:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->renderAddressUi()V

    .line 217
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 301
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    const p1, 0x7f0a03ad

    .line 470
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 473
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 475
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 476
    iget-object p2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->minimumDateOfBirth:Ljava/util/Calendar;

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x1010036

    .line 477
    invoke-static {p0, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p2, 0x7f040156

    .line 478
    invoke-static {p0, p2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 476
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->requestFocusIfNotMasked(Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 489
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    iget-object p3, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getId()I

    move-result p3

    if-ne p1, p3, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 491
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;ZLjava/io/IOException;)V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 384
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->toggleProgressView(Z)V

    .line 385
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const v0, 0x7f120209

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {p0, p2, p3}, Lcom/ebay/mobile/checkout/CheckoutError;->getConnectionError(Landroid/content/Context;ZLjava/io/IOException;)Ljava/lang/String;

    move-result-object p3

    xor-int/lit8 p2, p2, 0x1

    .line 385
    invoke-virtual {p1, v0, p3, p2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03ad

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a03b6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 507
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->clearBulletedFieldsToNullOnFocus(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->openDateDialog()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "input_method"

    .line 307
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->addOrUpdateFundingInstrumentFromFormData()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPartialFailure(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Lcom/ebay/common/model/cart/JsonModel;)V
    .locals 3

    .line 349
    invoke-virtual {p2}, Lcom/ebay/common/model/cart/JsonModel;->getErrorId()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/CheckoutError;->mapCheckoutError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutError;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 355
    invoke-virtual {p2}, Lcom/ebay/common/model/cart/JsonModel;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 359
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f120a38

    .line 362
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p2, v2, p1, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/CheckoutError;->shouldAbortOnError()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 v0, 0x1f7

    .line 370
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setResult(I)V

    .line 373
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/checkout/CheckoutError;->getErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 375
    :goto_1
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->toggleProgressView(Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 457
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumberChangeListener:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 458
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 463
    :cond_1
    invoke-super {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 439
    invoke-super {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onResume()V

    .line 441
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 444
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumberChangeListener:Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$IbanNumberChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 445
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 268
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ibanNumber"

    .line 269
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dob"

    .line 270
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cardholderName"

    .line 271
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rememberToggle"

    .line 272
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 319
    :cond_0
    sget-object v0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity$2;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 332
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->directDebit:Lcom/ebay/nautilus/domain/data/DirectDebit;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->updateFormWithDirectDebit(Lcom/ebay/nautilus/domain/data/DirectDebit;)V

    const/4 p1, 0x0

    .line 333
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->toggleProgressView(Z)V

    goto :goto_0

    .line 323
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "fundingInstrumentId"

    .line 324
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->usingExperienceService:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "rememberToggle"

    .line 326
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->rememberSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/4 v0, -0x1

    .line 327
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->setCheckoutResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->finish()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method openDateDialog()V
    .locals 7

    .line 720
    new-instance v0, Lcom/ebay/app/DatePickerDialogFragment$Builder;

    invoke-direct {v0}, Lcom/ebay/app/DatePickerDialogFragment$Builder;-><init>()V

    .line 721
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, -0x12

    .line 723
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const v3, 0x7f0a03ad

    .line 725
    invoke-virtual {p0, v3}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 726
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    .line 727
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 731
    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 732
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 733
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 734
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 735
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 736
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 737
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setYear(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 747
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setMonth(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    .line 748
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->setDay(I)Lcom/ebay/app/DatePickerDialogFragment$Builder;

    :catch_0
    :goto_0
    const-string v1, "input_method"

    .line 752
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 753
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/16 v1, 0x398

    .line 754
    invoke-virtual {v0, v1}, Lcom/ebay/app/DatePickerDialogFragment$Builder;->createFromActivity(I)Lcom/ebay/app/DatePickerDialogFragment;

    move-result-object v0

    .line 755
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dateOfBirthPicker"

    invoke-virtual {v0, v1, v2}, Lcom/ebay/app/DatePickerDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public renderDisabledCell(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public renderErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method requestFocusIfNotMasked(Landroid/widget/TextView;)V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    return-void
.end method

.method protected setDobDetailsText()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->bankFieldDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/DirectDebitFieldDetails;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/DirectDebitFieldDetails;->getBirthdateDisplayInfo()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    .line 230
    invoke-static {p0, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->layoutDobDetails:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startProgress()V
    .locals 0

    return-void
.end method

.method public stopProgress()V
    .locals 0

    return-void
.end method

.method updateFormWithDirectDebit(Lcom/ebay/nautilus/domain/data/DirectDebit;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 597
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/DirectDebit;->internationalBankAccountNumber:Lcom/ebay/nautilus/domain/data/DirectDebit$Iban;

    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->ibanNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/DirectDebit$Iban;->cardNumberLastFour:Ljava/lang/String;

    const/16 v2, 0x16

    .line 601
    invoke-static {v0, v2}, Lcom/ebay/nautilus/domain/data/DirectDebit;->getMaskedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->dob:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/DirectDebit;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/DirectDebitActivity;->bankAccountName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/DirectDebit;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
