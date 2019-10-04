.class public abstract Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "FieldViewModel.java"

# interfaces
.implements Landroidx/databinding/Observable;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;


# instance fields
.field private accessoryLabel:Ljava/lang/CharSequence;

.field protected errorIndex:I

.field protected errorMessage:Ljava/lang/CharSequence;

.field protected field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;"
        }
    .end annotation
.end field

.field protected registry:Landroidx/databinding/PropertyChangeRegistry;

.field validationMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Field;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Field;I)V

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/type/field/Field;I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/field/Field;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Field<",
            "*>;I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    .line 42
    new-instance p1, Landroidx/databinding/PropertyChangeRegistry;

    invoke-direct {p1}, Landroidx/databinding/PropertyChangeRegistry;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->validationMessages:Ljava/util/Map;

    const p1, 0x7f0a14ad

    .line 69
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->id:I

    const-string p1, "Field must not be null"

    .line 70
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    .line 71
    iput p3, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorIndex:I

    return-void
.end method

.method private populateValidationMessages(Landroid/content/Context;)V
    .locals 4

    .line 217
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getValidations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/field/Validation;

    .line 222
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->validationMessages:Ljava/util/Map;

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->validationType:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    .line 225
    invoke-virtual {p0, p1, v1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getValidationMessage(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 224
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessoryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getAccessoryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getAccessoryViewLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->accessoryLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParamKeyValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getAdditionalParamKeyValues()Ljava/util/Map;

    move-result-object v0

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

.method public getErrorIndex()I
    .locals 1

    .line 177
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorIndex:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getFieldId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentLevel()Ljava/lang/Integer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getIndentLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMinDate()Ljava/util/Date;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 272
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;->MIN_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->additionalParamKeyValues:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 278
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationParameterEnum;->VALUE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationParameterEnum;

    .line 279
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    :try_start_0
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->parseIso8601DateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_0
    return-object v1
.end method

.method public getParamKey()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParamValue()Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParamValueType()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getParamValueType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getSecondaryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    return-object v0
.end method

.method public getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    move-result-object v0

    return-object v0
.end method

.method protected getValidation(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getValidations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/type/field/Validation;

    .line 253
    instance-of v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    if-eqz v2, :cond_0

    .line 255
    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;

    .line 256
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->validationType:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidationTypeEnum;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getValidationMessage(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 236
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldValidation;->getMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getMessageType()Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ERROR:Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    if-ne v0, v1, :cond_0

    .line 238
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValidations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/field/Validation;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getValidations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getDisabled()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Field;->getSelected()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->field:Lcom/ebay/nautilus/domain/data/experience/type/field/Field;

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getMessage()Lcom/ebay/nautilus/domain/data/experience/type/field/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getMessageType()Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ERROR:Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    if-ne v1, v2, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/field/Message;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getAccessoryLabel()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->accessoryLabel:Ljava/lang/CharSequence;

    .line 205
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->populateValidationMessages(Landroid/content/Context;)V

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

.method public removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->registry:Landroidx/databinding/PropertyChangeRegistry;

    invoke-virtual {v0, p1}, Landroidx/databinding/PropertyChangeRegistry;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_errorIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorIndex:I

    :cond_0
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_errorMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_errorIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->errorIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public abstract validateField()Z
.end method
