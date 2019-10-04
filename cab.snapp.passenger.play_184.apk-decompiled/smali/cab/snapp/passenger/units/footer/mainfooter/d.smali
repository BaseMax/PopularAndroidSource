.class public final Lcab/snapp/passenger/units/footer/mainfooter/d;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/footer/mainfooter/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final navigateToDriverAssignedFooter()V
    .locals 1

    const v0, 0x7f0a012e

    .line 27
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateTo(I)V

    return-void
.end method

.method public final navigateToMainFooter()V
    .locals 1

    const v0, 0x7f0a01ed

    .line 35
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateTo(I)V

    return-void
.end method

.method public final navigateToRideRequestFooter()V
    .locals 1

    const v0, 0x7f0a0269

    .line 19
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateTo(I)V

    return-void
.end method
