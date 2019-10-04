.class final Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final routeToLoginWithOTP(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-static {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPController;->newDataBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const v0, 0x7f0a005c

    .line 20
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
