.class public final Lcab/snapp/passenger/units/charge/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/charge/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final navigateToChargeConfirmPayment(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0080

    .line 41
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/charge/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToChargeHistoryController()V
    .locals 1

    const v0, 0x7f0a0082

    .line 25
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/charge/d;->navigateTo(I)V

    return-void
.end method

.method public final routeToChargeSelectAmount(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0081

    .line 33
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/charge/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
