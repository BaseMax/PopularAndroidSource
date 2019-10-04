.class public Lcom/ebay/mobile/checkout/prox/CreditCardActivity;
.super Lcom/ebay/mobile/checkout/BaseCheckoutActivity;
.source "CreditCardActivity.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;,
        Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;,
        Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;,
        Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CreditTextWatcher;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_FUNDING_INSTRUMENT_ID:Ljava/lang/String; = "fundingInstrumentId"

.field public static final EXTRA_INSTRUMENT_DETAILS:Ljava/lang/String; = "instrumentDetails"

.field public static final EXTRA_REMEMBER_TOGGLE:Ljava/lang/String; = "rememberToggle"


# instance fields
.field private addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

.field private contentContainer:Landroid/view/View;

.field protected final dialogManager:Lcom/ebay/common/view/util/DialogManager;

.field private grayscaleFilter:Landroid/graphics/ColorFilter;

.field private iconAmex:Landroid/widget/ImageView;

.field private iconDiscover:Landroid/widget/ImageView;

.field private iconLayout:Landroid/widget/LinearLayout;

.field private iconMaestro:Landroid/widget/ImageView;

.field private iconMasterCard:Landroid/widget/ImageView;

.field private iconPostePay:Landroid/widget/ImageView;

.field private iconVisa:Landroid/widget/ImageView;

.field private inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputName:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputRemember:Landroidx/appcompat/widget/SwitchCompat;

.field private instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

.field private layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutName:Lcom/google/android/material/textfield/TextInputLayout;

.field private linkRemember:Landroid/widget/TextView;

.field private listenerCardNumber:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;

.field private listenerCvv:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;

.field private listenerExpiration:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;

.field private progressContainer:Landroid/view/View;

.field private usingExperienceService:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;-><init>()V

    .line 111
    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/view/util/DialogManager;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method private addFundingInstrumentFromFormData()V
    .locals 4

    .line 434
    new-instance v0, Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/CreditCard;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/CreditCard;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->cardNumber:Ljava/lang/String;

    .line 437
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->cardNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->type:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    .line 438
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireMonth:I

    .line 439
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    iput v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireYear:I

    .line 440
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->cvvNumber:Ljava/lang/String;

    .line 441
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->cvvNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->MAESTRO:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->type:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "012"

    .line 442
    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->cvvNumber:Ljava/lang/String;

    .line 443
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    .line 445
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/BillingAddress;->setFirstLastNameFromFullNameString(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->apiAddCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V

    return-void
.end method

.method private getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;
    .locals 3

    .line 473
    new-instance v0, Lcom/ebay/nautilus/domain/data/BillingAddress;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/BillingAddress;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getFisAddress()Lcom/ebay/nautilus/domain/data/address/AddressFields;

    move-result-object v1

    .line 476
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->country:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->countryCode:Ljava/lang/String;

    .line 477
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street1:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress:Ljava/lang/String;

    .line 478
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street2:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress2:Ljava/lang/String;

    .line 479
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->city:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->city:Ljava/lang/String;

    .line 480
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->stateOrProvince:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->state:Ljava/lang/String;

    .line 481
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->postalCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->postalCode:Ljava/lang/String;

    .line 482
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/address/AddressFields;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/BillingAddress;->phone:Ljava/lang/String;

    return-object v0
.end method

.method private isNotValidCardNumber(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Invalid Credit Card Number"

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Credit Card Number is invalid: cardNum.length:\\d+ expecting:\\d+"

    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private maskForScreenShare()V
    .locals 2

    .line 687
    invoke-static {}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->getInstance()Lcom/ebay/mobile/screenshare/ScreenShareUtil;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    .line 689
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    .line 690
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    .line 691
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/screenshare/ScreenShareUtil;->addMaskView(Landroid/view/View;)V

    return-void
.end method

.method private updateFormWithCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CreditCard;->getMaskedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard;->renderExpirationDate(Lcom/ebay/nautilus/domain/data/CreditCard;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CreditCard;->getMaskedCvv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateAddressWithCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V

    .line 504
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/CreditCard;->type:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setCurrentCardType(Lcom/ebay/nautilus/domain/data/CreditCard$Type;)V

    :cond_0
    return-void
.end method

.method private updateFundingInstrumentFromFormData()V
    .locals 4

    .line 451
    new-instance v0, Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/CreditCard;-><init>()V

    .line 453
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireMonth:I

    .line 454
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v1, v1, 0x7d0

    iput v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireYear:I

    .line 455
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getBillingAddressFromFormData()Lcom/ebay/nautilus/domain/data/BillingAddress;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    .line 457
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/BillingAddress;->setFirstLastNameFromFullNameString(Ljava/lang/String;)V

    .line 459
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/BillingAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/CreditCard;->accountHolderName:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireYear:I

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    iget v2, v2, Lcom/ebay/nautilus/domain/data/CreditCard;->expireYear:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/ebay/nautilus/domain/data/CreditCard;->expireMonth:I

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    iget v2, v2, Lcom/ebay/nautilus/domain/data/CreditCard;->expireMonth:I

    if-ne v1, v2, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->finish()V

    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->apiUpdateCreditCard(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/CreditCard;)V

    return-void
.end method

.method private validateForm(Z)Z
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 340
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object p1

    .line 351
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->cvvLength()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 353
    sget-object v2, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->MAESTRO:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->UNKNOWN:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    if-eq p1, v2, :cond_0

    .line 355
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 356
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f120a40

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->hasFullLength(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 365
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 366
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f120a42

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 372
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 373
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f1210c7

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 377
    :cond_4
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->validateFisAddress()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    const p1, 0x7f0a05f3

    .line 381
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 382
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-nez v0, :cond_6

    const v1, 0x7f12078a

    .line 384
    invoke-static {p0, p1, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderAlert(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    :cond_6
    return v0
.end method


# virtual methods
.method addOrUpdateFundingInstrumentFromFormData()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    .line 418
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 420
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->updateFundingInstrumentFromFormData()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 426
    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->validateForm(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addFundingInstrumentFromFormData()V

    :cond_2
    return-void
.end method

.method public checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x0

    if-nez p2, :cond_0

    return p1

    .line 974
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->stopProgress()V

    .line 979
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->hideContent()V

    .line 981
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p2

    .line 982
    iget-object p3, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getFirstMessage()Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->getSafeLongMessage(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/kernel/content/ResultStatus$Message;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v1, p2, v0}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return p1

    :cond_1
    return v0
.end method

.method clearBulletedFieldsToNullOnFocus(Landroid/view/View;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0333

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a031f

    if-ne p1, v0, :cond_1

    .line 401
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "CreditCard"

    return-object v0
.end method

.method public hideContent()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 116
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d00bb

    .line 118
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->initializeProgressViews()V

    .line 123
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "usingExperienceService"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->usingExperienceService:Z

    const-string v1, "instrumentDetails"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const v1, 0x7f0a0cb4

    .line 128
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->progressContainer:Landroid/view/View;

    const v1, 0x7f0a14a0

    .line 129
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    .line 132
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v3, 0x0

    .line 133
    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 134
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v3, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    const v1, 0x7f0a0334

    .line 137
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a0324

    .line 138
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a0320

    .line 139
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a032e

    .line 140
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    const v1, 0x7f0a0333

    .line 143
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a0323

    .line 144
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a031f

    .line 145
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a032d

    .line 146
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f0a0337

    .line 147
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputRemember:Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0a049d

    .line 150
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a04a2

    .line 151
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    const v1, 0x7f0a0499

    .line 152
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    const v1, 0x7f0a049c

    .line 153
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    const v1, 0x7f0a04a0

    .line 154
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    const v1, 0x7f0a049f

    .line 155
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    const v1, 0x7f0a04a1

    .line 156
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    .line 160
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->usingExperienceService:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Lcom/ebay/nautilus/domain/data/address/Address;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/data/address/Address;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;)V

    goto :goto_0

    :cond_0
    const-string v1, "address"

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/address/Address;

    .line 167
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v3, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 168
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    if-nez v1, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 171
    new-instance v3, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-direct {v3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;-><init>()V

    iput-object v3, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    .line 172
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 173
    new-instance v4, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-direct {v4, v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;-><init>(Lcom/ebay/nautilus/domain/data/address/Address;)V

    const-string v0, "addressMeta"

    .line 174
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "usingExperienceService"

    .line 175
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v0, v3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0a0096

    .line 177
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addressEditFragment:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 178
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 182
    :cond_1
    new-instance v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;-><init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCardNumber:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;

    .line 183
    new-instance v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;-><init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerExpiration:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;

    .line 184
    new-instance v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {v0, p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;-><init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;Lcom/google/android/material/textfield/TextInputLayout;)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCvv:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;

    .line 187
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->usingExperienceService:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz v0, :cond_7

    .line 189
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v1, "VISA"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v2, "AM_EX"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v2, "DISCOVER"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 194
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v2, "MASTERCARD"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v2, "MAESTRO"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    const-string v2, "POSTEPAY"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->isCardTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 200
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    :cond_7
    sget-object v0, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->UNKNOWN:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setCurrentCardType(Lcom/ebay/nautilus/domain/data/CreditCard$Type;)V

    if-eqz p1, :cond_8

    .line 206
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "inputCardNumber"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "expiration"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "cvc"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "inputName"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputRemember:Landroidx/appcompat/widget/SwitchCompat;

    const-string/jumbo v1, "rememberToggle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_1

    .line 212
    :cond_8
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-eqz p1, :cond_9

    .line 214
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputRemember:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->rememberInstrument:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 215
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->billingAddress:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;

    if-eqz p1, :cond_9

    .line 216
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->contactName:Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 218
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/BillingAddressInfo;->addressInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Address;->value:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->contactName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setupUi()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f0a03ba

    const v1, 0x7f12040f

    .line 268
    invoke-virtual {p0, p1, v0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addMenuItem(Landroid/view/Menu;II)Z

    move-result p1

    return p1
.end method

.method public onError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;ZLjava/io/IOException;)V
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->toggleProgressView(Z)V

    .line 608
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    const v0, 0x7f120209

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {p0, p2, p3}, Lcom/ebay/mobile/checkout/CheckoutError;->getConnectionError(Landroid/content/Context;ZLjava/io/IOException;)Ljava/lang/String;

    move-result-object p3

    xor-int/lit8 p2, p2, 0x1

    .line 608
    invoke-virtual {p1, v0, p3, p2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onMenuDoneClicked(Landroid/view/MenuItem;)Z
    .locals 2

    const-string p1, "input_method"

    .line 274
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 275
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 276
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->addOrUpdateFundingInstrumentFromFormData()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPartialFailure(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Lcom/ebay/common/model/cart/JsonModel;)V
    .locals 3

    .line 545
    invoke-virtual {p2}, Lcom/ebay/common/model/cart/JsonModel;->getErrorId()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-virtual {p2}, Lcom/ebay/common/model/cart/JsonModel;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "100"

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v1, "Unknown credit card type."

    .line 550
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->isNotValidCardNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    :cond_0
    invoke-direct {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->isNotValidCardNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 553
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f120a3e

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    const p2, 0x7f120a3d

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f0a05f3

    .line 557
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 558
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const p2, 0x7f12078a

    .line 559
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->renderAlert(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    goto :goto_2

    .line 564
    :cond_2
    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/CheckoutError;->mapCheckoutError(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;Ljava/lang/String;)Lcom/ebay/mobile/checkout/CheckoutError;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    if-eqz p2, :cond_3

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    const p1, 0x7f120a38

    .line 573
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 575
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, v1, p2, v2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 579
    :cond_5
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/CheckoutError;->shouldAbortOnError()Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 v0, 0x1f7

    .line 581
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setResult(I)V

    .line 584
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, p0}, Lcom/ebay/mobile/checkout/CheckoutError;->getErrorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 587
    :goto_2
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->toggleProgressView(Z)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCardNumber:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerExpiration:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCvv:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 317
    :cond_2
    invoke-super {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 226
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->showBackButton()V

    .line 230
    new-instance v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$1;-><init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)V

    .line 241
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 242
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 243
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    if-nez p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "fundingInstrumentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "TC_"

    .line 249
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->apiGetFundingInstrument(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 283
    invoke-super {p0}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onResume()V

    .line 286
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCardNumber:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CardNumberChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerExpiration:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$ExpirationChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->listenerCvv:Lcom/ebay/mobile/checkout/prox/CreditCardActivity$CvvChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    :cond_2
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Landroid/content/Intent;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 257
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "inputCardNumber"

    .line 258
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expiration"

    .line 259
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cvc"

    .line 260
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "inputName"

    .line 261
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rememberToggle"

    .line 262
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputRemember:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSuccess(Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;)V
    .locals 2

    .line 511
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 514
    :cond_0
    sget-object v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$3;->$SwitchMap$com$ebay$mobile$checkout$BaseCheckoutActivity$Operation:[I

    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/BaseCheckoutActivity$Operation;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 528
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->creditCard:Lcom/ebay/nautilus/domain/data/CreditCard;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->updateFormWithCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V

    const/4 p1, 0x0

    .line 529
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->toggleProgressView(Z)V

    goto :goto_0

    .line 519
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "fundingInstrumentId"

    .line 520
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->temporaryFundingInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "rememberToggle"

    .line 521
    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputRemember:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 522
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->setCheckoutResult(ILandroid/content/Intent;)V

    .line 523
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->finish()V

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

.method requestFocusIfNotMasked(Landroid/widget/EditText;)V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2022"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 964
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected setCurrentCardType(Lcom/ebay/nautilus/domain/data/CreditCard$Type;)V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 701
    sget-object v0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$3;->$SwitchMap$com$ebay$nautilus$domain$data$CreditCard$Type:[I

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xff

    const/16 v1, 0x50

    packed-switch p1, :pswitch_data_0

    .line 774
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 775
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 776
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 777
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 778
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 779
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 780
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 781
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 782
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 783
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 784
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 785
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0

    .line 760
    :pswitch_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 761
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 762
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 763
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 764
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 765
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 766
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 767
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 768
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 769
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 770
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 771
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0

    .line 746
    :pswitch_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 747
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 748
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 749
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 750
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 751
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 752
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 753
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 754
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 755
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 756
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 757
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 733
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 734
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 735
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 736
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 737
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 738
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 739
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 740
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 741
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 742
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 743
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/16 :goto_0

    .line 718
    :pswitch_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 719
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 720
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 721
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 722
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 723
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 724
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 725
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 726
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 727
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 728
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 729
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto :goto_0

    .line 704
    :pswitch_4
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 705
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconAmex:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 706
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 707
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconDiscover:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 708
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 709
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMasterCard:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 710
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 711
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconMaestro:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 712
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->grayscaleFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 713
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconPostePay:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 714
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 715
    iget-object p1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->iconVisa:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setupUi()V
    .locals 5

    .line 618
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->usingExperienceService:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->cardFieldDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;

    if-eqz v0, :cond_4

    const v1, 0x7f1210e4

    .line 624
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    if-eqz v2, :cond_1

    .line 627
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCardNumber:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCardNumber:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 630
    :cond_1
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->expirationDate:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExpirationDate;

    if-eqz v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutExpiration:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->expirationDate:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExpirationDate;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExpirationDate;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputExpiration:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->expirationDate:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExpirationDate;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/ExpirationDate;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 635
    :cond_2
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->securityCode:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    if-eqz v2, :cond_3

    .line 637
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutCvv:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->securityCode:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 638
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputCvv:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->securityCode:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 640
    :cond_3
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardHolderName:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    if-eqz v2, :cond_4

    .line 642
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardHolderName:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 643
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/CardFieldDetails;->cardHolderName:Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/InputField;->label:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 647
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->disclaimerText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0a0930

    .line 648
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->disclaimerText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v0, 0x7f0a03cb

    .line 651
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->ACCEPT_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_6

    const v2, 0x7f0a0d86

    .line 657
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 658
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->instrumentDetails:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;->VIEW_AGREEMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/InstrumentDetails;->getAction(Lcom/ebay/nautilus/domain/data/experience/checkout/XoActionType;)Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    move-result-object v0

    if-eqz v0, :cond_7

    const v2, 0x7f0a0d87

    .line 664
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    .line 665
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v2, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    const v3, 0x7f0a123f

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 667
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->linkRemember:Landroid/widget/TextView;

    new-instance v1, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity$2;-><init>(Lcom/ebay/mobile/checkout/prox/CreditCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    :cond_7
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->maskForScreenShare()V

    return-void

    :cond_8
    :goto_0
    return-void
.end method

.method public startProgress()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->progressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->progressContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public stopProgress()V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->progressContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->progressContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->contentContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 996
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasErrors()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 998
    const-class v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;

    if-eqz v1, :cond_2

    .line 1001
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/ErrorsModule;->errors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;

    .line 1002
    new-instance v2, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    const-string v3, "PayPalError"

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    const-string v3, "errCode"

    iget-wide v4, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->errorId:J

    .line 1003
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    .line 1004
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 1006
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->subMessages:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->subMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1007
    :goto_0
    iget-object v3, p0, Lcom/ebay/mobile/checkout/prox/CreditCardActivity;->dialogManager:Lcom/ebay/common/view/util/DialogManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/error/CheckoutError;->title:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->hasFatalError()Z

    move-result p1

    invoke-virtual {v3, v1, v2, p1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
