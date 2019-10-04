.class final Lcab/snapp/passenger/units/splash/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/splash/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final addWelcomeController(Lcab/snapp/passenger/units/welcome/WelcomeController;I)Landroidx/fragment/app/FragmentTransaction;
    .locals 0

    .line 37
    invoke-virtual {p0, p2, p1}, Lcab/snapp/passenger/units/splash/d;->loadChildController(ILcab/snapp/arch/protocol/BaseController;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public final goToSkippablePhoneVerificationUnit()V
    .locals 2

    const v0, 0x7f0a0084

    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/splash/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final removeWelcomeController()V
    .locals 1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/d;->navigateChildUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final routeToLogInController()V
    .locals 2

    const v0, 0x7f0a0064

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/splash/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToMainController()V
    .locals 2

    const v0, 0x7f0a0065

    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/splash/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToSignUpController()V
    .locals 2

    const v0, 0x7f0a0066

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0, v0, v1}, Lcab/snapp/passenger/units/splash/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
