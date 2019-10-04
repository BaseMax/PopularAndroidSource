.class public Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;
.super Ljava/lang/Object;
.source "PlBasicUserRateValidator.java"


# instance fields
.field private final numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final numberValidatorFactory:Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Must have a nonnull NumberValidation"

    .line 29
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Must have a nonnull NumberValidatorFactory"

    .line 30
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    .line 33
    iput-object p2, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidatorFactory:Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;

    return-void
.end method

.method private errorTextOrNull(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/Message;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getDefaultMessage(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/field/Message;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/field/Message;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    invoke-direct {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;-><init>()V

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getErrorMessage(Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/ads/promotedlistings/PlBasicMetadata;->userRate:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;->getEmptyErrorMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getDefaultMessage(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->errorTextOrNull(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v1, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidatorFactory:Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;

    iget-object v2, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {v1, v2, v0}, Lcom/ebay/mobile/ads/promotedlistings/utils/NumberValidatorFactory;->create(Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;Ljava/lang/Double;)Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/Validator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/Validator;->validate()Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/ValidationResult;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/bestoffer/validation/ValidationResult;->getErrorMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->errorTextOrNull(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;->getDecimalPrecision()I

    move-result v0

    const-string v1, "."

    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    .line 75
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-le p1, v0, :cond_2

    .line 77
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;->getInvalidErrorMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getDefaultMessage(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 61
    :catch_0
    iget-object p1, p0, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->numberValidation:Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/field/validation/NumberValidation;->getInvalidErrorMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->getDefaultMessage(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ebay/mobile/ads/promotedlistings/utils/PlBasicUserRateValidator;->errorTextOrNull(Lcom/ebay/nautilus/domain/data/experience/type/field/Message;)Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    return-object p1
.end method
