.class public final Lcab/snapp/passenger/units/credit/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/credit/a;",
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
.method public final navigateUp()V
    .locals 0

    .line 13
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseRouter;->navigateUp()V

    return-void
.end method

.method public final routeToSupportController(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a004a

    .line 18
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/credit/e;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
