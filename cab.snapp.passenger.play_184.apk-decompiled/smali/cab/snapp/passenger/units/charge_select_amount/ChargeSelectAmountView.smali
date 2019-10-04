.class public Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/charge_select_amount/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/charge_select_amount/c;

.field protected b:Lbutterknife/Unbinder;

.field btnDecrease:Landroidx/appcompat/widget/AppCompatImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032f
    .end annotation
.end field

.field btnIncrease:Landroidx/appcompat/widget/AppCompatImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0330
    .end annotation
.end field

.field btnSubmit:Lcab/snapp/snappuikit/LoadingButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00dc
    .end annotation
.end field

.field customAmountLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032d
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

.field etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032e
    .end annotation
.end field

.field ivCalendar:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b8
    .end annotation
.end field

.field ivCircle:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b9
    .end annotation
.end field

.field mainLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00de
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0260
    .end annotation
.end field

.field selectChargeViewContainer:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01e5
    .end annotation
.end field

.field selectPackageTypeContainer:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0280
    .end annotation
.end field

.field tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0310
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public changeChargeAmountBy(J)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/snappuikit/MoneyAmountEditText;->changeAmountBy(J)V

    return-void
.end method

.method public hideCustomAmount()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->customAmountLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideLoading()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectChargeViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public hideSubmitLoading()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnSubmit:Lcab/snapp/snappuikit/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public onBackArrowLayoutClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a01c3
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->onBackClicked()V

    :cond_0
    return-void
.end method

.method public onChargeTypeClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0280
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->a()V

    :cond_0
    return-void
.end method

.method public onDecreaseClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a032f
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->b()V

    .line 1132
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1133
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    .line 1274
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "EnterAmount"

    const-string v3, "TapOnMinus"

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v1

    .line 1275
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "Charge"

    invoke-virtual {v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 1162
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1163
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    sget-wide v1, Lcab/snapp/passenger/units/charge_select_amount/a;->a:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(J)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 163
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->b:Lbutterknife/Unbinder;

    return-void
.end method

.method public onIncreaseClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0330
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_0

    .line 2138
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->b()V

    .line 2139
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2140
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    .line 2269
    new-instance v1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "EnterAmount"

    const-string v3, "TapOnPlus"

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v1

    .line 2270
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "Charge"

    invoke-virtual {v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 2169
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2170
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/c;

    sget-wide v1, Lcab/snapp/passenger/units/charge_select_amount/a;->a:J

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/charge_select_amount/c;->a(J)V

    :cond_0
    return-void
.end method

.method public onSubmitClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00dc
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    if-eqz v0, :cond_0

    .line 3184
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->b()V

    .line 3186
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3187
    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/charge_select_amount/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/charge_select_amount/a;->a()V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcab/snapp/passenger/a/a;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAmountOnEditText(J)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setAmount(J)V

    return-void
.end method

.method public setChargePackageTypeText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMobileNumberEtFocusListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->etAmount:Lcab/snapp/snappuikit/MoneyAmountEditText;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/MoneyAmountEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 42
    check-cast p1, Lcab/snapp/passenger/units/charge_select_amount/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setPresenter(Lcab/snapp/passenger/units/charge_select_amount/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/charge_select_amount/c;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->a:Lcab/snapp/passenger/units/charge_select_amount/c;

    return-void
.end method

.method public setSelectPackageStatus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectPackageTypeContainer:Landroid/view/View;

    const v0, 0x7f08029e

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCircle:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080262

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 292
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060095

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 293
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCalendar:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 295
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectPackageTypeContainer:Landroid/view/View;

    const v0, 0x7f08029d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 296
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCircle:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f080265

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 297
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->tvChargePackageType:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 298
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->ivCalendar:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setSimChargePackage(Lcab/snapp/passenger/data/models/charge/ChargePackage;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/charge/ChargePackage;->getPersianType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->setChargePackageTypeText(Ljava/lang/String;)V

    return-void
.end method

.method public setSubmitButtonEnable(Z)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnSubmit:Lcab/snapp/snappuikit/LoadingButton;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/LoadingButton;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnDecrease:Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f060095

    goto :goto_0

    :cond_0
    const p1, 0x7f06003a

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setSupportImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public showErrorMessage(I)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorMessageTextTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f1200b9

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 244
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorRl:Landroid/widget/RelativeLayout;

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

    .line 245
    new-instance v2, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView$1;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView$1;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v7, 0x12c

    .line 266
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v7, 0x320

    .line 267
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 268
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->errorRl:Landroid/widget/RelativeLayout;

    new-array v1, v1, [F

    aput v4, v1, v3

    aput p1, v1, v5

    invoke-static {v0, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 271
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x1388

    .line 272
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 273
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->mainLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->selectChargeViewContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showSubmitLoading()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->btnSubmit:Lcab/snapp/snappuikit/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/LoadingButton;->setLoading(Z)V

    return-void
.end method
