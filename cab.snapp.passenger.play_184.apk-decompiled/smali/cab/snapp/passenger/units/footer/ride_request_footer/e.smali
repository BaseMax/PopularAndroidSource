.class public final Lcab/snapp/passenger/units/footer/ride_request_footer/e;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/a;",
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
.method public final navigateToBoxOptions(Landroidx/navigation/NavController;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a00a2

    .line 74
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final navigateToDriverAssignedFooter(Landroidx/navigation/NavController;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a012e

    .line 176
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final navigateToEmpty(Landroidx/navigation/NavController;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a0142

    if-ne v0, v1, :cond_1

    return-void

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a0267

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0079

    .line 105
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    .line 113
    :cond_2
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a00a2

    if-ne v0, v1, :cond_3

    const v0, 0x7f0a0045

    .line 117
    :try_start_1
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final navigateToRideOptions(Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a0267

    if-ne v0, v1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a00a2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0046

    .line 37
    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const v0, 0x7f0a004d

    .line 50
    :try_start_1
    invoke-virtual {p1, v0, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final navigateUpToMainFooter(Landroidx/navigation/NavController;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a0269

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a007b

    .line 142
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const v0, 0x7f0a01ed

    .line 154
    :try_start_1
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
