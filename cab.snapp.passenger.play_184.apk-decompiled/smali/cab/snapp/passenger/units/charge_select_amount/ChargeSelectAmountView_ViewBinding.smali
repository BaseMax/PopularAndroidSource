.class public Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

.field private view7f0a00dc:Landroid/view/View;

.field private view7f0a01c3:Landroid/view/View;

.field private view7f0a0280:Landroid/view/View;

.field private view7f0a032f:Landroid/view/View;

.field private view7f0a0330:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;Landroid/view/View;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    .line 46
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0310

    const-string v2, "field \'tvChargePackageType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0260

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a00de

    const-string v2, "field \'mainLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 49
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a01e5

    const-string v2, "field \'selectChargeViewContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectChargeViewContainer:Landroid/widget/LinearLayout;

    .line 50
    const-class v0, Lcab/snapp/snappuikit/MoneyAmountEditText;

    const v1, 0x7f0a032e

    const-string v2, "field \'etAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/MoneyAmountEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    const v0, 0x7f0a032f

    const-string v1, "field \'btnDecrease\' and method \'onDecreaseClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v3, "field \'btnDecrease\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnDecrease:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 53
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a032f:Landroid/view/View;

    .line 54
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0330

    const-string v1, "field \'btnIncrease\' and method \'onIncreaseClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v3, "field \'btnIncrease\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnIncrease:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 62
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0330:Landroid/view/View;

    .line 63
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00dc

    const-string v1, "field \'btnSubmit\' and method \'onSubmitClicked\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Lcab/snapp/snappuikit/LoadingButton;

    const-string v3, "field \'btnSubmit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/LoadingButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnSubmit:Lcab/snapp/snappuikit/LoadingButton;

    .line 71
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a00dc:Landroid/view/View;

    .line 72
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a032d

    const-string v1, "field \'customAmountLayout\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->customAmountLayout:Landroid/view/View;

    const v0, 0x7f0a0280

    const-string v1, "field \'selectPackageTypeContainer\' and method \'onChargeTypeClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 80
    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectPackageTypeContainer:Landroid/view/View;

    .line 81
    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0280:Landroid/view/View;

    .line 82
    new-instance v1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$4;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a01b9

    const-string v2, "field \'ivCircle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCircle:Landroidx/appcompat/widget/AppCompatImageView;

    .line 89
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a01b8

    const-string v2, "field \'ivCalendar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCalendar:Landroidx/appcompat/widget/AppCompatImageView;

    .line 90
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0499

    const-string v2, "field \'errorRl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorRl:Landroid/widget/RelativeLayout;

    .line 91
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0498

    const-string v2, "field \'errorMessageTextTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a01c3

    const-string v1, "method \'onBackArrowLayoutClicked\'"

    .line 92
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 93
    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    .line 94
    new-instance v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->target:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    .line 109
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 112
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectChargeViewContainer:Landroid/widget/LinearLayout;

    .line 113
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    .line 114
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnDecrease:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 115
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnIncrease:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 116
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnSubmit:Lcab/snapp/snappuikit/LoadingButton;

    .line 117
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->customAmountLayout:Landroid/view/View;

    .line 118
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectPackageTypeContainer:Landroid/view/View;

    .line 119
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCircle:Landroidx/appcompat/widget/AppCompatImageView;

    .line 120
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCalendar:Landroidx/appcompat/widget/AppCompatImageView;

    .line 121
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorRl:Landroid/widget/RelativeLayout;

    .line 122
    iput-object v1, v0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 124
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a032f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a032f:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0330:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0330:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a00dc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a00dc:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0280:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a0280:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iput-object v1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
