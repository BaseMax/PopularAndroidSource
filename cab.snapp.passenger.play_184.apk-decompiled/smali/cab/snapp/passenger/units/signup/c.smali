.class public final Lcab/snapp/passenger/units/signup/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/signup/SignUpView;",
        "Lcab/snapp/passenger/units/signup/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcab/snapp/passenger/units/signup/c;->a:Z

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcab/snapp/passenger/units/signup/c;->b:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcab/snapp/passenger/units/signup/c;->d:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->hideLoading()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->hideSignUpWithGoogleLoading()V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Z
    .locals 1

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final isEmailEmpty()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPasswordEmpty()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onBeforeLoginWithGoogleRequest()V
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->showSignUpWithGoogleLoading()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 1

    .line 1194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->showLoading()V

    :cond_0
    return-void
.end method

.method public final onEmailSupportClicked()V
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/a;->sendEmailToSnappSupportCenter(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onEmailTextChanged(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/SignUpView;->hideEmailError()V

    :cond_1
    return-void
.end method

.method public final onFullNameTextChanged(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/c;->d:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/SignUpView;->hideFullNameError()V

    :cond_1
    return-void
.end method

.method public final onNewsLetterCheckChanged(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcab/snapp/passenger/units/signup/c;->a:Z

    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 335
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onOnSignUpLimitExceeded()V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->showSignUpLimitExceedDialog()V

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->hideLoading()V

    :cond_0
    return-void
.end method

.method public final onPasswordTextChanged(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 157
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/signup/c;->b:Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/SignUpView;->hidePasswordError()V

    :cond_1
    return-void
.end method

.method public final onRequestError()V
    .locals 0

    .line 346
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->a()V

    .line 347
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->b()V

    return-void
.end method

.method public final onRequestError(I)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/c;->onRequestError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRequestError(Ljava/lang/String;)V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->a()V

    .line 294
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->b()V

    .line 295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/signup/SignUpView;->showError(Ljava/lang/String;)Lcab/snapp/snappdialog/b;

    :cond_0
    return-void
.end method

.method public final onRequestSuccess()V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->a()V

    .line 315
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->b()V

    return-void
.end method

.method public final onSignUpClick()V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f120291

    .line 50
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/SignUpView;->showFullNameError(I)V

    return-void

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->isEmailEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f1200a6

    .line 56
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/SignUpView;->showEmailError(I)V

    return-void

    .line 60
    :cond_2
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->d()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f120290

    .line 62
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/SignUpView;->showEmailError(I)V

    return-void

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->isPasswordEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f120183

    .line 68
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/SignUpView;->showPasswordError(I)V

    return-void

    .line 72
    :cond_4
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/c;->e()Z

    move-result v1

    if-nez v1, :cond_5

    const v1, 0x7f120295

    .line 74
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/signup/SignUpView;->showPasswordError(I)V

    return-void

    .line 1183
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->hideKeyboard()V

    .line 80
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/signup/c;->d:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/signup/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/signup/c;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcab/snapp/passenger/units/signup/c;->a:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/units/signup/a;->requestSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public final onSignUpWithGoogleClick()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/a;->requestSignUpWithGoogle()V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/SignUpView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/SignUpView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 355
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
