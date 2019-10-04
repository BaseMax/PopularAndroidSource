.class public final Lcab/snapp/passenger/units/support/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/support/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final popSupportController(Landroidx/navigation/NavController;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    :cond_0
    return-void
.end method

.method public final routeToTicketController(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a02f6

    .line 38
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/support/d;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
