.class public Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "AddressEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;,
        Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDRESS_FIELDS_MODULE:Ljava/lang/String; = "addressFieldsModule"

.field public static final EXTRA_ADDRESS_ID:Ljava/lang/String; = "addressId"

.field public static final EXTRA_ADDRESS_META:Ljava/lang/String; = "addressMeta"

.field public static final EXTRA_ADDRESS_TYPE:Ljava/lang/String; = "addressType"

.field public static final EXTRA_ORIG_ADDRESS_META:Ljava/lang/String; = "origAddressMeta"

.field public static final RESULT_SAVE_ADDRESS:I = 0x1


# instance fields
.field private addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

.field private disclosureMessage:Landroid/widget/TextView;

.field private editAddressId:Ljava/lang/String;

.field private editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

.field private editAddressType:Ljava/lang/String;

.field private inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputCity:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputName:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

.field private inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

.field private inputState:Lcom/google/android/material/textfield/TextInputEditText;

.field private isEditing:Z

.field private isEditingAddressPrimary:Z

.field private lastKnownGoodPosition:I

.field private layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutCard:Landroid/view/ViewGroup;

.field private layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutForm:Landroid/view/ViewGroup;

.field private layoutName:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

.field private layoutPrimary:Landroid/view/ViewGroup;

.field private layoutState:Lcom/google/android/material/textfield/TextInputLayout;

.field private origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

.field private stateOrProvinceSpinner:Landroid/widget/Spinner;

.field useExperienceService:Z

.field private xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

.field private xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

.field private xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->lastKnownGoodPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->lastKnownGoodPosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;I)I
    .locals 0

    .line 76
    iput p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->lastKnownGoodPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)Landroid/widget/Spinner;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method private clearErrors()V
    .locals 2

    .line 1039
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1040
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1041
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1042
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1043
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1044
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1045
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 1046
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method

.method private createDefaultAddressFieldsModuleForLegacyServices()V
    .locals 2

    .line 1051
    new-instance v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    .line 1052
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    .line 1053
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1054
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1055
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1056
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1057
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    .line 1058
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1059
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    .line 1060
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;-><init>()V

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->makePrimary:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 1061
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    .line 1062
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->makePrimary:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iput-boolean v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    .line 1064
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->setValue(Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->contactName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1068
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->addressLine1:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->addressLine2:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1072
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->value:Ljava/lang/String;

    .line 1073
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getDisplayPhoneNumber(Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;)Ljava/lang/String;
    .locals 3

    .line 987
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 989
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 990
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 991
    invoke-static {p1, v0}, Lcom/ebay/mobile/util/EbayPhoneNumberUtil;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 992
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->fields:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->fields:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    .line 996
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 998
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/EbayPhoneNumberUtil;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 997
    invoke-static {p1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v1
.end method

.method private getSelectedStateOrProvince()I
    .locals 2

    .line 1276
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1279
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_3

    .line 1281
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1283
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    .line 1284
    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selected:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    return v0

    .line 1291
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private handleAddressChoice(Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "selectedRecommendation"

    .line 1192
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 1195
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditing:Z

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :goto_0
    return-void
.end method

.method private handleCountrySelection(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "extraCountry"

    .line 1141
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/EbayCountry;

    if-nez p1, :cond_0

    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1145
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1154
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 1157
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 1158
    iput v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->lastKnownGoodPosition:I

    .line 1159
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setCityStateAndCountryUi()V

    return-void

    .line 1165
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->value:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1168
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    .line 1171
    iget-boolean v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->selected:Z

    if-eqz v4, :cond_4

    .line 1172
    iput-boolean v2, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->selected:Z

    goto :goto_0

    .line 1175
    :cond_4
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->countryId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    .line 1177
    iput-boolean v4, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->selected:Z

    .line 1178
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->countryId:Ljava/lang/String;

    iput-object v3, v4, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 1179
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v1, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 1180
    iput v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->lastKnownGoodPosition:I

    goto :goto_0

    .line 1186
    :cond_5
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->startProgress()V

    .line 1187
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {p1, v0, v1, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddressFields(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method private hasCity()Z
    .locals 1

    .line 1214
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    if-nez v0, :cond_0

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

.method private hasFreeTextStateInput()Z
    .locals 3

    .line 1258
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->type:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private hasStateOrProvinces()Z
    .locals 5

    .line 1220
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1224
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    if-eqz v0, :cond_2

    .line 1227
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->type:Ljava/lang/String;

    const-string v3, "list"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1228
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->type:Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 1229
    :cond_0
    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->hidden:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->countryHasStatesOrProvinces(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private hasUserEnteredStateOrProvince()Z
    .locals 3

    .line 714
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->type:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private openKeyboard(Landroid/view/View;)V
    .locals 2

    .line 1203
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    .line 1204
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private renderErrors()Z
    .locals 3

    .line 542
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->clearErrors()V

    .line 544
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 546
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 583
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 590
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    .line 595
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 597
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 598
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method private setCityStateAndCountryUi()V
    .locals 8

    .line 725
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 727
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->value:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 729
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->value:Ljava/util/List;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 734
    invoke-static {v0, v3}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getCountryById(Ljava/util/List;Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 736
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/Country;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 742
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryWithLanguageName(Landroid/content/res/Resources;Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const-string v0, "PAY_UPON_INVOICE_BILLING"

    .line 746
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v4, 0x7f0a0093

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v0, v3}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->renderDisabledCell(Landroid/view/ViewGroup;)V

    .line 749
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setClickable(Z)V

    .line 750
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setFocusable(Z)V

    .line 751
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setClickable(Z)V

    .line 752
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusable(Z)V

    .line 753
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasCity()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 761
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result v0

    const v3, 0x7f0a00ae

    if-eqz v0, :cond_a

    .line 764
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 767
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_9

    .line 771
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    .line 772
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasUserEnteredStateOrProvince()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 774
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 775
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 777
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 780
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v5}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 781
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    goto :goto_4

    .line 785
    :cond_5
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 786
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 788
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->label:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setInputType(I)V

    .line 790
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setFocusableInTouchMode(Z)V

    .line 792
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    .line 793
    new-instance v5, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;

    .line 794
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0d050c

    invoke-direct {v5, p0, v6, v7, v3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$StateProvinceAdapter;-><init>(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 795
    iget-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 796
    iget-object v6, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 801
    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    iget-boolean v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selectable:Z

    if-eqz v5, :cond_6

    .line 803
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v5, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->selected:Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 805
    :cond_6
    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v5, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x0

    .line 807
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_8

    .line 809
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    .line 810
    iget-boolean v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->selected:Z

    if-eqz v5, :cond_7

    .line 812
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 818
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->label:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 824
    :cond_9
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 825
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCard:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    invoke-static {v1, v3, v0, v5}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->updateInputFormForCountry(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/nautilus/domain/EbayCountry;Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f120303

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 837
    :goto_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    if-eqz v0, :cond_b

    .line 838
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    goto :goto_7

    .line 841
    :cond_b
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_c

    .line 842
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 844
    :cond_c
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->getPostalCodeLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 845
    :goto_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 850
    :goto_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCard:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->reversePostalCode(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method private setResultAndFinishActivity(I)V
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 859
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private setupInputs()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

    .line 289
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    .line 290
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a009c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 291
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    .line 292
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a008d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    .line 294
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00ac

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    .line 295
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    .line 296
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    .line 298
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->disclosureMessage:Landroid/widget/TextView;

    .line 301
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupLayouts()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPrimary:Landroid/view/ViewGroup;

    .line 308
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCountry:Lcom/google/android/material/textfield/TextInputLayout;

    .line 309
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a009d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 310
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

    .line 311
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

    .line 312
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    .line 313
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutState:Lcom/google/android/material/textfield/TextInputLayout;

    .line 314
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    .line 315
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method

.method private setupRootLayouts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d00b5

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x7f0a0098

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const p2, 0x7f0a0088

    .line 282
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCard:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private setupStateSpinner()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    .line 180
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$1;-><init>(Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private updateAddressFieldsModuleWithFormData()V
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-nez v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->createDefaultAddressFieldsModuleForLegacyServices()V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCountry:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->setValue(Ljava/lang/String;)V

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    .line 1087
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_3

    .line 1088
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_4

    .line 1090
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    .line 1091
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_5

    .line 1092
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    .line 1093
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    if-eqz v0, :cond_6

    .line 1094
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->setValue(Ljava/lang/String;)V

    .line 1095
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_7

    .line 1096
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    .line 1097
    :cond_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    if-eqz v0, :cond_8

    .line 1098
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->setValue(Ljava/lang/String;)V

    .line 1099
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->makePrimary:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    if-eqz v0, :cond_9

    .line 1100
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->makePrimary:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->setValue(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private updateUi()V
    .locals 5

    .line 608
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_a

    .line 611
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->valueOrEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutName:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputName:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f1210d1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 626
    :goto_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress1:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f1210d3

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 636
    :goto_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 638
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutAddress2:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 639
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f1210d4

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 645
    :goto_3
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 647
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutCity:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 652
    :cond_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f1210cb

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 654
    :goto_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 656
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPostalCode:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 661
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f12111c

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 663
    :goto_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 665
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPhone:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 670
    :cond_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    const v1, 0x7f1210d2

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 676
    :goto_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getDisplayPhoneNumber(Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->makePrimary:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_7

    .line 681
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    if-nez v3, :cond_7

    .line 683
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 684
    iget-object v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->label:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/SwitchCompat;->setHint(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v4, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditingAddressPrimary:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/SwitchCompat;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPrimary:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 687
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPrimary:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    .line 690
    :cond_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutPrimary:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 692
    :goto_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->contactName:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->hidden:Z

    const v3, 0x7f0a009e

    if-eqz v0, :cond_8

    .line 693
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 695
    :cond_8
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 698
    :goto_8
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setCityStateAndCountryUi()V

    .line 700
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->disclosureMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_9

    .line 702
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->disclosureMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->disclosureMessage:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v2, v3}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->disclosureMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 706
    :cond_9
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->disclosureMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    :goto_9
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->renderErrors()Z

    :cond_a
    return-void
.end method


# virtual methods
.method closeKeyboard()V
    .locals 2

    .line 1209
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/Util;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public getFisAddress()Lcom/ebay/nautilus/domain/data/address/AddressFields;
    .locals 3

    .line 1014
    new-instance v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/address/AddressFields;-><init>()V

    .line 1016
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->country:Ljava/lang/String;

    .line 1017
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress1:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street1:Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputAddress2:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->street2:Ljava/lang/String;

    .line 1019
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputCity:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->city:Ljava/lang/String;

    .line 1021
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getSelectedStateOrProvince()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1022
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    .line 1024
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getSelectedStateOrProvince()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/State;->stateId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->stateOrProvince:Ljava/lang/String;

    goto :goto_0

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->stateOrProvince:Ljava/lang/String;

    .line 1028
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPostalCode:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->postalCode:Ljava/lang/String;

    .line 1030
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1031
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputPhone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/address/AddressFields;->phone:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 321
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 323
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    .line 324
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->startProgress()V

    .line 329
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-nez p1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-nez p1, :cond_1

    .line 333
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->createDefaultAddressFieldsModuleForLegacyServices()V

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateUi()V

    .line 336
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    if-ne p2, v0, :cond_0

    .line 424
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->handleAddressChoice(Landroid/content/Intent;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 418
    invoke-direct {p0, p3}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->handleCountrySelection(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
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

    .line 472
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_0

    .line 473
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 475
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 476
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    .line 477
    invoke-interface {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

    return-void

    .line 485
    :cond_1
    const-class p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    .line 486
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz p1, :cond_3

    .line 488
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    if-nez p1, :cond_2

    .line 489
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 491
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateUi()V

    .line 497
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

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

    .line 505
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_0

    .line 506
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 508
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 509
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    .line 510
    invoke-interface {p1, v0}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->validateXoSession(Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 512
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

    return-void

    .line 516
    :cond_1
    const-class p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    .line 517
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->renderErrors()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 519
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {p1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->stopProgress()V

    return-void

    .line 525
    :cond_2
    const-class p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    .line 526
    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;

    if-eqz p1, :cond_3

    .line 527
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/ShippingAddressesModule;->recommendation:Lcom/ebay/nautilus/domain/data/experience/checkout/address/Recommendation;

    if-eqz p2, :cond_3

    .line 529
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/ebay/mobile/checkout/xoneor/AddressChoiceActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "addressRecommendations"

    .line 530
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 531
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const/4 p1, -0x1

    .line 536
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setResultAndFinishActivity(I)V

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

    .line 463
    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez p2, :cond_0

    .line 464
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0091

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00ac

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasFreeTextStateInput()Z

    move-result p1

    if-nez p1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->closeKeyboard()V

    .line 385
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->stateOrProvinceSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->closeKeyboard()V

    .line 376
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/ebay/mobile/activities/PreferredCountryActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extraCountry"

    .line 377
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 134
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "xoParams"

    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    const-string v1, "addressType"

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    const-string v1, "addressId"

    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressId:Ljava/lang/String;

    const-string v1, "addressMeta"

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    const-string/jumbo v1, "usingExperienceService"

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    .line 143
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditing:Z

    const-string v1, "addressFieldsModule"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz p1, :cond_0

    const-string v0, "origAddressMeta"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    const-string v0, "addressMeta"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    const-string v0, "addressFieldsModule"

    .line 150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    const-string v0, "isEditingAddressPrimary"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditingAddressPrimary:Z

    .line 154
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 157
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->initDataManagers()V

    goto :goto_1

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setupRootLayouts(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object p1

    .line 169
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setupLayouts()V

    .line 170
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setupInputs()V

    .line 171
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setupStateSpinner()V

    return-object p1
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->openKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 406
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 407
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoParams:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 342
    invoke-super {p0}, Lcom/ebay/mobile/activities/BaseFragment;->onPause()V

    .line 343
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->closeKeyboard()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 352
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 356
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v0, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    :cond_0
    const-string v0, "addressMeta"

    .line 363
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "origAddressMeta"

    .line 364
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "addressFieldsModule"

    .line 365
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "isEditingAddressPrimary"

    .line 366
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditingAddressPrimary:Z

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

    .line 440
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    if-nez v0, :cond_0

    .line 441
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 447
    :cond_1
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 448
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 449
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 452
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddressFields(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 454
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    iget-object p3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {p1, p2, p3, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->getAddressFields(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public updateAddressWithCreditCard(Lcom/ebay/nautilus/domain/data/CreditCard;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 1105
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1108
    :cond_0
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/CreditCard;->billingAddress:Lcom/ebay/nautilus/domain/data/BillingAddress;

    .line 1117
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v0, :cond_4

    .line 1119
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->countryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 1120
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_1

    .line 1121
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->country:Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/CountryField;->value:Ljava/util/List;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setCountryById(Ljava/util/List;Ljava/lang/String;)V

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine1:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1123
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->addressLine2:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->streetAddress2:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->city:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1125
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1126
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-eqz v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->stateOrProvince:Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/StateField;->value:Ljava/util/List;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->state:Ljava/lang/String;

    .line 1128
    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/prox/ProxHelper;->setSelectedStateOrProvince(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1130
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->state:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 1131
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->postalCode:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressField;->value:Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/BillingAddress;->phone:Ljava/lang/String;

    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->value:Ljava/lang/String;

    .line 1133
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateUi()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public validateAndSaveAddress()V
    .locals 4

    .line 870
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->clearErrors()V

    .line 871
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateAddressFieldsModuleWithFormData()V

    .line 876
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v0

    .line 880
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditing:Z

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressId:Ljava/lang/String;

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->addressId:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->addressId:Ljava/lang/String;

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->origAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 886
    invoke-direct {p0, v2}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->setResultAndFinishActivity(I)V

    return-void

    .line 891
    :cond_2
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 892
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/ebay/mobile/util/EbayPhoneNumberUtil;->formatPhoneNumberForApi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    .line 896
    :cond_3
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoneorInterface:Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;

    invoke-interface {v1}, Lcom/ebay/mobile/checkout/xoneor/XoneorInterface;->startProgress()V

    .line 897
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->disableValidation:Ljava/lang/Boolean;

    .line 898
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->isEditing:Z

    if-eqz v1, :cond_4

    .line 899
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->editAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    goto :goto_0

    .line 901
    :cond_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->xoDataManager:Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;->addAddress(Ljava/lang/String;Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager$Observer;)V

    :goto_0
    return-void
.end method

.method public validateFisAddress()Z
    .locals 5

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->clearErrors()V

    .line 915
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->updateAddressFieldsModuleWithFormData()V

    .line 917
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 920
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->getAddressMeta()Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    .line 921
    iget-boolean v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-nez v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iput-object v1, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 924
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->inputState:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    .line 936
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->addressLine1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 937
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STREET1:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_1
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->city:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 939
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_CITY:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->hasStateOrProvinces()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->stateOrProvince:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_STATE_OR_PROVINCE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    :cond_3
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->postalCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 943
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_POSTAL_CODE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_4
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->addressFieldsModule:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressFieldsModule;->phoneNumber:Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;

    iget-boolean v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/PhoneField;->hidden:Z

    if-nez v1, :cond_6

    .line 953
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->useExperienceService:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 954
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_PHONE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 955
    :cond_5
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->phoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->editAddressMeta:Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/address/AddressMeta;->country:Ljava/lang/String;

    .line 956
    invoke-static {v1, v2}, Lcom/ebay/mobile/util/EbayPhoneNumberUtil;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 957
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->BAD_PHONE:Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_9

    .line 963
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;

    .line 965
    iget-object v3, p0, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->layoutForm:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->getResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/textfield/TextInputLayout;

    .line 966
    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment$AddressValidation;->getErrorId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/AddressEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 969
    invoke-virtual {v3, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 970
    invoke-virtual {v3, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    return v0

    :cond_9
    return v2
.end method
