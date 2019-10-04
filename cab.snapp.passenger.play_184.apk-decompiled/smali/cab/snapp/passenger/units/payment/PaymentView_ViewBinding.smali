.class public Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/payment/PaymentView;

.field private view7f0a0213:Landroid/view/View;

.field private view7f0a03b4:Landroid/view/View;

.field private view7f0a03bb:Landroid/view/View;

.field private view7f0a03c0:Landroid/view/View;

.field private view7f0a03c1:Landroid/view/View;

.field private view7f0a03c3:Landroid/view/View;

.field private view7f0a03c5:Landroid/view/View;

.field private view7f0a03d0:Landroid/view/View;

.field private view7f0a03d1:Landroid/view/View;

.field private view7f0a03d2:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/payment/PaymentView;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/view/View;)V
    .locals 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/payment/PaymentView;

    .line 55
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0a03bc

    const-string v2, "field \'donateSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 56
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03ba

    const-string v2, "field \'donateLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateLayout:Landroid/view/ViewGroup;

    .line 57
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03b8

    const-string v2, "field \'donateDoneLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneLayout:Landroid/view/ViewGroup;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03b9

    const-string v2, "field \'donateDoneTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneTitleTextView:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03b7

    const-string v2, "field \'donateDoneAmountTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneAmountTextView:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03bd

    const-string v2, "field \'donateTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateTitleTextView:Landroid/widget/TextView;

    .line 61
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03b6

    const-string v2, "field \'donateDescTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->donateDescTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03b4

    const-string v1, "field \'decreaseRequestingChargeValueLayout\' and method \'decreaseOfAmountRequestingChargeClick\'"

    .line 62
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 63
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'decreaseRequestingChargeValueLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    .line 64
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03b4:Landroid/view/View;

    .line 65
    new-instance v0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c3

    const-string v1, "field \'increaseRequestingChargeValueLayout\' and method \'increaseOfAmountRequestingChargeClick\'"

    .line 71
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 72
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'increaseRequestingChargeValueLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c3:Landroid/view/View;

    .line 74
    new-instance v0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c5

    const-string v1, "field \'payButton\' and method \'onPayClick\'"

    .line 80
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 81
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'payButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    .line 82
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c5:Landroid/view/View;

    .line 83
    new-instance v0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a03c6

    const-string v2, "field \'paymentActionLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentActionLoading:Lcab/snapp/snappuikit/SnappLoading;

    const v0, 0x7f0a03af

    const-string v1, "field \'bottomMessageLayout\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageLayout:Landroid/view/View;

    .line 91
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03b0

    const-string v2, "field \'bottomMessageTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageTextView:Landroid/widget/TextView;

    .line 92
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03cc

    const-string v2, "field \'rideCostTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostTextView:Landroid/widget/TextView;

    const v0, 0x7f0a03cb

    const-string v1, "field \'rideCostLayout\'"

    .line 93
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostLayout:Landroid/view/View;

    const v0, 0x7f0a03cd

    const-string v1, "field \'payableCostInCashOrUssdLayout\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdLayout:Landroid/view/View;

    .line 95
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03ce

    const-string v2, "field \'payableCostInCashOrUssdTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdTitleTextView:Landroid/widget/TextView;

    .line 96
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03cf

    const-string v2, "field \'payableCostInCashOrUssdValueTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdValueTextView:Landroid/widget/TextView;

    .line 97
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03b3

    const-string v2, "field \'currentCreditTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditTextView:Landroid/widget/TextView;

    .line 98
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03b2

    const-string v2, "field \'currentCreditLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditLayout:Landroid/view/ViewGroup;

    .line 99
    const-class v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a03ac

    const-string v2, "field \'amountNeededForChargeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeLayout:Landroid/view/ViewGroup;

    .line 100
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03ad

    const-string v2, "field \'amountNeededForChargeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a03ca

    const-string v1, "field \'paymentTypeButtonLayout\'"

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    .line 102
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03c9

    const-string v2, "field \'paymentMethodTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentMethodTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 103
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a03c7

    const-string v2, "field \'paymentDoneLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneLayout:Landroid/widget/FrameLayout;

    .line 104
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a03c8

    const-string v2, "field \'paymentDoneTypeTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03ae

    const-string v2, "field \'apWalletActivationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    .line 106
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04b4

    const-string v2, "field \'apWalletActivationDescriptionTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a03be

    const-string v2, "field \'retryPanel\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->retryPanel:Landroid/widget/LinearLayout;

    .line 108
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a03bf

    const-string v2, "field \'retryTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->retryTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0213

    const-string v1, "field \'retryButton\' and method \'retryAp\'"

    .line 109
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 110
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'retryButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->retryButton:Landroid/widget/LinearLayout;

    .line 111
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 112
    new-instance v0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a03c4

    const-string v1, "field \'transferCreditLayout\'"

    .line 118
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->transferCreditLayout:Landroid/view/View;

    const v0, 0x7f0a012a

    const-string v1, "field \'dividerHeader\'"

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/payment/PaymentView;->dividerHeader:Landroid/view/View;

    const v0, 0x7f0a03c0

    const-string v1, "method \'onlinePaymentMethodClick\'"

    .line 120
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 121
    iput-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c0:Landroid/view/View;

    .line 122
    new-instance v3, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$6;

    invoke-direct {v3, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a03d0

    .line 128
    invoke-static {p2, v2, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 129
    iput-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d0:Landroid/view/View;

    .line 130
    new-instance v4, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$7;

    invoke-direct {v4, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$7;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a03d1

    .line 136
    invoke-static {p2, v3, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 137
    iput-object v4, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d1:Landroid/view/View;

    .line 138
    new-instance v5, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$8;

    invoke-direct {v5, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$8;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a03c1

    .line 144
    invoke-static {p2, v4, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 145
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c1:Landroid/view/View;

    .line 146
    new-instance v5, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$9;

    invoke-direct {v5, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$9;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03bb

    const-string v5, "method \'donateDescriptionClick\'"

    .line 152
    invoke-static {p2, v1, v5}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 153
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03bb:Landroid/view/View;

    .line 154
    new-instance v5, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$10;

    invoke-direct {v5, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$10;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a03d2

    const-string v5, "method \'onTransferCreditClick\'"

    .line 160
    invoke-static {p2, v1, v5}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 161
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d2:Landroid/view/View;

    .line 162
    new-instance v5, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$2;

    invoke-direct {v5, p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/widget/Button;

    .line 168
    const-class v5, Landroid/widget/Button;

    const-string v6, "field \'paymentTypeButtons\'"

    .line 169
    invoke-static {p2, v0, v6, v5}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v5, 0x0

    aput-object v0, v1, v5

    const-class v0, Landroid/widget/Button;

    .line 170
    invoke-static {p2, v2, v6, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Landroid/widget/Button;

    .line 171
    invoke-static {p2, v3, v6, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-class v0, Landroid/widget/Button;

    .line 172
    invoke-static {p2, v4, v6, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const/4 v0, 0x3

    aput-object p2, v1, v0

    .line 168
    invoke-static {v1}, Lbutterknife/internal/Utils;->listFilteringNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/payment/PaymentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/payment/PaymentView;

    .line 182
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 183
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateLayout:Landroid/view/ViewGroup;

    .line 184
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneLayout:Landroid/view/ViewGroup;

    .line 185
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneTitleTextView:Landroid/widget/TextView;

    .line 186
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneAmountTextView:Landroid/widget/TextView;

    .line 187
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateTitleTextView:Landroid/widget/TextView;

    .line 188
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDescTextView:Landroid/widget/TextView;

    .line 189
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    .line 190
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    .line 191
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    .line 192
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentActionLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 193
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageLayout:Landroid/view/View;

    .line 194
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageTextView:Landroid/widget/TextView;

    .line 195
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostTextView:Landroid/widget/TextView;

    .line 196
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostLayout:Landroid/view/View;

    .line 197
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdLayout:Landroid/view/View;

    .line 198
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdTitleTextView:Landroid/widget/TextView;

    .line 199
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdValueTextView:Landroid/widget/TextView;

    .line 200
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditTextView:Landroid/widget/TextView;

    .line 201
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditLayout:Landroid/view/ViewGroup;

    .line 202
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeLayout:Landroid/view/ViewGroup;

    .line 203
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    .line 205
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentMethodTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneLayout:Landroid/widget/FrameLayout;

    .line 207
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    .line 209
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 210
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->retryPanel:Landroid/widget/LinearLayout;

    .line 211
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->retryTextView:Landroid/widget/TextView;

    .line 212
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->retryButton:Landroid/widget/LinearLayout;

    .line 213
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->transferCreditLayout:Landroid/view/View;

    .line 214
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->dividerHeader:Landroid/view/View;

    .line 215
    iput-object v1, v0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03b4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03b4:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c3:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c5:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a0213:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a0213:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c0:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d0:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d1:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03c1:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03bb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03bb:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iput-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;->view7f0a03d2:Landroid/view/View;

    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
