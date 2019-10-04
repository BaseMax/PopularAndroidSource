.class public Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/charge_confirm_payment/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/charge_confirm_payment/c;

.field protected b:Lbutterknife/Unbinder;

.field chargePaymentBtn:Lcab/snapp/snappuikit/LoadingButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00cc
    .end annotation
.end field

.field payableAmountTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0315
    .end annotation
.end field

.field quickChargeContainer:Landroidx/cardview/widget/CardView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0247
    .end annotation
.end field

.field quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d4
    .end annotation
.end field

.field quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d8
    .end annotation
.end field

.field quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0248
    .end annotation
.end field

.field quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d9
    .end annotation
.end field

.field taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0318
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public fillChargeAmount(J)V
    .locals 2

    .line 163
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, p2, v0}, Lcab/snapp/c/j;->formatLong(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public fillChargeTypeAndMobile(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 4

    .line 168
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getPersianType()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;->getMobileNumber()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, "%s\u060c %s"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public fillOperator(Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 158
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->chargePaymentBtn:Lcab/snapp/snappuikit/LoadingButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/LoadingButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public fillPayableAmount(J)V
    .locals 2

    .line 182
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->payableAmountTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, p2, v0}, Lcab/snapp/c/j;->formatLong(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public handleTax(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void

    .line 174
    :cond_1
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBackArrowLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01c3
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->a:Lcab/snapp/passenger/units/charge_confirm_payment/c;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 135
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public paymentButtonClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00cc
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->a:Lcab/snapp/passenger/units/charge_confirm_payment/c;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_confirm_payment/c;->paymentButtonClicked()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 35
    check-cast p1, Lcab/snapp/passenger/units/charge_confirm_payment/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->setPresenter(Lcab/snapp/passenger/units/charge_confirm_payment/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/charge_confirm_payment/c;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->a:Lcab/snapp/passenger/units/charge_confirm_payment/c;

    return-void
.end method
