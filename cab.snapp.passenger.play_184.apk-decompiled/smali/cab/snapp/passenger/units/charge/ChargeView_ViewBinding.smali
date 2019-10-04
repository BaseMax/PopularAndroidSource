.class public Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/charge/ChargeView;

.field private view7f0a00df:Landroid/view/View;

.field private view7f0a00e1:Landroid/view/View;

.field private view7f0a00e2:Landroid/view/View;

.field private view7f0a00ed:Landroid/view/View;

.field private view7f0a01c3:Landroid/view/View;

.field private view7f0a01da:Landroid/view/View;

.field private view7f0a0247:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/charge/ChargeView;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge/ChargeView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/charge/ChargeView;Landroid/view/View;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge/ChargeView;

    .line 52
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0a0331

    const-string v2, "field \'mobileNumberEt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    .line 53
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0173

    const-string v2, "field \'mobileInputLayoutHint\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutHint:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a021d

    const-string v1, "field \'mobileInputLayoutError\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutError:Landroid/view/View;

    .line 55
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0281

    const-string v2, "field \'mobileNumberContainerRl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberContainerRl:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ed

    const-string v1, "field \'clearMobileNumberIv\' and method \'onClearMobileNumberClicked\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-class v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "field \'clearMobileNumberIv\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->clearMobileNumberIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00ed:Landroid/view/View;

    .line 59
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0497

    const-string v2, "field \'chargeViewLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->chargeViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c3

    const-string v1, "field \'toolbarBackArrowLayout\' and method \'onBackArrowLayoutClicked\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'toolbarBackArrowLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->toolbarBackArrowLayout:Landroid/widget/LinearLayout;

    .line 68
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    .line 69
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const-class v0, Landroid/widget/ScrollView;

    const v1, 0x7f0a00e3

    const-string v2, "field \'containerScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->containerScrollView:Landroid/widget/ScrollView;

    .line 76
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00dd

    const-string v2, "field \'nextBtnContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtnContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00df

    const-string v1, "field \'nextBtn\' and method \'onNextBtnClicked\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Lcab/snapp/snappuikit/LoadingButton;

    const-string v3, "field \'nextBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/LoadingButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    .line 79
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00df:Landroid/view/View;

    .line 80
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a00de

    const-string v2, "field \'mainLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 87
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a025f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0499

    const-string v2, "field \'errorRl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->errorRl:Landroid/widget/RelativeLayout;

    .line 89
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0498

    const-string v2, "field \'errorMessageTextTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0247

    const-string v1, "field \'quickChargeContainer\' and method \'onQuickChargeClicked\'"

    .line 90
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 91
    const-class v2, Landroidx/cardview/widget/CardView;

    const-string v3, "field \'quickChargeContainer\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    .line 92
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a0247:Landroid/view/View;

    .line 93
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a0248

    const-string v2, "field \'quickChargeOperatorLogo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a00e0

    const-string v2, "field \'quickChargeLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLoading:Lcab/snapp/snappuikit/SnappLoading;

    const v0, 0x7f0a00d5

    const-string v1, "field \'chevronView\'"

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->chevronView:Landroid/view/View;

    const v0, 0x7f0a00d7

    const-string v1, "field \'quickChargeBtn\'"

    .line 102
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeBtn:Landroid/view/View;

    .line 103
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a00d9

    const-string v2, "field \'quickChargeOperatorLogoBackground\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    .line 104
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a00d8

    const-string v2, "field \'quickChargeLastPaymentTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a00d4

    const-string v2, "field \'quickChargeLastPaymentAmount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00e2

    const-string v1, "field \'btnSelectMobileNumberFromRecently\' and method \'onSelectMobileNumberFromRecentlyClicked\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    const-class v2, Lcab/snapp/snappuikit/StartDrawableButton;

    const-string v3, "field \'btnSelectMobileNumberFromRecently\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/StartDrawableButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/charge/ChargeView;->btnSelectMobileNumberFromRecently:Lcab/snapp/snappuikit/StartDrawableButton;

    .line 108
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e2:Landroid/view/View;

    .line 109
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e1

    const-string v1, "method \'onSelectMobileNumberFromContactsClicked\'"

    .line 115
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 116
    iput-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e1:Landroid/view/View;

    .line 117
    new-instance v1, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01da

    const-string v1, "method \'onTransactionsClicked\'"

    .line 123
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 124
    iput-object p2, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01da:Landroid/view/View;

    .line 125
    new-instance v0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$7;-><init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge/ChargeView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 138
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->target:Lcab/snapp/passenger/units/charge/ChargeView;

    .line 140
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    .line 141
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutHint:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutError:Landroid/view/View;

    .line 143
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberContainerRl:Landroid/widget/RelativeLayout;

    .line 144
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->clearMobileNumberIv:Landroidx/appcompat/widget/AppCompatImageView;

    .line 145
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->chargeViewLayout:Landroid/widget/LinearLayout;

    .line 146
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->toolbarBackArrowLayout:Landroid/widget/LinearLayout;

    .line 147
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->containerScrollView:Landroid/widget/ScrollView;

    .line 148
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtnContainer:Landroid/widget/LinearLayout;

    .line 149
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    .line 150
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 151
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->errorRl:Landroid/widget/RelativeLayout;

    .line 153
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 154
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    .line 155
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 156
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 157
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->chevronView:Landroid/view/View;

    .line 158
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeBtn:Landroid/view/View;

    .line 159
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    .line 160
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    .line 162
    iput-object v1, v0, Lcab/snapp/passenger/units/charge/ChargeView;->btnSelectMobileNumberFromRecently:Lcab/snapp/snappuikit/StartDrawableButton;

    .line 164
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00ed:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00ed:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01c3:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00df:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00df:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a0247:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a0247:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e2:Landroid/view/View;

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a00e1:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01da:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iput-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;->view7f0a01da:Landroid/view/View;

    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
