.class public Lcab/snapp/passenger/units/payment/PaymentView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/payment/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/payment/c;

.field amountNeededForChargeLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ac
    .end annotation
.end field

.field amountNeededForChargeTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ad
    .end annotation
.end field

.field apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a04b4
    .end annotation
.end field

.field apWalletActivationLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ae
    .end annotation
.end field

.field protected b:Lbutterknife/Unbinder;

.field bottomMessageLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03af
    .end annotation
.end field

.field bottomMessageTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b0
    .end annotation
.end field

.field private c:Lcab/snapp/passenger/f/r;

.field currentCreditLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b2
    .end annotation
.end field

.field currentCreditTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b3
    .end annotation
.end field

.field private d:Lcab/snapp/snappdialog/b;

.field decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b4
    .end annotation
.end field

.field dividerHeader:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a012a
    .end annotation
.end field

.field donateDescTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b6
    .end annotation
.end field

.field donateDoneAmountTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b7
    .end annotation
.end field

.field donateDoneLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b8
    .end annotation
.end field

.field donateDoneTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03b9
    .end annotation
.end field

.field donateLayout:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ba
    .end annotation
.end field

.field donateSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03bc
    .end annotation
.end field

.field donateTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03bd
    .end annotation
.end field

.field private e:Lcab/snapp/snappdialog/b;

.field increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c3
    .end annotation
.end field

.field payButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c5
    .end annotation
.end field

.field payableCostInCashOrUssdLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03cd
    .end annotation
.end field

.field payableCostInCashOrUssdTitleTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ce
    .end annotation
.end field

.field payableCostInCashOrUssdValueTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03cf
    .end annotation
.end field

.field paymentActionLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c6
    .end annotation
.end field

.field paymentDoneLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c7
    .end annotation
.end field

.field paymentDoneTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c8
    .end annotation
.end field

.field paymentMethodTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c9
    .end annotation
.end field

.field paymentTypeButtonLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03ca
    .end annotation
.end field

.field paymentTypeButtons:Ljava/util/List;
    .annotation runtime Lbutterknife/BindViews;
        value = {
            0x7f0a03c0,
            0x7f0a03d0,
            0x7f0a03d1,
            0x7f0a03c1
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field retryButton:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0213
    .end annotation
.end field

.field retryPanel:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03be
    .end annotation
.end field

.field retryTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03bf
    .end annotation
.end field

.field rideCostLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03cb
    .end annotation
.end field

.field rideCostTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03cc
    .end annotation
.end field

.field transferCreditLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a03c4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->onBackPressed()V

    return-void
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 268
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/payment/c;->donateSwitched(Z)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 4

    .line 239
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->e:Lcab/snapp/snappdialog/b;

    if-nez p1, :cond_0

    .line 241
    new-instance p1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/f$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/f$a;-><init>()V

    .line 245
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12019f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->setTitle(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/f$a;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/f$a;->build()Lcab/snapp/snappdialog/dialogViews/a/f;

    move-result-object v1

    .line 243
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 248
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 249
    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->e:Lcab/snapp/snappdialog/b;

    .line 252
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 253
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->e:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->show()V

    .line 254
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->transferSnappCreditToAp()V

    return-void
.end method

.method public static synthetic lambda$FJlAItncK7XBe-jX4p6PR-3g1m0(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/payment/PaymentView;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$csr39dAXwYaduWVkG9WneIOAed0(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$hS87mxVwb21yeWeSvZ3lTOM9MCk(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public decreaseOfAmountRequestingChargeClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03b4
        }
    .end annotation

    .line 212
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->decreaseAmountOfRequestingChargeClicked()V

    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->e:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public donateDescriptionClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03bb
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    .line 2478
    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2693
    iget-object v1, v0, Lcab/snapp/passenger/units/payment/c;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v4, "Donate link clicked"

    invoke-virtual {v1, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/payment/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/a;->donateDescription()V

    :cond_0
    return-void
.end method

.method public getPaymentTypeButton(I)Landroid/widget/Button;
    .locals 2

    const/4 v0, 0x0

    .line 622
    :goto_0
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 624
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    .line 625
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 631
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hideAmountNeededForChargeLayout()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideApWalletActivationLayout()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideBottomMessageLayout()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideCurrentCreditLayout()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideDecreaseButton()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideDonateDoneLayout()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideDonateLayout()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public hideIncreaseAndDecreaseLayout()V
    .locals 2

    .line 519
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDecreaseButton()V

    return-void
.end method

.method public hideLoadingDialog()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public hidePayButton()V
    .locals 2

    .line 477
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public hidePayLoading()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentActionLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public hidePayableCostInCashOrUssdLayout()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePaymentButton()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePaymentMethodTitle()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentMethodTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public hideRetryPanel()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->retryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideRideCostLayout()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideTransferSnappCreditLayout()V
    .locals 2

    .line 747
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->transferCreditLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->dividerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public increaseOfAmountRequestingChargeClick(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03c3
        }
    .end annotation

    .line 206
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/payment/c;->increaseAmountOfRequestingChargeClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 265
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 266
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->b:Lbutterknife/Unbinder;

    .line 267
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->c:Lcab/snapp/passenger/f/r;

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$FJlAItncK7XBe-jX4p6PR-3g1m0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$FJlAItncK7XBe-jX4p6PR-3g1m0;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3274
    new-instance v0, Lcab/snapp/snappuikit/c;

    invoke-direct {v0, p0}, Lcab/snapp/snappuikit/c;-><init>(Landroid/view/View;)V

    .line 3275
    new-instance v1, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$csr39dAXwYaduWVkG9WneIOAed0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$csr39dAXwYaduWVkG9WneIOAed0;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;)V

    const v2, 0x7f0800cb

    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappuikit/c;->setBackButton(ILandroid/view/View$OnClickListener;)V

    const v1, 0x7f12018d

    .line 3276
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/c;->setTitle(I)V

    return-void
.end method

.method public onPayClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03c5
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/payment/c;->payClicked()V

    return-void
.end method

.method public onTransferCreditClick()V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03d2
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->d:Lcab/snapp/snappdialog/b;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 227
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/16 v2, 0x192

    .line 228
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->dismissOnButtonClick(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12026d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    .line 232
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 234
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12026e

    .line 236
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120097

    .line 237
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setNegativeButtonText(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12026b

    new-instance v2, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$hS87mxVwb21yeWeSvZ3lTOM9MCk;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/payment/-$$Lambda$PaymentView$hS87mxVwb21yeWeSvZ3lTOM9MCk;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;)V

    .line 238
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->d:Lcab/snapp/snappdialog/b;

    .line 258
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->d:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public onlinePaymentMethodClick(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a03c0,
            0x7f0a03d0,
            0x7f0a03d1,
            0x7f0a03c1
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1739
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1741
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1743
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtonLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 188
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/c;->paymentTypeSelected(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public retryAp()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0213
        }
    .end annotation

    return-void
.end method

.method public selectPaymentTypeButton(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 608
    :goto_0
    iget-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 610
    iget-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    .line 611
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    .line 616
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 615
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAmountNeededForChargeTextView(Ljava/lang/String;)V
    .locals 1

    .line 395
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setApWalletRegistrationContents(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    .line 690
    iget-object p2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 694
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    .line 696
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 700
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 702
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 703
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06004f

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-interface {v2, v1, p1, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 704
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v2, v1, p1, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 706
    new-instance v1, Lcab/snapp/passenger/units/payment/PaymentView$1;

    invoke-direct {v1, p0, p2}, Lcab/snapp/passenger/units/payment/PaymentView$1;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 718
    invoke-interface {v2, v1, p1, v0, p2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 719
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public setBottomMessageText(I)V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setBottomMessageText(Ljava/lang/String;)V

    return-void
.end method

.method public setBottomMessageText(Ljava/lang/String;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBottomMessageTextColor(I)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setCurrentCreditText(Ljava/lang/String;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDonateDescText(Ljava/lang/String;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDescTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDonateDoneAmountText(Ljava/lang/String;)V
    .locals 1

    .line 540
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneAmountTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDonateDoneTitleText(Ljava/lang/String;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDonateTitleText(Ljava/lang/String;)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPayButtonText(Ljava/lang/String;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPayableCostInCashOrUssdTitleText(Ljava/lang/String;)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPayableCostInCashOrUssdValueText(Ljava/lang/String;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdValueTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaymentTypes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v1, 0x0

    .line 574
    :goto_0
    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 576
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 578
    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 579
    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;

    invoke-virtual {v5}, Lcab/snapp/passenger/data_access_layer/network/responses/PaymentType;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 581
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_1

    .line 583
    iget-object v2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    goto :goto_1

    .line 588
    :cond_0
    iget-object v3, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentTypeButtons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_3

    const p1, 0x7f0801e7

    goto :goto_2

    :cond_3
    const p1, 0x7f0801e9

    :goto_2
    if-eqz v2, :cond_4

    .line 602
    invoke-virtual {v2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 53
    check-cast p1, Lcab/snapp/passenger/units/payment/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->setPresenter(Lcab/snapp/passenger/units/payment/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/payment/c;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView;->a:Lcab/snapp/passenger/units/payment/c;

    return-void
.end method

.method public setRideCostText(Ljava/lang/String;)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTypeOfDonePaymentText(I)V
    .locals 1

    .line 360
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    return-void
.end method

.method public setTypeOfDonePaymentText(Ljava/lang/String;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVisibilityOfIncreaseDecreaseAmountAndPayButton(I)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showAmountNeededForChargeLayout()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->amountNeededForChargeLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showApWalletActivationLayout()V
    .locals 2

    .line 664
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->apWalletActivationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 665
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/payment/PaymentView;->setPayButtonText(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->showOnlyPayButton()V

    .line 667
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideRideCostLayout()V

    .line 668
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->hideDonateLayout()V

    return-void
.end method

.method public showBottomMessageLayout()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->bottomMessageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showCurrentCreditLayout()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->currentCreditLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showDecreaseButton()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDonateDoneLayout()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateDoneLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showDonateLayout()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->donateLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/r;->showErrorDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showErrorToast(I)V
    .locals 2

    .line 319
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showErrorToast(Ljava/lang/String;)V
    .locals 2

    .line 328
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showIncreaseAndDecreaseLayout()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->showDecreaseButton()V

    return-void
.end method

.method public showIncreaseDecreaseAmountAndPayButton()V
    .locals 2

    .line 377
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->increaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->decreaseRequestingChargeValueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public showNoInternetError()V
    .locals 1

    .line 555
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->c:Lcab/snapp/passenger/f/r;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public showOnlyPayButton()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showPayLoading()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentActionLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public showPayableCostInCashOrUssdLayout()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->payableCostInCashOrUssdLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showPaymentDoneLayout()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->paymentDoneLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showRetryPanel(Ljava/lang/String;Z)V
    .locals 1

    .line 639
    iget-object p2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->retryPanel:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    return-void

    .line 644
    :cond_0
    iget-object p2, p0, Lcab/snapp/passenger/units/payment/PaymentView;->retryTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showRideCostLayout()V
    .locals 2

    .line 683
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->rideCostLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showToast(I)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/payment/PaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public showTransferSnappCreditLayout()V
    .locals 2

    .line 752
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->transferCreditLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView;->dividerHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
