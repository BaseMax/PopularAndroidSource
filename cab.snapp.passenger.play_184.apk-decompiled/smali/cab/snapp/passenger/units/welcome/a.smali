.class public Lcab/snapp/passenger/units/welcome/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/welcome/d;",
        "Lcab/snapp/passenger/units/welcome/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcab/snapp/passenger/units/welcome/a;->a:I

    return-void
.end method


# virtual methods
.method final a()Lcab/snapp/passenger/units/splash/a;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/splash/a;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentLocale()I
    .locals 1

    .line 158
    iget v0, p0, Lcab/snapp/passenger/units/welcome/a;->a:I

    return v0
.end method

.method public getOtherLocaleOptions(I)[I
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    new-array p1, v1, [I

    .line 142
    fill-array-data p1, :array_0

    return-object p1

    :cond_0
    new-array p1, v1, [I

    .line 140
    fill-array-data p1, :array_1

    return-object p1

    :cond_1
    new-array p1, v1, [I

    .line 138
    fill-array-data p1, :array_2

    return-object p1

    :cond_2
    new-array p1, v1, [I

    .line 136
    fill-array-data p1, :array_3

    return-object p1

    :cond_3
    new-array p1, v1, [I

    .line 134
    fill-array-data p1, :array_4

    return-object p1

    nop

    :array_0
    .array-data 4
        0x14
        0x1e
        0x28
        0x32
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x1e
        0xa
        0x28
    .end array-data

    :array_2
    .array-data 4
        0x14
        0x1e
        0xa
        0x32
    .end array-data

    :array_3
    .array-data 4
        0x14
        0xa
        0x28
        0x32
    .end array-data

    :array_4
    .array-data 4
        0xa
        0x1e
        0x28
        0x32
    .end array-data
.end method

.method public onUnitCreated()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/welcome/a;)V

    .line 173
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/welcome/a;->a:I

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/welcome/c;->onReady()V

    .line 179
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/a;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->reset()V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/welcome/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Welcome Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public proceedWithFirstLanguage()V
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/welcome/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/welcome/c;->getFirstLanguage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/splash/a;->changeLocale(I)V

    :cond_0
    return-void
.end method

.method public proceedWithLogIn()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->navigateToLogin()V

    :cond_0
    return-void
.end method

.method public proceedWithSignUp()V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/welcome/a;->a()Lcab/snapp/passenger/units/splash/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->navigateToSignup()V

    :cond_0
    return-void
.end method
