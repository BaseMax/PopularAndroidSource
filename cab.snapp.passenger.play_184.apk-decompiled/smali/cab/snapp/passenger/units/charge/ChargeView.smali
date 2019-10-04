.class public Lcab/snapp/passenger/units/charge/ChargeView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/charge/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final PHONE_NUMBER_INPUT_STATE_ERROR:I = -0x1

.field public static final PHONE_NUMBER_INPUT_STATE_NORMAL:I = 0x0

.field public static final PHONE_NUMBER_INPUT_STATE_SELECTED:I = 0x1


# instance fields
.field protected a:Lcab/snapp/passenger/units/charge/c;

.field btnSelectMobileNumberFromRecently:Lcab/snapp/snappuikit/StartDrawableButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e2
    .end annotation
.end field

.field chargeViewLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0497
    .end annotation
.end field

.field chevronView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d5
    .end annotation
.end field

.field clearMobileNumberIv:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00ed
    .end annotation
.end field

.field containerScrollView:Landroid/widget/ScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e3
    .end annotation
.end field

.field errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0498
    .end annotation
.end field

.field errorRl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0499
    .end annotation
.end field

.field mainLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00de
    .end annotation
.end field

.field mobileInputLayoutError:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a021d
    .end annotation
.end field

.field mobileInputLayoutHint:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0173
    .end annotation
.end field

.field mobileNumberContainerRl:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0281
    .end annotation
.end field

.field mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0331
    .end annotation
.end field

.field nextBtn:Lcab/snapp/snappuikit/LoadingButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00df
    .end annotation
.end field

.field nextBtnContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00dd
    .end annotation
.end field

.field quickChargeBtn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00d7
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

.field quickChargeLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00e0
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

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a025f
    .end annotation
.end field

.field toolbarBackArrowLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01c3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 249
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutError:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public disableBtn()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setClickable(Z)V

    return-void
.end method

.method public enableBtn()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtn:Lcab/snapp/snappuikit/LoadingButton;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setClickable(Z)V

    return-void
.end method

.method public fillQuickCharge(Lcab/snapp/passenger/data/models/charge/QuickCharge;)V
    .locals 5

    if-nez p1, :cond_0

    .line 540
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeContainer:Landroidx/cardview/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 544
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getActiveUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 546
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object v0

    iget-object v2, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogo:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    .line 550
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeOperatorLogoBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getOperator()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;->getBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 552
    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcab/snapp/passenger/f/g;->getRealCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getPersianType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "%s\u060c %s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->quickChargeLastPaymentAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/QuickCharge;->getChargeAmount()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcab/snapp/c/j;->formatLong(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getChargeAmountEtMaxLength()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getMobileNumberEt()Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1

    .line 432
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public getMobileNumberEtText()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .line 467
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->containerScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public mobileNumberStatus(I)V
    .locals 3

    const/4 v0, -0x1

    const v1, 0x7f06003a

    const v2, 0x7f08029c

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f08029a

    const v1, 0x7f06004a

    .line 598
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->a()V

    goto :goto_0

    .line 592
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->a()V

    goto :goto_0

    :cond_2
    const v2, 0x7f0802bb

    const v1, 0x7f060088

    .line 6568
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutError:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberContainerRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 603
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileInputLayoutHint:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    return-void
.end method

.method public onBackArrowLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01c3
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method public onClearMobileNumberClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00ed
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge/a;->d()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 440
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 441
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onNextBtnClicked()V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00df
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_2

    .line 4310
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->a()V

    .line 4316
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4317
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/charge/ChargeView;->getMobileNumberEtText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcab/snapp/passenger/units/charge/c;->a:Lcab/snapp/passenger/a/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/a/c;->getSelectedItem()Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    move-result-object v3

    .line 5304
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5306
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/c;->c()V

    goto :goto_0

    .line 5310
    :cond_0
    iput-object v3, v1, Lcab/snapp/passenger/units/charge/a;->d:Lcab/snapp/passenger/data/models/charge/SIMChargeOperator;

    .line 5311
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5312
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "EXTRA_MOBILE_NUMBER"

    .line 5313
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "EXTRA_SIM_CHARGE_OPERATOR"

    .line 5314
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5316
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/d;

    invoke-virtual {v1, v4}, Lcab/snapp/passenger/units/charge/d;->routeToChargeSelectAmount(Landroid/os/Bundle;)V

    .line 4318
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge/a;->b()V

    :cond_2
    return-void
.end method

.method public onQuickChargeClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0247
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->a()V

    .line 1325
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->a()V

    :cond_0
    return-void
.end method

.method public onSelectMobileNumberFromContactsClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00e1
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_0

    .line 2239
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2240
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    .line 2447
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "EnterPhoneNumber"

    const-string v3, "TapOnContactList"

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v1

    .line 2448
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "Charge"

    invoke-virtual {v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 2270
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2273
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2275
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2276
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcab/snapp/arch/protocol/BaseController;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2278
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public onSelectMobileNumberFromRecentlyClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00e2
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->btnSelectMobileNumberFromRecently:Lcab/snapp/snappuikit/StartDrawableButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/StartDrawableButton;->setLoading(Z)V

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_0

    .line 3357
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3358
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/a;->loadRecentlyMobileNumbers()V

    :cond_0
    return-void
.end method

.method public onTransactionsClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01da
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    if-eqz v0, :cond_2

    .line 6228
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->a()V

    .line 6229
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6230
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/a;

    .line 6289
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6291
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/c;->c()V

    goto :goto_0

    .line 6295
    :cond_0
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6296
    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/charge/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/charge/d;->routeToChargeHistoryController()V

    .line 6231
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-static {}, Lcab/snapp/passenger/units/charge/a;->c()V

    :cond_2
    return-void
.end method

.method public removeFocusFromOnMobileNumberEt()V
    .locals 1

    .line 423
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->clearFocus()V

    return-void
.end method

.method public requestFocusForOnMobileNumberEt()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->requestFocus()Z

    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/c;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAddAnotherPhoneNumberEtFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setMobileNumberEtFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setMobileNumberEtSelection(I)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setSelection(I)V

    return-void
.end method

.method public setMobileNumberEtText(Ljava/lang/String;)V
    .locals 4

    .line 378
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "^(0098|\\+98|98|0){1}"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMobileNumberEtTextColor(I)V
    .locals 0

    return-void
.end method

.method public setMobileNumberEtTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mobileNumberEt:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 54
    check-cast p1, Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->setPresenter(Lcab/snapp/passenger/units/charge/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/charge/c;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    return-void
.end method

.method public setStatusBarColor(I)V
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showErrorMessage(I)V
    .locals 1

    .line 527
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge/ChargeView;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f12020d

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 486
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge/ChargeView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 487
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->errorRl:Landroid/widget/RelativeLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v6, "translationY"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 488
    new-instance v2, Lcab/snapp/passenger/units/charge/ChargeView$1;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/charge/ChargeView$1;-><init>(Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x12c

    .line 509
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x320

    .line 510
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 511
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 513
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->errorRl:Landroid/widget/RelativeLayout;

    new-array v1, v1, [F

    aput v4, v1, v3

    aput p1, v1, v5

    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 514
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1388

    .line 515
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 516
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->containerScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->nextBtnContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showRecentlyMobileNumberBottomSheet(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcab/snapp/passenger/units/charge/ChargeView;->btnSelectMobileNumberFromRecently:Lcab/snapp/snappuikit/StartDrawableButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/StartDrawableButton;->setLoading(Z)V

    .line 628
    invoke-static {}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->newInstance()Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->setChargeRecentlyMobileNumbersResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;)V

    .line 631
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    .line 632
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView;->a:Lcab/snapp/passenger/units/charge/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge/c;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "recently_bottom_sheet"

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 634
    :cond_0
    new-instance p1, Lcab/snapp/passenger/units/charge/-$$Lambda$kAHBnZDgr2TJE5PSoQpbys6uGnA;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/charge/-$$Lambda$kAHBnZDgr2TJE5PSoQpbys6uGnA;-><init>(Lcab/snapp/passenger/units/charge/ChargeView;)V

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/charge_recently/RecentlyMobileNumbersSheetDialogFragment;->setOnRecentMobileNumberSelectedListener(Lcab/snapp/passenger/units/charge_recently/e;)V

    return-void
.end method
