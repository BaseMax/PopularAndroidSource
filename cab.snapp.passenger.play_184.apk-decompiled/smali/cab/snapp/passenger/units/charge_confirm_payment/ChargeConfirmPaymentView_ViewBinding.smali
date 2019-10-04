.class public Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

.field private view7f0a00cc:Landroid/view/View;

.field private view7f0a01c3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    .line 36
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a0247

    const-string v2, "field \'quickChargeContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    .line 37
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a0248

    const-string v2, "field \'quickChargeOperatorLogo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0318

    const-string v2, "field \'taxDescriptionTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0315

    const-string v2, "field \'payableAmountTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->payableAmountTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00d9

    const-string v2, "field \'quickChargeOperatorLogoBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    .line 41
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a00d8

    const-string v2, "field \'quickChargeLastPaymentTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a00d4

    const-string v2, "field \'quickChargeLastPaymentAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00cc

    const-string v1, "field \'chargePaymentBtn\' and method \'paymentButtonClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Lcab/snapp/snappuikit/LoadingButton;

    const-string v3, "field \'chargePaymentBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/LoadingButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->chargePaymentBtn:Lcab/snapp/snappuikit/LoadingButton;

    .line 45
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a00cc:Landroid/view/View;

    .line 46
    new-instance v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01c3

    const-string v1, "method \'onBackArrowLayoutClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 53
    iput-object p2, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    .line 54
    new-instance v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;

    .line 69
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    .line 70
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 71
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->taxDescriptionTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->payableAmountTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    .line 74
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    .line 76
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView;->chargePaymentBtn:Lcab/snapp/snappuikit/LoadingButton;

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a00cc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a00cc:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_confirm_payment/ChargeConfirmPaymentView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
