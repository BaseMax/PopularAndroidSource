.class public final Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->pressBack()V

    :cond_0
    return-void
.end method

.method public final onInitialize()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c$1;-><init>(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->setPhoneTextChangeListener(Landroid/text/TextWatcher;)V

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->setStatusBarColor()V

    :cond_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onSendPhoneNumberClicked()V
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    .line 34
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Lcab/snapp/c/i;->isPhoneNumberValid(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f1202b3

    if-eqz v2, :cond_4

    const-string v0, "(\\+98|0)9[0-9]{9}"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->showErrorDialog(I)V

    .line 1136
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->enableSendButton()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "\\+989[0-9]{9}"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "0"

    const-string v2, "+98"

    .line 46
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    :cond_3
    invoke-static {v1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->a(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_4
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->showErrorDialog(I)V

    :cond_5
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/LoginWithPhoneNumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 119
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
