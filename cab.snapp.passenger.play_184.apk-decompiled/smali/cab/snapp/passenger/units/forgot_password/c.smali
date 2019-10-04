.class public final Lcab/snapp/passenger/units/forgot_password/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;",
        "Lcab/snapp/passenger/units/forgot_password/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroid/widget/TextView$OnEditorActionListener;

.field private c:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcab/snapp/passenger/units/forgot_password/c;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/forgot_password/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->onSendButtonClicked()V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcab/snapp/passenger/units/forgot_password/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$_vvyMiszQrdIGGFqly5tBRJyWdk(Lcab/snapp/passenger/units/forgot_password/c;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/forgot_password/c;->a(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onBeforeRequest()V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->showLoading()V

    .line 80
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 115
    new-instance v0, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$c$_vvyMiszQrdIGGFqly5tBRJyWdk;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$c$_vvyMiszQrdIGGFqly5tBRJyWdk;-><init>(Lcab/snapp/passenger/units/forgot_password/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/forgot_password/c;->b:Landroid/widget/TextView$OnEditorActionListener;

    .line 119
    new-instance v0, Lcab/snapp/passenger/units/forgot_password/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/forgot_password/c$1;-><init>(Lcab/snapp/passenger/units/forgot_password/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/forgot_password/c;->c:Landroid/text/TextWatcher;

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    iget-object v1, p0, Lcab/snapp/passenger/units/forgot_password/c;->b:Landroid/widget/TextView$OnEditorActionListener;

    iget-object v2, p0, Lcab/snapp/passenger/units/forgot_password/c;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->setEditTextListeners(Landroid/widget/TextView$OnEditorActionListener;Landroid/text/TextWatcher;)V

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->setStatusBarColor()V

    :cond_0
    return-void
.end method

.method public final onRequestError()V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->showError(I)V

    .line 92
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->hideLoading()V

    :cond_0
    return-void
.end method

.method public final onResponse()V
    .locals 5

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcab/snapp/passenger/units/forgot_password/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->showSuccessMessage(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->hideLoading()V

    :cond_0
    return-void
.end method

.method public final onSendButtonClicked()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcab/snapp/c/i;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/a;

    iget-object v1, p0, Lcab/snapp/passenger/units/forgot_password/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/forgot_password/a;->requestForgotPassword(Ljava/lang/String;)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    const v1, 0x7f1200a7

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->showEmailError(I)V

    :cond_1
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/ForgotPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 158
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
