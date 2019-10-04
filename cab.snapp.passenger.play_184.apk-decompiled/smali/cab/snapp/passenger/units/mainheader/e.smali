.class public final Lcab/snapp/passenger/units/mainheader/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/mainheader/a;",
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
.method public final navigateToAddFavorite(Landroidx/navigation/NavController;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0069

    .line 59
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final navigateToEmpty()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/e;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a0267

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a0079

    .line 39
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateTo(I)V

    return-void

    :cond_0
    const v0, 0x7f0a0142

    .line 43
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateTo(I)V

    :cond_1
    return-void
.end method

.method public final navigateToJekHeader(Landroidx/navigation/NavController;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a005d

    .line 79
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final navigateToRideOptions()V
    .locals 1

    const v0, 0x7f0a004d

    .line 27
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateTo(I)V

    return-void
.end method
