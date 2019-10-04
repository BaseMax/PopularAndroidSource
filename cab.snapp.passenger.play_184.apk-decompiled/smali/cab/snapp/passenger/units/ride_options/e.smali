.class public final Lcab/snapp/passenger/units/ride_options/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/ride_options/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final navigateToChooseSecondDestinationUnit(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a020f

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0072

    .line 29
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/ride_options/e;->navigateTo(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    const v0, 0x7f0a029c

    .line 33
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/ride_options/e;->navigateTo(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method
