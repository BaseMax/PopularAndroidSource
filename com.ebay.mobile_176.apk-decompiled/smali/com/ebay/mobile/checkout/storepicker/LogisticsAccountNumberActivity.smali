.class public Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;
.super Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;
.source "LogisticsAccountNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/ebay/mobile/checkout/xoneor/CheckoutProgressStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NUMBER_VALID:Ljava/lang/String; = "account_number_valid"

.field public static final CHECKOUT_ERROR:Ljava/lang/String; = "checkout_error"

.field public static final EXTRA_ACCOUNT_NUMBER:Ljava/lang/String; = "extra_account_number"

.field public static final EXTRA_IS_ACCOUNT_NUMBER_OPTIONAL:Ljava/lang/String; = "extra_is_account_number_optional"

.field public static final EXTRA_PROVIDER_ID:Ljava/lang/String; = "extra_provider_id"

.field public static final EXTRA_VALIDATED_ACCOUNT_NUMBER:Ljava/lang/String; = "extra_validated_account_number"


# instance fields
.field private accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field private checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

.field private contentContainer:Landroid/widget/LinearLayout;

.field private errorContainer:Landroid/widget/LinearLayout;

.field private isAccountBeingValidated:Z

.field private isAccountNumberOptional:Z

.field private isAccountNumberValid:Z

.field private layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

.field private progressContainer:Landroid/widget/LinearLayout;

.field private providerId:Ljava/lang/String;

.field private savedAccountNumber:Ljava/lang/String;

.field private tempAccountNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;-><init>()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberValid:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Lcom/ebay/nautilus/domain/content/Content;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumberValidated(Lcom/ebay/nautilus/domain/content/Content;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountBeingValidated:Z

    return p1
.end method

.method private accountNumberValidated(Lcom/ebay/nautilus/domain/content/Content;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 335
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;

    const/4 v1, 0x0

    .line 336
    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 338
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "network"

    .line 339
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object v3

    invoke-interface {v3}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    new-instance p1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 342
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstError()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p1

    .line 343
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->severity:Ljava/lang/String;

    .line 344
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;->getShortMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    .line 345
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 346
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->renderError()V

    goto :goto_0

    .line 348
    :cond_1
    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/net/api/experience/storepicker/StorePickerAccountNumberValidationResponse$AccountNumberValidationPayLoad;->validAccount:Z

    if-nez p1, :cond_2

    .line 350
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberValid:Z

    .line 351
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 352
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f1210b2

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 353
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 354
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 365
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->stopProgress()V

    return-void

    .line 358
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "extra_validated_account_number"

    .line 359
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 360
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->setResult(ILandroid/content/Intent;)V

    .line 361
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->finish()V

    return-void
.end method

.method private renderError()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->errorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->errorContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderError(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;Z)V

    return-void
.end method

.method private validateAccountNumber(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountBeingValidated:Z

    .line 185
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 186
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->startProgress()V

    .line 187
    new-instance v0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentUser()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;-><init>(Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;Lcom/ebay/nautilus/domain/app/Authentication;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 188
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity$ValidateAccountNumberLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public hideContent()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0512

    .line 72
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->showBackButton()V

    const v0, 0x7f1210b1

    .line 74
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->setTitle(I)V

    const v0, 0x7f0a0cb4

    .line 76
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->progressContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a14a0

    .line 77
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a05f3

    .line 78
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->errorContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03da

    .line 80
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a03dc

    .line 81
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a03db

    .line 82
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, p0}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p1, :cond_1

    const-string/jumbo v1, "temp_account_number"

    .line 89
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    const-string v1, "account_number_valid"

    .line 90
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberValid:Z

    const-string v1, "checkout_error"

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    const-string v1, "is_account_number_being_validated"

    .line 92
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountBeingValidated:Z

    .line 93
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    if-eqz p1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->renderError()V

    goto :goto_0

    .line 95
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberValid:Z

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 98
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f1210b2

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 102
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_account_number"

    .line 103
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->savedAccountNumber:Ljava/lang/String;

    const-string v1, "extra_provider_id"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->providerId:Ljava/lang/String;

    const-string v1, "extra_is_account_number_optional"

    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    .line 106
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 108
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    if-eqz p1, :cond_2

    .line 110
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f1210b5

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const p1, 0x7f1210b3

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->layoutAccountNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f1210b6

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    const p1, 0x7f1210b4

    .line 116
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->savedAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->savedAccountNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_3
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountBeingValidated:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->providerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->validateAccountNumber(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 146
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 245
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_0

    .line 246
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 248
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 251
    iget-object p2, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->providerId:Ljava/lang/String;

    iget-object p3, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->validateAccountNumber(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_2
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 255
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->setResult(I)V

    .line 256
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->finish()V

    goto :goto_1

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Lcom/ebay/mobile/util/Util;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 2

    .line 161
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->savedAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->savedAccountNumber:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 169
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->providerId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->validateAccountNumber(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    if-eqz p1, :cond_3

    const/4 p1, -0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->setResult(I)V

    .line 174
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->finish()V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 152
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    const v1, 0x7f0a03ba

    invoke-virtual {p0, p1, v1, v0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->enableMenuItem(Landroid/view/Menu;IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "temp_account_number"

    .line 137
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "account_number_valid"

    .line 138
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberValid:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "checkout_error"

    .line 139
    iget-object v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->checkoutError:Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "is_account_number_being_validated"

    .line 140
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountBeingValidated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    .line 225
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->isAccountNumberOptional:Z

    if-nez p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->tempAccountNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const p2, 0x7f0a03ba

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 228
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->enableMenuItem(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 230
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->enableMenuItem(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startProgress()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->progressContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->progressContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->hideContent()V

    return-void
.end method

.method public stopProgress()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->progressContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->progressContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/ebay/mobile/checkout/storepicker/LogisticsAccountNumberActivity;->contentContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
