.class public final Lcab/snapp/passenger/units/ride_history_details/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;",
        "Lcab/snapp/passenger/units/ride_history_details/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackClicked()V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onDownloadRideReceiptClicked()V
    .locals 4

    .line 255
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Details Support"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/a;->downloadRideReceipt()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Lcab/snapp/passenger/data/models/RideHistoryInfo;)V
    .locals 7

    .line 36
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/ride_history_details/c;)V

    if-nez p1, :cond_1

    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    if-nez v0, :cond_2

    return-void

    .line 50
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setToolbarTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1164
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getMap_url()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1208
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getMap_url()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7f060103

    .line 51
    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showTopMapImage(Ljava/lang/String;II)V

    .line 52
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHasRated()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x7

    if-eqz v1, :cond_5

    .line 54
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRateLayout()V

    .line 55
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRideRatingBar()V

    .line 56
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setRating(I)V

    .line 57
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRateRideButton()V

    goto :goto_3

    .line 59
    :cond_5
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-eq v1, v4, :cond_7

    .line 60
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 61
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-ne v1, v2, :cond_6

    goto :goto_2

    .line 67
    :cond_6
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRateLayout()V

    .line 68
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRateRideButton()V

    .line 69
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRideRatingBar()V

    goto :goto_3

    .line 63
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRateLayout()V

    .line 71
    :goto_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 72
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 73
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getLastestRideStatus()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 75
    :cond_8
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->disableDownloadReceiptButton()V

    .line 77
    :cond_9
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDriverPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801d3

    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showDriverImage(Ljava/lang/String;II)V

    .line 78
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDriverName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setDriverName(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 81
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRateLayout()V

    .line 82
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideVehicleModelLayout()V

    .line 84
    :cond_a
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setVehicleModel(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setOriginAddress(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setDestinationAddress(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getRideOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 90
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 92
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showSecondDestination()V

    .line 93
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setSecondDestinationAddress(Ljava/lang/String;)V

    goto :goto_4

    .line 97
    :cond_b
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideSecondDestination()V

    .line 100
    :goto_4
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_c

    .line 102
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRoundTrip()V

    goto :goto_5

    .line 106
    :cond_c
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRoundTrip()V

    .line 108
    :goto_5
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 110
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showRideWaiting()V

    .line 111
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->setRideWaiting(Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :cond_d
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideRideWaiting()V

    .line 117
    :goto_6
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/Options;->getServicePrice()D

    move-result-wide v1

    cmpl-double v3, v1, v4

    if-lez v3, :cond_e

    .line 119
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showParcel()V

    goto :goto_7

    .line 123
    :cond_e
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideParcel()V

    .line 126
    :cond_f
    :goto_7
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getRows()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getRows()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 128
    new-instance v1, Lcab/snapp/passenger/a/i;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getRows()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcab/snapp/passenger/a/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 129
    new-instance p1, Lcab/snapp/passenger/units/ride_history_details/c$1;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcab/snapp/passenger/units/ride_history_details/c$1;-><init>(Lcab/snapp/passenger/units/ride_history_details/c;Landroid/content/Context;)V

    .line 136
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->showDetailsRecycler()V

    .line 137
    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->loadRideHistoryDetailsFields(Lcab/snapp/passenger/a/i;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_8

    .line 141
    :cond_10
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->hideDetailsRecycler()V

    .line 143
    :goto_8
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->setStatusBarColor()V

    :cond_11
    :goto_9
    return-void
.end method

.method public final onRateRideClicked()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/a;->rateRide()V

    :cond_0
    return-void
.end method

.method public final onSupportClicked()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history_details/c;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Details Support"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/a;->supportRide()V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history_details/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_history_details/RideHistoryDetailsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 151
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
