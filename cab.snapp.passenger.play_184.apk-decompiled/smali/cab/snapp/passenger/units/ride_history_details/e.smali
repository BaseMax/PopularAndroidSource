.class public final Lcab/snapp/passenger/units/ride_history_details/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/ride_history_details/a;",
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
.method public final goToRideRating(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0077

    .line 47
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/ride_history_details/e;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final popRideHistoryDetailsController()V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/e;->navigateUp()V

    return-void
.end method

.method public final routeToSupportController(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0078

    .line 37
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/ride_history_details/e;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
