.class public final Lcab/snapp/passenger/units/main/f;
.super Lcab/snapp/arch/protocol/BaseRouter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "Lcab/snapp/passenger/units/main/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseRouter;-><init>()V

    return-void
.end method


# virtual methods
.method public final routeToAddCreditDialog()V
    .locals 3

    .line 119
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 120
    invoke-static {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->newInstance(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/f;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "top_up_bottom_sheet"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final routeToEmpty()V
    .locals 1

    const v0, 0x7f0a020f

    .line 79
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToFavoriteUnit()V
    .locals 1

    const v0, 0x7f0a0050

    .line 111
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToInbox()V
    .locals 1

    const v0, 0x7f0a0051

    .line 103
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToRating()V
    .locals 1

    const v0, 0x7f0a0053

    .line 25
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToReferralUnit()V
    .locals 1

    const v0, 0x7f0a0052

    .line 95
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToSearchUnit(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0071

    .line 53
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/main/f;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToSettingUnit()V
    .locals 1

    const v0, 0x7f0a0054

    .line 87
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToSnappChargeController(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a02fe

    .line 34
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/main/f;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToTopUpPayment(Landroidx/navigation/NavController;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0a0055

    .line 133
    :try_start_0
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public final routeToTourUnit()V
    .locals 1

    const v0, 0x7f0a0075

    .line 71
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/f;->navigateTo(I)V

    return-void
.end method

.method public final routeToWaiting(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a0264

    .line 63
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/main/f;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final routeToWebHost(Landroid/os/Bundle;)V
    .locals 1

    const v0, 0x7f0a02ff

    .line 43
    invoke-virtual {p0, v0, p1}, Lcab/snapp/passenger/units/main/f;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method
