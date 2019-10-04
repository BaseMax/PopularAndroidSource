.class public Lcab/snapp/passenger/units/ride_history_details/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/ride_history_details/e;",
        "Lcab/snapp/passenger/units/ride_history_details/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcab/snapp/passenger/data/models/RideHistoryInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadRideReceipt()V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getReceiptLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getReceiptLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getReceiptLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 124
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/ride_history_details/a;)V

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 137
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 138
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Key Ride History Details Info"

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcab/snapp/passenger/units/ride_history/a;->getRideHistoryInfo(Ljava/lang/String;)Lcab/snapp/passenger/data/models/RideHistoryInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-nez v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/e;->popRideHistoryDetailsController()V

    return-void

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/c;->onInitialize(Lcab/snapp/passenger/data/models/RideHistoryInfo;)V

    :cond_3
    return-void
.end method

.method public rateRide()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    new-instance v1, Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-direct {v1}, Lcab/snapp/passenger/data/models/DriverInfo;-><init>()V

    .line 57
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDriverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/DriverInfo;->setName(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDriverPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/DriverInfo;->setImageUrl(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/DriverInfo;->setVehicleModel(Ljava/lang/String;)V

    const-string v2, "ride_rating_driver_info_argument_key"

    .line 61
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    new-instance v1, Lcab/snapp/passenger/data/models/RideInformation;

    invoke-direct {v1}, Lcab/snapp/passenger/data/models/RideInformation;-><init>()V

    .line 64
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHumanReadableID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/RideInformation;->setRideId(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/RideInformation;->setTitle(Ljava/lang/String;)V

    .line 66
    new-instance v2, Lcab/snapp/passenger/data/models/FormattedAddress;

    invoke-direct {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;-><init>()V

    .line 67
    iget-object v3, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/passenger/data/models/FormattedAddress;->setFormattedAddress(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/RideInformation;->setDestination(Lcab/snapp/passenger/data/models/FormattedAddress;)V

    const-string v2, "ride_rating_ride_info_argument_key"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_history_details/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ride_history_details/e;->goToRideRating(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public supportRide()V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history_details/a;->b:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    const-string v2, "Key Ride History Info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_history_details/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/ride_history_details/e;->routeToSupportController(Landroid/os/Bundle;)V

    return-void
.end method
