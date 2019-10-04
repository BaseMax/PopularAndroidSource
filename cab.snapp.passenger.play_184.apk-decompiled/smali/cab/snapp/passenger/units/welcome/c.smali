.class final Lcab/snapp/passenger/units/welcome/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/welcome/WelcomeView;",
        "Lcab/snapp/passenger/units/welcome/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcab/snapp/passenger/units/welcome/c;->a:I

    .line 28
    iput v0, p0, Lcab/snapp/passenger/units/welcome/c;->b:I

    .line 32
    iput v0, p0, Lcab/snapp/passenger/units/welcome/c;->c:I

    .line 36
    iput v0, p0, Lcab/snapp/passenger/units/welcome/c;->d:I

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const p0, 0x7f120197

    return p0

    :cond_0
    const p0, 0x7f12003c

    return p0

    :cond_1
    const p0, 0x7f120270

    return p0

    :cond_2
    const p0, 0x7f1200e6

    return p0

    :cond_3
    const p0, 0x7f1200ae

    return p0
.end method


# virtual methods
.method public final getFirstLanguage()I
    .locals 1

    .line 48
    iget v0, p0, Lcab/snapp/passenger/units/welcome/c;->a:I

    return v0
.end method

.method public final getFourthLanguage()I
    .locals 1

    .line 78
    iget v0, p0, Lcab/snapp/passenger/units/welcome/c;->d:I

    return v0
.end method

.method public final getSecondLanguage()I
    .locals 1

    .line 58
    iget v0, p0, Lcab/snapp/passenger/units/welcome/c;->b:I

    return v0
.end method

.method public final getThirdLanguage()I
    .locals 1

    .line 68
    iget v0, p0, Lcab/snapp/passenger/units/welcome/c;->c:I

    return v0
.end method

.method public final onFirstLanguageClicked()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->proceedWithFirstLanguage()V

    :cond_0
    return-void
.end method

.method public final onFourthLanguageClicked()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    .line 1117
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1119
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->getFourthLanguage()I

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/splash/a;->changeLocale(I)V

    :cond_0
    return-void
.end method

.method public final onLogInClicked()V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->proceedWithLogIn()V

    return-void
.end method

.method public final onReady()V
    .locals 5

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/welcome/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/welcome/a;->getCurrentLocale()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/welcome/a;->getOtherLocaleOptions(I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcab/snapp/passenger/units/welcome/c;->setUpLanguageOptions(IIII)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/WelcomeView;->animateLowerPartButtons()V

    .line 222
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->setStatusBarColor()V

    return-void
.end method

.method public final onSecondLanguageClicked()V
    .locals 2

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    .line 1095
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->getSecondLanguage()I

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/splash/a;->changeLocale(I)V

    :cond_0
    return-void
.end method

.method public final onSignUpClicked()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->proceedWithSignUp()V

    return-void
.end method

.method public final onThirdLanguageClicked()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/a;

    .line 1106
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1108
    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->getThirdLanguage()I

    move-result v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/splash/a;->changeLocale(I)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/WelcomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/WelcomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004c

    .line 230
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final setUpLanguageOptions(IIII)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iput p1, p0, Lcab/snapp/passenger/units/welcome/c;->a:I

    .line 170
    iput p2, p0, Lcab/snapp/passenger/units/welcome/c;->b:I

    .line 171
    iput p3, p0, Lcab/snapp/passenger/units/welcome/c;->c:I

    .line 172
    iput p4, p0, Lcab/snapp/passenger/units/welcome/c;->d:I

    .line 173
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-static {p1}, Lcab/snapp/passenger/units/welcome/c;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/welcome/WelcomeView;->setFirstLanguage(I)V

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-static {p2}, Lcab/snapp/passenger/units/welcome/c;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/welcome/WelcomeView;->setSecondLanguage(I)V

    .line 175
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-static {p3}, Lcab/snapp/passenger/units/welcome/c;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/welcome/WelcomeView;->setThirdLanguage(I)V

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-static {p4}, Lcab/snapp/passenger/units/welcome/c;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/welcome/WelcomeView;->setFourthLanguage(I)V

    :cond_0
    return-void
.end method
