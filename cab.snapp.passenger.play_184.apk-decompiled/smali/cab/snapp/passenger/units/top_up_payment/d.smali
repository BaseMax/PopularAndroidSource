.class public final Lcab/snapp/passenger/units/top_up_payment/d;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;",
        "Lcab/snapp/passenger/units/top_up_payment/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/b;->reportTabSnappCardInput()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;Z)V
    .locals 0

    .line 340
    iput-boolean p2, p0, Lcab/snapp/passenger/units/top_up_payment/d;->a:Z

    .line 341
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/b;->reportTopUpModalShowCloseToAppMetrica(Z)V

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/b;->reportTabShetabCardsExtendToAppMetrica(Z)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/top_up_payment/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$XHe2kfL8OPJt_8p-SmT4qgQvjuc(Lcab/snapp/passenger/units/top_up_payment/d;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/top_up_payment/d;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic lambda$bVMQKXQ3cVSZFjeec3WpQYQi1r4(Lcab/snapp/passenger/units/top_up_payment/d;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/top_up_payment/d;->b(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->setActiveMethod(I)V

    return-void
.end method

.method final a(I)V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showToast(I)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setSnappCardCode(Ljava/lang/String;)V

    return-void
.end method

.method public final apWalletActivationRequested()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->apWalletActivationRequested()V

    return-void
.end method

.method final b()Ljava/lang/Number;
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->getViewCurrentAmount()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->getCurrentStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final clearAmount()V
    .locals 2

    .line 493
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->updateAmount(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final decrementByFixedAmountRequested()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->decreaseChargeByFixedAmount()V

    return-void
.end method

.method public final hideLoading()V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideLoading()V

    return-void
.end method

.method public final incrementByFixedAmountRequested()V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->increaseChargeByFixedAmount()V

    return-void
.end method

.method public final onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/b;->onApWalletDescriptionMoreInfoClicked(Ljava/lang/String;)V

    return-void
.end method

.method public final onApWalletRetryClicked()V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->onApWalletRetryRequested()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/data/models/PaymentTexts;ZZZ)V
    .locals 3

    .line 332
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    iget-object v0, v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->decreaseByFixedAmountButton:Landroidx/appcompat/widget/AppCompatImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setClickable(Z)V

    .line 339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    new-instance v2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$d$bVMQKXQ3cVSZFjeec3WpQYQi1r4;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$d$bVMQKXQ3cVSZFjeec3WpQYQi1r4;-><init>(Lcab/snapp/passenger/units/top_up_payment/d;)V

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->initMainKeyboardStateListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    new-instance v2, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$d$XHe2kfL8OPJt_8p-SmT4qgQvjuc;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/top_up_payment/-$$Lambda$d$XHe2kfL8OPJt_8p-SmT4qgQvjuc;-><init>(Lcab/snapp/passenger/units/top_up_payment/d;)V

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->initSnappCardKeyboardStateListener(Landroid/view/View$OnFocusChangeListener;)V

    if-eqz p1, :cond_1

    .line 357
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getSnappCardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setSnappCardTitle(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getApWalletTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setApWalletTitle(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getOnlinePaymentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setOnlinePaymentTitle(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getAppWalletRegistrationContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/PaymentTexts;->getAppWalletRegistrationLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setApWalletRegistrationContents(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 365
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showApWalletTab()V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideApWalletTab()V

    :goto_0
    if-eqz p3, :cond_3

    .line 373
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showOnlinePayTab()V

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideOnlinePayTab()V

    :goto_1
    if-eqz p4, :cond_4

    .line 381
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showUssdMethodTab()V

    goto :goto_2

    .line 385
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideUssdMethodTab()V

    :goto_2
    const/4 p1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    if-eqz p4, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    .line 389
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p2, v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->changeTab(I)V

    if-eq v1, v2, :cond_a

    if-eq v1, v0, :cond_9

    if-eq v1, p1, :cond_8

    .line 395
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->a()V

    goto :goto_4

    .line 404
    :cond_8
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->setActiveMethodToSnappCard()V

    goto :goto_4

    .line 401
    :cond_9
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->setActiveMethodToUssd()V

    goto :goto_4

    .line 398
    :cond_a
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->setActiveMethodToBankCard()V

    .line 407
    :goto_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    new-instance p2, Lcab/snapp/passenger/units/top_up_payment/d$1;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/top_up_payment/d$1;-><init>(Lcab/snapp/passenger/units/top_up_payment/d;)V

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->initTextWatcher(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onPaymentError(Ljava/lang/String;Z)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideLoading()V

    if-eqz p2, :cond_1

    .line 167
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showToast(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final onUssdAvailable()V
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showUssdMethodTab()V

    return-void
.end method

.method public final onUssdUnavailable()V
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->hideUssdMethodTab()V

    return-void
.end method

.method public final payRequested()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/b;->chargeUserForConsideringAmount()V

    return-void
.end method

.method public final setActiveMethodToBankCard()V
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->setActiveMethod(I)V

    return-void
.end method

.method public final setActiveMethodToSnappCard()V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->setActiveMethod(I)V

    return-void
.end method

.method public final setActiveMethodToUssd()V
    .locals 2

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->setActiveMethod(I)V

    return-void
.end method

.method public final setAmountTo100000RialRequested()V
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->chargeAmountSelected(I)V

    return-void
.end method

.method public final setAmountTo200000RialRequested()V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/b;

    const v1, 0x30d40

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/top_up_payment/b;->chargeAmountSelected(I)V

    return-void
.end method

.method public final setAppWalletRegistered(I)V
    .locals 1

    .line 510
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setApWalletRegistered(I)V

    :cond_0
    return-void
.end method

.method public final setCurrentCredit(JLjava/lang/Long;I)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setCredit(JLjava/lang/Long;)V

    const/16 v0, 0x3ec

    if-ne p4, v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1, p3}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setCurrentCreditAmount(Ljava/lang/Long;)V

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p3

    check-cast p3, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->setCurrentCreditAmount(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public final setKeyboardIsShowing(Z)V
    .locals 0

    .line 458
    iput-boolean p1, p0, Lcab/snapp/passenger/units/top_up_payment/d;->a:Z

    return-void
.end method

.method public final showLoading()V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showLoading()V

    return-void
.end method

.method public final showNoInternet()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->showNoInternetDialog()V

    return-void
.end method

.method public final switchToTabBasedOnDefaultWallet(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->onApWalletTabClicked()V

    return-void

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->onBankCardTabClicked()V

    :goto_0
    return-void
.end method

.method public final updateUiAccordingToConsideringChargeAmount(Ljava/lang/String;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "0"

    if-eqz p1, :cond_2

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->updateAmount(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/top_up_payment/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->updateAmount(Ljava/lang/String;)V

    return-void
.end method
