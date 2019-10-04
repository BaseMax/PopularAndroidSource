.class final Lcab/snapp/passenger/units/login/loginWithOTP/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;",
        "Lcab/snapp/passenger/units/login/loginWithOTP/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/os/CountDownTimer;

.field b:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/login/loginWithOTP/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getOtpText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3102
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->hideKeyboard()V

    .line 294
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->enableLoginButton()V

    .line 295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithOTP/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getOtpText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->sendValidationCode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    const v1, 0x7f120123

    .line 305
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showError(I)V

    return-void

    .line 311
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showNormalState()V

    :cond_3
    return-void
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->hideLoadingDialog()V

    .line 247
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    const v0, 0x7f120123

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showError(I)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showError(Ljava/lang/String;)V

    return-void

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    const v0, 0x7f1200b9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showError(I)V

    return-void
.end method

.method public final onBackClicked()V
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Ljava/lang/String;Z)V
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->setupTextWatcher()V

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->setStatusBarColor()V

    .line 1110
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showTimerText()V

    .line 1114
    :cond_1
    iget-object p2, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_2

    .line 1116
    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 1118
    :cond_2
    new-instance p2, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c$2;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/c;)V

    iput-object p2, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a:Landroid/os/CountDownTimer;

    .line 1141
    iget-object p2, p0, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    if-eqz p2, :cond_3

    .line 1184
    invoke-virtual {p2}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->hideResendButton()V

    .line 2149
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    if-eqz p2, :cond_4

    .line 2155
    invoke-virtual {p2}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->disableSendButton()V

    .line 2165
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    if-eqz p2, :cond_5

    .line 2170
    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->setPhoneNumberInTitle(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 1

    .line 360
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 219
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
