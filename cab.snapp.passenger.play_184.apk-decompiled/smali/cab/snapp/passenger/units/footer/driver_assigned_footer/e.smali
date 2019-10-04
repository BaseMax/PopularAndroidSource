.class public final Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final routeBackToIdleFooter(Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a01ed

    .line 71
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final routeBackToRequestFooter(Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    :cond_0
    return-void
.end method

.method public final routeToPayment(Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a006c

    .line 32
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method
