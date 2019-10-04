.class public Lcab/snapp/passenger/units/ride_rating/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/ride_rating/d;",
        "Lcab/snapp/passenger/units/ride_rating/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/data/models/RideRatingModel;

.field protected b:Z

.field protected c:Z

.field d:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    .line 43
    new-instance v0, Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->b:Z

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->c:Z

    return-void
.end method

.method static a()V
    .locals 3

    .line 419
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "rating"

    const-string v2, "comment"

    .line 420
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 421
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Finished"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private synthetic a(ZLcab/snapp/snappnetwork/model/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 5167
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5168
    iget-object p2, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "rate"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5169
    iget-object p2, p0, Lcab/snapp/passenger/units/ride_rating/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->RATING:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 5152
    iget-object p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result p2

    invoke-static {p1, p2}, Lcab/snapp/passenger/units/ride_history/a;->updateRatingForRide(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 5154
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->b:Z

    .line 5155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/c;->onRateSuccess()V

    .line 5159
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->finish()V

    :cond_1
    return-void
.end method

.method private synthetic a(ZLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 5130
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_rating/a;->b:Z

    .line 5131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz p1, :cond_1

    .line 5133
    check-cast p2, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 5134
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 p2, 0x3f7

    if-ne p1, p2, :cond_0

    .line 5136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/c;->onHasRatedBefore()V

    goto :goto_0

    .line 5140
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/c;->onRateError()V

    .line 5143
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->finish()V

    :cond_2
    return-void
.end method

.method static b()V
    .locals 3

    .line 431
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "rating"

    const-string v2, "clickOnReason"

    .line 432
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 433
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Finished"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private c()Lcab/snapp/b/a;
    .locals 2

    .line 106
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private d()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/a;->c()Lcab/snapp/b/a;

    move-result-object v0

    const-string v1, "ride_rating_reasons_shared_pref_key"

    .line 180
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->setRatingReasonsResponse(Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$dbhtnG_iK-IWxiGbkMq5wYv7biY(Lcab/snapp/passenger/units/ride_rating/a;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/ride_rating/a;->a(ZLjava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$q9WzZfpq8c3SrqvoNCnP6v-awJE(Lcab/snapp/passenger/units/ride_rating/a;ZLcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/ride_rating/a;->a(ZLcab/snapp/snappnetwork/model/f;)V

    return-void
.end method


# virtual methods
.method protected a(Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;)V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/a;->c()Lcab/snapp/b/a;

    move-result-object v0

    const-string v1, "ride_rating_reasons_shared_pref_key"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->setRatingReasonsResponse(Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/a;->d()V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 340
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->c:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setRatingPassed(Z)V

    .line 343
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->reset()V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    const-string v1, "ride_rating_driver_info_argument_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    const-string v1, "ride_rating_ride_info_argument_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/d;->navigateUp()V

    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/d;->routeBackToEmpty()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onBackPressed()V

    .line 443
    :cond_0
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onDestroy()V

    return-void
.end method

.method public onUnitCreated()V
    .locals 4

    .line 367
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 368
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/ride_rating/a;)V

    .line 375
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    const-string v1, "ride_rating_driver_info_argument_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    const-string v2, "ride_rating_ride_info_argument_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2222
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->c:Z

    .line 2224
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/data/models/DriverInfo;

    iget-object v3, p0, Lcab/snapp/passenger/units/ride_rating/a;->arguments:Landroid/os/Bundle;

    .line 2225
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/RideInformation;

    .line 2224
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data/models/RideRatingModel;->setFinishRideModels(Lcab/snapp/passenger/data/models/DriverInfo;Lcab/snapp/passenger/data/models/RideInformation;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 3192
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->c:Z

    .line 3194
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    .line 3195
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRideFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3197
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->finish()V

    goto :goto_0

    .line 3205
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3207
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/FinishRide;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    .line 3208
    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FinishRide;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v2

    .line 3207
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data/models/RideRatingModel;->setFinishRideModels(Lcab/snapp/passenger/data/models/DriverInfo;Lcab/snapp/passenger/data/models/RideInformation;)V

    goto :goto_0

    .line 3212
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_rating/a;->e:Lcab/snapp/passenger/c/g;

    .line 3213
    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v2

    .line 3212
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data/models/RideRatingModel;->setFinishRideModels(Lcab/snapp/passenger/data/models/DriverInfo;Lcab/snapp/passenger/data/models/RideInformation;)V

    .line 384
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 386
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 389
    :cond_5
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_rating/a;->d()V

    .line 4083
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 4084
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getRideRatingReasons()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$9nAkdWu5K9XHIsLmjCMfkIvSOIk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$9nAkdWu5K9XHIsLmjCMfkIvSOIk;-><init>(Lcab/snapp/passenger/units/ride_rating/a;)V

    new-instance v2, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$CYKP3Q4mi2mwRxLJPOhXv3fyzRQ;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$CYKP3Q4mi2mwRxLJPOhXv3fyzRQ;-><init>(Lcab/snapp/passenger/units/ride_rating/a;)V

    .line 4085
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 4083
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_rating/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 392
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 394
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_rating/c;->onInitialize(Lcab/snapp/passenger/data/models/RideRatingModel;)V

    .line 4290
    :cond_6
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "rating"

    const-string v2, "show"

    .line 4291
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 4292
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Finished"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 404
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 406
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Ride Finished"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 5075
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 410
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->d:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public requestRate(Z)V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_rating/c;->onNoInternetConnection()V

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 247
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->b:Z

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_rating/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_rating/c;->onBeforeRate()V

    .line 254
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    .line 255
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->rateRide(Lcab/snapp/passenger/data/models/RideRatingModel;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$a$q9WzZfpq8c3SrqvoNCnP6v-awJE;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$a$q9WzZfpq8c3SrqvoNCnP6v-awJE;-><init>(Lcab/snapp/passenger/units/ride_rating/a;Z)V

    new-instance v2, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$a$dbhtnG_iK-IWxiGbkMq5wYv7biY;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/ride_rating/-$$Lambda$a$dbhtnG_iK-IWxiGbkMq5wYv7biY;-><init>(Lcab/snapp/passenger/units/ride_rating/a;Z)V

    .line 256
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_rating/a;->addDisposable(Lio/reactivex/b/c;)V

    if-eqz p1, :cond_3

    .line 270
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_rating/a;->finish()V

    return-void

    .line 1283
    :cond_3
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "rating"

    const-string v1, "send"

    .line 1284
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1285
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Finished"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public toggleReason(Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;Ljava/lang/Boolean;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/ride_rating/RideRatingReason;->getCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/data/models/RideRatingModel;->toggleSelectedReason(IZ)V

    return-void
.end method

.method public updateComment(Ljava/lang/String;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public updateStarRate(I)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/a;->a:Lcab/snapp/passenger/data/models/RideRatingModel;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->setStarRate(I)V

    .line 1309
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "rating"

    const-string v1, "clickOnStar"

    .line 1310
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1311
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Finished"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method
