.class final Lcab/snapp/passenger/units/login/loginWithOTP/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/login/loginWithOTP/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final backToSplash()V
    .locals 1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/d;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a02c8

    .line 21
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/d;->navigateTo(I)V

    return-void
.end method

.method public final navigateUp()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseRouter;->navigateUp()V

    return-void
.end method
