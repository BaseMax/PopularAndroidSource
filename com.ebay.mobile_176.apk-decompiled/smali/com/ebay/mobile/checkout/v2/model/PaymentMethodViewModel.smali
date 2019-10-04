.class public Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;
.source "PaymentMethodViewModel.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field public final accessibilityText:Ljava/lang/String;

.field public final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->useVerticalLayout(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0647

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0645

    :goto_0
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->layoutId:I

    const v0, 0x7f0a14b7

    .line 37
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->id:I

    .line 38
    invoke-static {p1}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->getTag(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->tag:Ljava/lang/Object;

    .line 39
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->accessibilityText:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->accessibilityText:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->getOptions()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->options:Ljava/util/List;

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;

    .line 46
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->options:Ljava/util/List;

    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->options:Ljava/util/List;

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->isRadio()Z

    return-void
.end method

.method public static getTag(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->meta:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;

    if-eqz v1, :cond_2

    .line 106
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->meta:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;

    .line 107
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->paymentMethodId:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->fundingPlanId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->fundingPlanId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->promotionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ":"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummaryMetadata;->promotionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->name()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static setImageToGrayScaleWhenDisabled(Lcom/ebay/android/widget/RemoteImageView;Z)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "availability"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 148
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 150
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/RemoteImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method private useVerticalLayout(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 89
    iget-boolean v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->selected:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;->PAYPAL:Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->getPaymentMethodType()Lcom/ebay/nautilus/domain/data/experience/checkout/payment/PaymentMethodType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/PaymentMethodSelectableRenderSummary;->uxComponentHint:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->RADIO_BUTTON:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public isCheckbox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->shouldShowOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;

    .line 64
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->disabled:Z

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->setDisabled(Z)V

    :cond_1
    return-void
.end method

.method public shouldShowChevron()Z
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->summary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 131
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-eqz v2, :cond_2

    .line 134
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v0

    .line 135
    sget-object v3, Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;->OPERATION:Lcom/ebay/nautilus/domain/data/experience/type/base/ActionType;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->LOAD_MODULE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->GET_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->LOAD_ACTION_CONFIRMATION:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public shouldShowOptions()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->options:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowRow()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->secondary:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->tertiary:Ljava/util/List;

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->getUxComponentHint()Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/type/field/UxComponentHint;

    if-eq v0, v1, :cond_0

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
