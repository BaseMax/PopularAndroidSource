.class public Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;
.source "TextualEntryViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;


# static fields
.field public static final AUTOFILL_FIRST_NAME:Ljava/lang/String; = "given-name"

.field public static final AUTOFILL_LAST_NAME:Ljava/lang/String; = "family-name"

.field private static final CRASHING_DEVICES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENCY_CODE:Ljava/lang/String; = "CURRENCY_CODE"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field public accessoryText:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private autofillHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

.field private bubbleHelpContent:Ljava/lang/CharSequence;

.field public bubbleHelpContentDescription:Ljava/lang/String;

.field public bubbleHelpDrawable:Landroid/graphics/drawable/Drawable;

.field private bubbleHelpTitle:Ljava/lang/CharSequence;

.field private cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

.field public contentDescription:Ljava/lang/CharSequence;

.field private digits:Ljava/lang/String;

.field private ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

.field private inValidation:Z

.field private inputType:I

.field public isDirty:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isFocusable:Z

.field public isFocusableInTouchMode:Z

.field private layoutHintLabel:Ljava/lang/CharSequence;

.field private mask:Z

.field private maxLength:I

.field private maxLines:I

.field private placeHolderText:Ljava/lang/CharSequence;

.field public selectedDate:Ljava/util/Date;

.field public showAccessoryText:Landroidx/databinding/ObservableInt;

.field private textAppearance:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public textInputValue:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textualEntry:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->CRASHING_DEVICES:Ljava/util/Set;

    .line 94
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->CRASHING_DEVICES:Ljava/util/Set;

    const-string/jumbo v1, "samsung"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-class v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextualEntryViewModel"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry<",
            "*>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const v4, 0x7f040451

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;IIII)V

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;I)V
    .locals 8
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry<",
            "*>;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;",
            "I)V"
        }
    .end annotation

    const v4, 0x7f040451

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    .line 168
    invoke-direct/range {v0 .. v7}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;IIII)V

    return-void
.end method

.method private constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;IIII)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry<",
            "*>;",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;",
            "IIII)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2, p7}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Field;I)V

    .line 119
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    .line 120
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-direct {p1}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->accessoryText:Landroidx/databinding/ObservableField;

    .line 121
    new-instance p1, Landroidx/databinding/ObservableInt;

    const/4 p7, 0x0

    invoke-direct {p1, p7}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->showAccessoryText:Landroidx/databinding/ObservableInt;

    .line 129
    new-instance p1, Landroidx/databinding/ObservableField;

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    .line 132
    sget-object p1, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->UNKNOWN:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isFocusable:Z

    .line 134
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isFocusableInTouchMode:Z

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    const v1, 0x7f0a14c3

    .line 176
    iput v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->id:I

    .line 177
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textualEntry:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;

    .line 178
    iput p4, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textAppearance:I

    .line 179
    iput p5, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    .line 180
    iput p6, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLines:I

    .line 181
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;->getFieldId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->tag:Ljava/lang/Object;

    .line 182
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    .line 184
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 190
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_EXPIRY_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 191
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->formatDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {p2, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 196
    :cond_2
    :goto_0
    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->SECURITY_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_EXPIRY_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    .line 197
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->mask:Z

    .line 199
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 200
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->getInstance()Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;

    move-result-object p1

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->onPropertyChangedCallBack()Landroidx/databinding/Observable$OnPropertyChangedCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/checkout/v2/CreditCardFormDataObservable;->observeCardNumber(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 202
    :cond_5
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REDEEM_AMOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 206
    :try_start_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cleanCurrencyStringAndDigitize(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setRedeemAmountAccessoryText(D)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 210
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_6

    .line 211
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setAccessoryText()V

    goto :goto_2

    .line 217
    :cond_7
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setAccessoryText()V

    :goto_2
    return-void
.end method

.method static synthetic access$002(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/ebay/nautilus/domain/data/CreditCard$Type;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    return-object p1
.end method

.method private formatDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 248
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x7

    .line 249
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatIbanNumber(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 3

    .line 735
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 740
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/shell/util/IbanFormatter;->filterInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/shell/util/IbanFormatter;->formatQuadSpacedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2a

    if-le v1, v2, :cond_1

    const-string v0, "\\s+"

    const-string v1, ""

    .line 745
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x22

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 746
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/shell/util/IbanFormatter;->formatQuadSpacedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    :cond_1
    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->safeSetTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onFocusChange$2(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 910
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->handleFocusChange(Lcom/google/android/material/textfield/TextInputEditText;)V

    return-void
.end method

.method static synthetic lambda$onTextInputEditText$1(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Landroid/view/View;)V
    .locals 0

    .line 630
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method static synthetic lambda$setError$0(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/CharSequence;)V
    .locals 0

    .line 567
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onPropertyChangedCallBack()Landroidx/databinding/Observable$OnPropertyChangedCallback;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 224
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$1;-><init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    return-object v0
.end method

.method public static onTextInputEditText(Lcom/google/android/material/textfield/TextInputEditText;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V
    .locals 2
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxOnTextInputEditText",
            "uxContent"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 627
    iget-object v0, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 628
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getFieldId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->BIRTHDATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    if-ne v0, v1, :cond_1

    .line 630
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$bvF-Koe-Gu0nMMH826huPsf7m3c;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static setError(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/CharSequence;I)V
    .locals 4
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxLayoutErrorMessage",
            "uxLayoutErrorIndex"
        }
    .end annotation

    .line 564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;

    invoke-direct {v1, p0, p1}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$DYOvCpQ5iqPwflbF-FUGRQh0L88;-><init>(Lcom/google/android/material/textfield/TextInputLayout;Ljava/lang/CharSequence;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 569
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    .line 571
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    if-nez p2, :cond_2

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$icsGwARGMcRdkI4ZW466HEZA7xE;

    invoke-direct {p1, p0}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$icsGwARGMcRdkI4ZW466HEZA7xE;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 576
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setFieldViewAttributes(Landroid/content/Context;)V
    .locals 2

    .line 398
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    if-gez v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setInputType()V

    .line 401
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 402
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$4;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$FieldParameterEnum:[I

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    .line 434
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->digits:Ljava/lang/String;

    .line 435
    iput v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b0032

    .line 431
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b0034

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0b0033

    .line 425
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0b0043

    .line 422
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x0

    .line 417
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isFocusable:Z

    .line 418
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isFocusableInTouchMode:Z

    .line 419
    iput v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_5
    const-string v0, "01234567890/"

    .line 413
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->digits:Ljava/lang/String;

    const v0, 0x7f0b0036

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_6
    const-string v0, "01234567890"

    .line 409
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->digits:Ljava/lang/String;

    const v0, 0x7f0b0035

    .line 410
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    goto :goto_0

    :pswitch_7
    const-string v0, "01234567890 "

    .line 405
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->digits:Ljava/lang/String;

    const v0, 0x7f0b0037

    .line 406
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setHintTextWithColorTransparent(Lcom/google/android/material/textfield/TextInputEditText;I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxSetHintTextAppearance"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060206

    .line 591
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 590
    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 593
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 594
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method private setInputType()V
    .locals 2

    .line 441
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 443
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$4;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$FieldParameterEnum:[I

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    .line 473
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x1000

    .line 470
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x2000

    .line 467
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    .line 454
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    .line 451
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private shouldClearText()Z
    .locals 2

    .line 315
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->SECURITY_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ACCOUNT_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private validateCardExpirationDate(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 1

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 779
    :cond_0
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->safeSetTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->hasFullLength(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Expiration;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 784
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MONTH_AND_YEAR_FORMAT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 785
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MONTH_AND_YEAR_FORMAT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 786
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    .line 787
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120a42

    .line 788
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 791
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 793
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    const/16 p2, 0x41

    invoke-virtual {p1, p0, p2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    return-void
.end method

.method private validateCardNumber(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 4

    .line 703
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->fromCardNumber(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    .line 710
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->formattedNumberLength()I

    move-result v1

    .line 711
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->numberLength()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 712
    :cond_1
    sget-object v2, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->CHINAUNIONPAY:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->numberLength()I

    move-result v2

    .line 714
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    const-string v0, " "

    const-string v1, ""

    .line 719
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 720
    invoke-static {p1}, Lcom/ebay/nautilus/domain/data/CreditCard$Number;->formatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 723
    :cond_2
    invoke-virtual {p0, p2, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->safeSetTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private validateSecurityCode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 761
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cardType:Lcom/ebay/nautilus/domain/data/CreditCard$Type;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CreditCard$Type;->cvvLength()I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 764
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    const/16 v0, 0x41

    invoke-virtual {p1, p0, v0}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addCurrencyFormatting(Ljava/lang/String;D)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1174
    :cond_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    .line 1175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1174
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->constructCurrencyString(DLjava/util/Currency;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public afterTextChanged(Landroid/text/Editable;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 4

    .line 644
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputEditText;->hasFocus()Z

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 646
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 648
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inValidation:Z

    if-eqz v1, :cond_1

    return-void

    .line 651
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REDEEM_AMOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getErrorMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->BIRTHDATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 659
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    const/4 v0, 0x0

    .line 663
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 664
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    const/16 v2, 0x41

    invoke-virtual {v0, p0, v2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    .line 667
    :cond_6
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->CREDIT_CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    .line 668
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 670
    :cond_7
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->SECURITY_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->CVV_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    .line 671
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 673
    :cond_8
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_EXPIRY_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MONTH_AND_YEAR_FORMAT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    .line 674
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 676
    :cond_9
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->IBAN:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->formatIbanNumber(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V

    goto :goto_5

    .line 678
    :cond_a
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REDEEM_AMOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 680
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cleanCurrencyStringAndDigitize(Ljava/lang/String;)D

    move-result-wide v0

    .line 681
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getAdditionalParamKeyValues()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getCurrencyCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {p0, v2, v0, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->addCurrencyFormatting(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    move-object p1, v2

    .line 688
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validateRedeemAmount(D)V

    .line 689
    invoke-virtual {p0, p2, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->safeSetCurrencyTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    if-nez p1, :cond_f

    .line 691
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setRedeemAmountAccessoryText(D)V

    goto :goto_5

    .line 675
    :cond_c
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validateCardExpirationDate(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V

    goto :goto_5

    .line 672
    :cond_d
    :goto_3
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validateSecurityCode(Ljava/lang/String;)V

    goto :goto_5

    .line 669
    :cond_e
    :goto_4
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validateCardNumber(Ljava/lang/String;Lcom/google/android/material/textfield/TextInputEditText;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public announceHintForAccessibilityOnFocus(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 3
    .param p1    # Lcom/google/android/material/textfield/TextInputEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 942
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 946
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->placeHolderText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 949
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->placeHolderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->placeHolderText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 957
    :cond_3
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 958
    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public cleanCurrencyStringAndDigitize(Ljava/lang/String;)D
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-string v0, "[^0-9]"

    const-string v1, ""

    .line 1210
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "0"

    .line 1213
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public constructCurrencyString(DLjava/util/Currency;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p3    # Ljava/util/Currency;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "currency should not be null"

    .line 1227
    invoke-static {p3, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "locale should not be null"

    .line 1228
    invoke-static {p4, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1230
    invoke-static {p4}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p4

    .line 1231
    invoke-virtual {p4, p3}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 1232
    invoke-virtual {p4, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 483
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    .line 484
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$4;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$FieldParameterEnum:[I

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "postalCode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :pswitch_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "family-name"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    :pswitch_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "given-name"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 496
    :pswitch_4
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "phone"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 490
    :pswitch_5
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "creditCardExpirationDate"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :pswitch_6
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "creditCardSecurityCode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :pswitch_7
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    const-string v2, "creditCardNumber"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->autofillHints:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrencyCode(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, "CURRENCY_CODE"

    .line 1191
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDigits()Ljava/lang/String;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->digits:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 2

    .line 558
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->IBAN:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inputType:I

    return v0
.end method

.method public getLayoutHintLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->layoutHintLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMask()Z
    .locals 1

    .line 610
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->mask:Z

    return v0
.end method

.method public getMaxLength()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLength:I

    return v0
.end method

.method public getMaxLines()I
    .locals 1

    .line 534
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->maxLines:I

    return v0
.end method

.method public getParamString()Ljava/lang/CharSequence;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceHolder()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textualEntry:Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/TextualEntry;->getPlaceHolder()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceHolderText()Ljava/lang/CharSequence;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->placeHolderText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getScanCardVisibility()I
    .locals 2

    .line 1069
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;->cardScanningEnabled:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Payments$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x8

    return v0
.end method

.method public getTextAppearance()I
    .locals 1

    .line 393
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textAppearance:I

    return v0
.end method

.method public handleFocusChange(Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 1
    .param p1    # Lcom/google/android/material/textfield/TextInputEditText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 920
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->announceHintForAccessibilityOnFocus(Lcom/google/android/material/textfield/TextInputEditText;)V

    .line 922
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->shouldClearText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 926
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 927
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 970
    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public isDirty()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 3

    .line 256
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->onBind(Landroid/content/Context;)V

    if-eqz p1, :cond_5

    .line 257
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->layoutHintLabel:Ljava/lang/CharSequence;

    .line 261
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getPlaceHolder()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->placeHolderText:Ljava/lang/CharSequence;

    .line 262
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->REQUIRED_FIELD:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1210e4

    .line 264
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->layoutHintLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->layoutHintLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->contentDescription:Ljava/lang/CharSequence;

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    if-eqz v0, :cond_3

    .line 270
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object v0

    const v1, 0x7f08036f

    .line 271
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->getIconAccessibilityText()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f12011d

    .line 274
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpContentDescription:Ljava/lang/String;

    .line 275
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->title:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    .line 276
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelp:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndTextBubbleHelp;->messages:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ebay/mobile/payments/experience/PaymentsExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    .line 279
    :cond_3
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->setFieldViewAttributes(Landroid/content/Context;)V

    .line 281
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->IBAN:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 282
    new-instance p1, Lcom/ebay/nautilus/shell/util/IbanFormatter;

    invoke-direct {p1}, Lcom/ebay/nautilus/shell/util/IbanFormatter;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->ibanFormatter:Lcom/ebay/nautilus/shell/util/IbanFormatter;

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 896
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v0, :cond_1

    .line 898
    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz p2, :cond_1

    .line 901
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->CRASHING_DEVICES:Ljava/util/Set;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 902
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->handleFocusChange(Lcom/google/android/material/textfield/TextInputEditText;)V

    goto :goto_0

    .line 908
    :cond_0
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$TextualEntryViewModel$BHzYXZ2Dhy3tBi11QgEyZepXgjw;-><init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;Lcom/google/android/material/textfield/TextInputEditText;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public registerCardNumberChangeObserver(Landroidx/databinding/ObservableField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 985
    :cond_0
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$2;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$2;-><init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public registerRoutingNumberChangeObserver(Landroidx/databinding/ObservableField;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1005
    :cond_0
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$3;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel$3;-><init>(Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;)V

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 4

    .line 339
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->restoreState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_textValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_isDirty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_selectedDate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    .line 346
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->accessoryText:Landroidx/databinding/ObservableField;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_accessoryText"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public restoreTextInputIfEmpty(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "addressRecommendation"

    .line 370
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_textValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 373
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public safeSetCurrencyTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 874
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inValidation:Z

    .line 875
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_1

    .line 880
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 881
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 886
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    add-int/2addr v1, v0

    .line 887
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    const/4 p1, 0x0

    .line 888
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inValidation:Z

    return-void
.end method

.method public safeSetTextAfterTextChanged(Lcom/google/android/material/textfield/TextInputEditText;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 843
    iput-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inValidation:Z

    .line 844
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getSelectionStart()I

    move-result v0

    .line 846
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 847
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 849
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_4

    if-lez v0, :cond_1

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 852
    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    const/16 v1, 0x2f

    if-eq p2, v1, :cond_2

    const/16 v1, 0x30

    if-ne p2, v1, :cond_4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 848
    :cond_3
    :goto_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 856
    :cond_4
    :goto_2
    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 857
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setSelection(I)V

    .line 858
    iput-boolean v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->inValidation:Z

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 3

    .line 325
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->saveState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_textValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_isDirty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    invoke-virtual {v2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_selectedDate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_accessoryText"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->accessoryText:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs saveTextInput(Landroid/os/Bundle;[Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_textValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    array-length v0, p2

    if-lez v0, :cond_0

    const-string v0, "addressRecommendation"

    const/4 v1, 0x0

    .line 360
    aget-boolean p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setAccessoryText()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1241
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getAccessoryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->accessoryText:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setRedeemAmountAccessoryText(D)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1111
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REDEEM_AMOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1113
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getAccessoryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1114
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    if-eqz v1, :cond_4

    .line 1116
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->textSpans:Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;->toTextSpans()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 1119
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->template:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    .line 1126
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getAdditionalParamKeyValues()Ljava/util/Map;

    move-result-object v3

    const-string v4, "CURRENCY_TO_POINTS_CONVERSION"

    .line 1127
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 1133
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_2

    mul-double p1, p1, v5

    double-to-int p1, p1

    .line 1138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p2

    .line 1139
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    iget-object v5, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->text:Ljava/lang/String;

    iget-object v6, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->template:Ljava/lang/String;

    int-to-long v7, p1

    .line 1140
    invoke-virtual {p2, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->styles:Ljava/util/Set;

    invoke-direct {v3, p1, p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;-><init>(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1146
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_2

    .line 1147
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    move-object v3, v4

    :goto_2
    if-nez v3, :cond_3

    .line 1153
    new-instance v3, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    iget-object p1, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->text:Ljava/lang/String;

    iget-object p2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->template:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {p1, p2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;->styles:Ljava/util/Set;

    invoke-direct {v3, p1, p2}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    .line 1154
    :cond_3
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    new-instance p2, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;

    invoke-direct {p2, v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;-><init>(Ljava/util/List;)V

    invoke-direct {p1, p2, v4}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledText;Ljava/lang/String;)V

    .line 1156
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->accessoryText:Landroidx/databinding/ObservableField;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public shouldShowBubbleHelp()Z
    .locals 1

    .line 1080
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showBubbleHelp(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1095
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 1099
    :cond_1
    instance-of v0, p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-eqz v0, :cond_3

    .line 1101
    check-cast p1, Lcom/ebay/nautilus/shell/app/BaseActivity;

    const-class v0, Lcom/ebay/common/view/util/DialogManager;

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getShim(Ljava/lang/Class;)Lcom/ebay/nautilus/shell/app/ActivityShim;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/view/util/DialogManager;

    .line 1102
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->bubbleHelpContent:Ljava/lang/CharSequence;

    .line 1103
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1102
    invoke-virtual {p1, v0, v2, v1}, Lcom/ebay/common/view/util/DialogManager;->showDynamicAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public showDatePickerFragment(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;)Z
    .locals 4

    .line 1032
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 1035
    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->BIRTHDATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;->getInstance(Landroidx/fragment/app/Fragment;)Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1041
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getMinDate()Ljava/util/Date;

    move-result-object v1

    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v3}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v3}, Lcom/ebay/mobile/checkout/v2/model/DialogHelperFragment;->launchDatePickerDialog(Landroidx/fragment/app/Fragment;Ljava/util/Date;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public updateModelOnDateSet(Ljava/util/Calendar;Landroid/content/Context;)V
    .locals 2
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Calendar object should not be null"

    .line 1052
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Context object should not be null"

    .line 1053
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 1056
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    .line 1057
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 1058
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getMinDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1059
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1060
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MIN_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1062
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 1064
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    const/16 p2, 0x41

    invoke-virtual {p1, p0, p2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    return-void
.end method

.method public validateField()Z
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x41

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->REQUIRED_FIELD:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->REQUIRED_FIELD:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 296
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p0, v2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    return v1

    .line 299
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_EXPIRY_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    .line 303
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MONTH_AND_YEAR_FORMAT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MONTH_AND_YEAR_FORMAT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p0, v2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public validateRedeemAmount(D)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 799
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MAX_LIMIT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 800
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->additionalParamKeyValues:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 802
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->additionalParamKeyValues:Ljava/util/Map;

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationParameterEnum;->VALUE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationParameterEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 803
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 808
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    .line 809
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MAX_LIMIT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 811
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->validationMessages:Ljava/util/Map;

    sget-object p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MAX_LIMIT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 812
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->showAccessoryText:Landroidx/databinding/ObservableInt;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 816
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 817
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->showAccessoryText:Landroidx/databinding/ObservableInt;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 820
    :goto_0
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    const/16 p2, 0x41

    invoke-virtual {p1, p0, p2}, Landroidx/databinding/PropertyChangeRegistry;->notifyChange(Landroidx/databinding/Observable;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 824
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p2, p2, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p2, :cond_2

    .line 825
    sget-object p2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
