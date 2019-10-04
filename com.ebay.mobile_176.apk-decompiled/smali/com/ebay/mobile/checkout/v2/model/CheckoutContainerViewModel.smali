.class public Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;
.source "CheckoutContainerViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/v2/model/SpinnerInputStateHandler;
.implements Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;


# instance fields
.field private final styleResId:I
    .annotation build Landroidx/annotation/StyleRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            "I)V"
        }
    .end annotation

    .line 60
    invoke-direct/range {p0 .. p7}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V

    .line 61
    iput p8, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->styleResId:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)V
    .locals 9
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v8, 0x7f1306c3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    return-void
.end method

.method public static expirationDateFormatter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/yy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 176
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->formatIso8601DateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object p0

    :cond_0
    return-object p0
.end method

.method private getCardNumberObservable()Landroidx/databinding/ObservableField;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 195
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v2, :cond_0

    .line 197
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 198
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v0, v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRoutingNumberIsDirtyObservable()Landroidx/databinding/ObservableField;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 211
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v2, :cond_0

    .line 213
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 214
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ROUTING_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    iget-object v0, v1, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->isDirty:Landroidx/databinding/ObservableField;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateActionParamsFromViewModelList(Ljava/util/List;Ljava/util/Map;)V
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 92
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 94
    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;

    .line 97
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    move-result-object v1

    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->TOGGLE:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    if-ne v1, v3, :cond_1

    .line 98
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->isChecked:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldToggleViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_2
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    if-eqz v1, :cond_5

    .line 103
    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    .line 106
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->selectedPosition:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    .line 107
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getSpinnerList()Ljava/util/List;

    move-result-object v3

    .line 110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 111
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;

    :cond_3
    if-eqz v2, :cond_4

    .line 113
    invoke-virtual {v2}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/item/SpinnerItem;->getParamValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 115
    :cond_4
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getUnboundParamValue()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_1
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :cond_5
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 121
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v1

    .line 122
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_EXPIRY_DATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    .line 124
    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->expirationDateFormatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 125
    :cond_6
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "x-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 137
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->CARD_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 140
    :cond_7
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 142
    :cond_8
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->BIRTHDATE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 144
    iget-object v1, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->selectedDate:Ljava/util/Date;

    .line 146
    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/EbayDateUtils;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 148
    :cond_9
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->REDEEM_AMOUNT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    .line 152
    invoke-virtual {v2}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 151
    invoke-virtual {v0, v2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->cleanCurrencyStringAndDigitize(Ljava/lang/String;)D

    move-result-wide v2

    .line 150
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 156
    :cond_a
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getParamKey()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->textInputValue:Landroidx/databinding/ObservableField;

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public getContainerStyle(Landroid/content/Context;)Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    new-instance v0, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;

    iget v1, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->styleResId:I

    invoke-direct {v0, p1, v1}, Lcom/ebay/nautilus/shell/uxcomponents/widget/BaseContainerStyle;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected onRestoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v0

    .line 319
    instance-of v1, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    if-eqz v1, :cond_0

    .line 320
    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;->restoreState(Landroid/os/Bundle;)V

    .line 321
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->onRestoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v0

    .line 310
    instance-of v1, v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    if-eqz v1, :cond_0

    .line 311
    check-cast v0, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ComponentStateHandler;->saveState(Landroid/os/Bundle;)V

    .line 312
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/container/ContainerViewModel;->onSaveState(Landroid/os/Bundle;)V

    return-void
.end method

.method public registerCardNumberObservableWithHeaderViewModel()V
    .locals 2

    .line 227
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getCardNumberObservable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v1

    instance-of v1, v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getHeaderViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/checkout/v2/CreditCardHeaderViewModel;->setCardNumberFieldObservable(Landroidx/databinding/BaseObservable;)V

    :cond_0
    return-void
.end method

.method public registerCardNumberObservableWithSecurityCode()V
    .locals 5

    .line 241
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getCardNumberObservable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 245
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 247
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v3, :cond_1

    .line 249
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 250
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->SECURITY_CODE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    invoke-virtual {v2, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registerCardNumberChangeObserver(Landroidx/databinding/ObservableField;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public registerRoutingNumberIsDirtyObservableWithAccountNumber()V
    .locals 5

    .line 263
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getRoutingNumberIsDirtyObservable()Landroidx/databinding/ObservableField;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 268
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 270
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    if-eqz v3, :cond_1

    .line 272
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;

    .line 273
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->ACCOUNT_NUMBER:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/FieldParameterEnum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->getFieldId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {v2, v0}, Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;->registerRoutingNumberChangeObserver(Landroidx/databinding/ObservableField;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public restoreSpinnerState(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 396
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spinner_input_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 402
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 406
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    if-eqz v2, :cond_2

    .line 407
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->restoreState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public restoreTextInputIfEmpty(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "text_input_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 361
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 365
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    if-eqz v2, :cond_2

    .line 366
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    invoke-interface {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;->restoreTextInputIfEmpty(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public saveSpinnerState(Landroid/os/Bundle;)V
    .locals 4

    .line 374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 377
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 381
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    if-eqz v3, :cond_0

    .line 382
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;

    invoke-virtual {v2, v0}, Lcom/ebay/mobile/checkout/v2/model/SelectionFieldViewModel;->saveState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spinner_input_value_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public varargs saveTextInput(Landroid/os/Bundle;[Z)V
    .locals 4

    .line 330
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 332
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 333
    invoke-static {v1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 337
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    if-eqz v3, :cond_0

    .line 338
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    invoke-interface {v2, v0, p2}, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;->saveTextInput(Landroid/os/Bundle;[Z)V

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 343
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "text_input_value_"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public updateActionParamWithFormData(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
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

    .line 75
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->updateActionParamsFromViewModelList(Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected validateField(Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;)Z
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;->validateField()Z

    move-result p1

    return p1
.end method

.method public validateForm()Z
    .locals 4

    .line 282
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 283
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 285
    instance-of v3, v2, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    if-eqz v3, :cond_0

    .line 287
    check-cast v2, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->validateField(Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;)Z

    move-result v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method
