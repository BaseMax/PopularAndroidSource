.class final Lcab/snapp/passenger/units/login/loginWithEmail/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;",
        "Lcab/snapp/passenger/units/login/loginWithEmail/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field protected b:Landroid/text/TextWatcher;

.field c:Ljava/lang/String;

.field protected d:Landroid/text/TextWatcher;

.field e:Ljava/lang/String;

.field protected f:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const-string v0, ""

    .line 26
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a:Ljava/lang/String;

    .line 30
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c$1;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->b:Landroid/text/TextWatcher;

    .line 52
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->c:Ljava/lang/String;

    .line 59
    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c$2;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->d:Landroid/text/TextWatcher;

    .line 85
    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->e:Ljava/lang/String;

    .line 89
    new-instance v0, Lcab/snapp/passenger/units/login/loginWithEmail/c$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c$3;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->f:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/login/loginWithEmail/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 3

    .line 353
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 358
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 362
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->sendRegisterEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 360
    :cond_3
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showMessage(Ljava/lang/String;)V

    :goto_1
    if-eqz p1, :cond_4

    .line 373
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 376
    :cond_4
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->dismissEmailVerificationDialogIfPossible()V

    :cond_5
    :goto_2
    return-void
.end method

.method public final forgetPasswordClicked()V
    .locals 2

    .line 213
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1094
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/d;->routeToForgotPassword()V

    :cond_1
    return-void
.end method

.method public final loginClicked()V
    .locals 7

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->hideKeyboard()V

    .line 131
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getEmailText()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getPasswordText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {v1}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const v3, 0x7f120290

    .line 144
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorOnEmail(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const v3, 0x7f1200a6

    .line 139
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorOnEmail(I)V

    :goto_1
    const/4 v3, 0x1

    :cond_3
    if-eqz v2, :cond_7

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 154
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ge v5, v6, :cond_5

    const v3, 0x7f120295

    .line 156
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorOnPassword(I)V

    goto :goto_3

    .line 159
    :cond_5
    invoke-static {v2}, Lcab/snapp/c/i;->isPasswordValid(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    const v3, 0x7f120184

    .line 161
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorOnPassword(I)V

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_3

    :cond_7
    :goto_2
    const v3, 0x7f120183

    .line 151
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorOnPassword(I)V

    :goto_3
    if-nez v4, :cond_8

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 168
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->resetInputs()V

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final loginWithGoogleClicked()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    .line 1048
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1053
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onNoInternetConnection()V

    return-void

    .line 1058
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onLoginWithGoogleStarted()V

    .line 1059
    iget-object v1, v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a:Lcab/snapp/passenger/f/i;

    if-eqz v1, :cond_1

    .line 1061
    iget-object v0, v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a:Lcab/snapp/passenger/f/i;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/i;->loginOrSignUpWithGoogle()V

    :cond_1
    return-void
.end method

.method public final loginWithPhoneNumberClicked()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    .line 1070
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1072
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/d;->routeToLoginWithPhone()V

    :cond_0
    return-void
.end method

.method public final onEmailNotVerified()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showEmailNotVerifiedDialog()V

    :cond_0
    return-void
.end method

.method public final onFinishLoading()V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->d:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->f:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->setEmailAndPasswordTextWatchers(Landroid/text/TextWatcher;Landroid/text/TextWatcher;)V

    .line 388
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->initField(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->setStatusBarColor()V

    :cond_0
    return-void
.end method

.method public final onLoading()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onLoginWithGoogleStarted()V
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onRegisterEmailError(Ljava/lang/String;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showMessage(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public final onRegisterEmailSuccess()V
    .locals 6

    .line 254
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v4, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1202bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showMessageDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onResendVerificationEmailClicked()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->dismissEmailNotVerifiedDialogIfPossible()V

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithEmail/c;->b:Landroid/text/TextWatcher;

    new-instance v2, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$PvUilDANs_y--UkHzQNRtfgsIPo;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$PvUilDANs_y--UkHzQNRtfgsIPo;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/c;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showEmailVerificationDialog(Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 406
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 409
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final showLoginErrorToUser(I)V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorToUser(I)V

    :cond_0
    return-void
.end method

.method public final showLoginErrorToUser(Ljava/lang/String;)V
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/LoginWithEmailView;->showErrorToUser(Ljava/lang/String;)V

    return-void
.end method

.method public final signUpClicked()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/a;

    .line 1081
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/d;->routeToSignUp()V

    :cond_0
    return-void
.end method
