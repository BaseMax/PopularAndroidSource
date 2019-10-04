.class public Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

.field private view7f0a03a8:Landroid/view/View;

.field private view7f0a04b0:Landroid/view/View;

.field private view7f0a04b0TextWatcher:Landroid/text/TextWatcher;

.field private view7f0a04b1:Landroid/view/View;

.field private view7f0a04b9:Landroid/view/View;

.field private view7f0a04c1:Landroid/view/View;

.field private view7f0a04c2:Landroid/view/View;

.field private view7f0a04c3:Landroid/view/View;

.field private view7f0a04c4:Landroid/view/View;

.field private view7f0a04c6:Landroid/view/View;

.field private view7f0a04c7:Landroid/view/View;

.field private view7f0a04c8:Landroid/view/View;

.field private view7f0a04cc:Landroid/view/View;

.field private view7f0a04cf:Landroid/view/View;

.field private view7f0a04d3:Landroid/view/View;

.field private view7f0a04d6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;Landroid/view/View;)V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    const v0, 0x7f0a03a8

    const-string v1, "field \'closeButton\' and method \'onBottomSheetCloseButtonClicked\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'closeButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->closeButton:Landroid/widget/ImageButton;

    .line 79
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a03a8:Landroid/view/View;

    .line 80
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04c0

    const-string v2, "field \'currentCreditTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->currentCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04bd

    const-string v2, "field \'creditCurrencyTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->creditCurrencyTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    const-class v0, Landroid/widget/HorizontalScrollView;

    const v1, 0x7f0a04d2

    const-string v2, "field \'tabLayoutScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->tabLayoutScrollView:Landroid/widget/HorizontalScrollView;

    const v0, 0x7f0a04cc

    const-string v1, "field \'apWalletTabLayout\' and method \'onApWalletTabClicked\'"

    .line 89
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 90
    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "field \'apWalletTabLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 91
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cc:Landroid/view/View;

    .line 92
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04cf

    const-string v1, "field \'bankCardTabLayout\' and method \'onBankCardTabClicked\'"

    .line 98
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "field \'bankCardTabLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cf:Landroid/view/View;

    .line 101
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$9;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d6

    const-string v1, "field \'ussdTabLayout\' and method \'onUssdTabClicked\'"

    .line 107
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 108
    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "field \'ussdTabLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 109
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d6:Landroid/view/View;

    .line 110
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$10;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04d3

    const-string v1, "field \'snappCardTabLayout\' and method \'onSnappCardTabClicked\'"

    .line 116
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 117
    const-class v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v3, "field \'snappCardTabLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 118
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d3:Landroid/view/View;

    .line 119
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$11;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04ce

    const-string v1, "field \'apWalletTabUnderlineView\'"

    .line 125
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTabUnderlineView:Landroid/view/View;

    const v0, 0x7f0a04d1

    const-string v1, "field \'bankCardTabUnderlineView\'"

    .line 126
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTabUnderlineView:Landroid/view/View;

    const v0, 0x7f0a04d8

    const-string v1, "field \'ussdTabUnderlineView\'"

    .line 127
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTabUnderlineView:Landroid/view/View;

    const v0, 0x7f0a04d5

    const-string v1, "field \'snappCardTabUnderlineView\'"

    .line 128
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTabUnderlineView:Landroid/view/View;

    .line 129
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04cd

    const-string v2, "field \'apWalletTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04d0

    const-string v2, "field \'bankCardTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04d7

    const-string v2, "field \'ussdTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 132
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04d4

    const-string v2, "field \'snappCardTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 133
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a04bb

    const-string v2, "field \'ApLogoImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ApLogoImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 134
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a04bc

    const-string v2, "field \'bankCardLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 135
    const-class v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v1, 0x7f0a04c9

    const-string v2, "field \'snappLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 136
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04b3

    const-string v2, "field \'apWalletActivationLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    .line 137
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a04b7

    const-string v2, "field \'apWalletActivationRequestCoordinator\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationRequestCoordinator:Landroid/widget/RelativeLayout;

    .line 138
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04b8

    const-string v2, "field \'apWalletErrorLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletErrorLayout:Landroid/widget/LinearLayout;

    .line 139
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04be

    const-string v2, "field \'currentCreditLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->currentCreditLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04c8

    const-string v1, "field \'setAmountTo500000RialButton\' and method \'onSetAmountTo500000RialButtonClicked\'"

    .line 140
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 141
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'setAmountTo500000RialButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo500000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 142
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c8:Landroid/view/View;

    .line 143
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$12;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$12;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c7

    const-string v1, "field \'setAmountTo200000RialButton\' and method \'onSetAmountTo200000RialButtonClicked\'"

    .line 149
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 150
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'setAmountTo200000RialButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo200000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 151
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c7:Landroid/view/View;

    .line 152
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$13;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$13;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c6

    const-string v1, "field \'setAmountTo100000RialButton\' and method \'onSetAmountTo100000RialButtonClicked\'"

    .line 158
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 159
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'setAmountTo100000RialButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo100000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 160
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c6:Landroid/view/View;

    .line 161
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$14;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$14;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c2

    const-string v1, "field \'increaseByFixedAmountButton\' and method \'onIncrementByFixedAmountButtonClicked\'"

    .line 167
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 168
    const-class v2, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v3, "field \'increaseByFixedAmountButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->increaseByFixedAmountButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 169
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c2:Landroid/view/View;

    .line 170
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$15;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$15;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c1

    const-string v1, "field \'decreaseByFixedAmountButton\' and method \'onDecreaseByFixedAmountButtonClicked\'"

    .line 176
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 177
    const-class v2, Landroidx/appcompat/widget/AppCompatImageButton;

    const-string v3, "field \'decreaseByFixedAmountButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->decreaseByFixedAmountButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 178
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c1:Landroid/view/View;

    .line 179
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b0

    const-string v1, "field \'amountToChargeEditText\' and method \'onTextChanged\'"

    .line 185
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 186
    const-class v2, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "field \'amountToChargeEditText\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->amountToChargeEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 187
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0:Landroid/view/View;

    .line 188
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0TextWatcher:Landroid/text/TextWatcher;

    .line 202
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    const-class v0, Lcab/snapp/snappuikit/SnappClearableEditText;

    const v1, 0x7f0a04ca

    const-string v2, "field \'snappClearableEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappClearableEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappClearableEditText:Lcab/snapp/snappuikit/SnappClearableEditText;

    .line 204
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a04b4

    const-string v2, "field \'apWalletActivationDescriptionTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a04c3

    const-string v1, "field \'payButton\' and method \'onPayButtonClicked\'"

    .line 205
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 206
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'payButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->payButton:Lcab/snapp/snappuikit/SnappButton;

    .line 207
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c3:Landroid/view/View;

    .line 208
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04b1

    const-string v1, "field \'apWalletActivationButton\' and method \'onApWalletActivationButtonClicked\'"

    .line 214
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 215
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'apWalletActivationButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationButton:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b1:Landroid/view/View;

    .line 217
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a04b2

    const-string v2, "field \'apWalletActivationLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 224
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a04b5

    const-string v2, "field \'apWalletActivationViewLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationViewLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 225
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0a04b6

    const-string v2, "field \'apWalletActivationLogo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 226
    const-class v0, Landroidx/core/widget/NestedScrollView;

    const v1, 0x7f0a03aa

    const-string v2, "field \'nestedScrollView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0a04b9

    const-string v1, "method \'onApWalletRetryClicked\'"

    .line 227
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 228
    iput-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b9:Landroid/view/View;

    .line 229
    new-instance v1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$6;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04c4

    const-string v1, "method \'onQrCodeScannerClicked\'"

    .line 235
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 236
    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c4:Landroid/view/View;

    .line 237
    new-instance v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$7;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 250
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->target:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    .line 252
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->closeButton:Landroid/widget/ImageButton;

    .line 253
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->currentCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 254
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->creditCurrencyTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->tabLayoutScrollView:Landroid/widget/HorizontalScrollView;

    .line 256
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 257
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 258
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 259
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTabLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 260
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTabUnderlineView:Landroid/view/View;

    .line 261
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTabUnderlineView:Landroid/view/View;

    .line 262
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTabUnderlineView:Landroid/view/View;

    .line 263
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTabUnderlineView:Landroid/view/View;

    .line 264
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 265
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 266
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ussdTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappCardTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 268
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->ApLogoImageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 269
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->bankCardLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 270
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 271
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    .line 272
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationRequestCoordinator:Landroid/widget/RelativeLayout;

    .line 273
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletErrorLayout:Landroid/widget/LinearLayout;

    .line 274
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->currentCreditLayout:Landroid/widget/LinearLayout;

    .line 275
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo500000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 276
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo200000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 277
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setAmountTo100000RialButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 278
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->increaseByFixedAmountButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 279
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->decreaseByFixedAmountButton:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 280
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->amountToChargeEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 281
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->snappClearableEditText:Lcab/snapp/snappuikit/SnappClearableEditText;

    .line 282
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 283
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->payButton:Lcab/snapp/snappuikit/SnappButton;

    .line 284
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationButton:Landroid/widget/TextView;

    .line 285
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 286
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationViewLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 287
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->apWalletActivationLogo:Landroidx/appcompat/widget/AppCompatImageView;

    .line 288
    iput-object v1, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 290
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a03a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a03a8:Landroid/view/View;

    .line 292
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cc:Landroid/view/View;

    .line 294
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cf:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04cf:Landroid/view/View;

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d6:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04d3:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c8:Landroid/view/View;

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c7:Landroid/view/View;

    .line 304
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c6:Landroid/view/View;

    .line 306
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c2:Landroid/view/View;

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c1:Landroid/view/View;

    .line 310
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0TextWatcher:Landroid/text/TextWatcher;

    .line 312
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b0:Landroid/view/View;

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c3:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b1:Landroid/view/View;

    .line 317
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04b9:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iput-object v1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;->view7f0a04c4:Landroid/view/View;

    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
