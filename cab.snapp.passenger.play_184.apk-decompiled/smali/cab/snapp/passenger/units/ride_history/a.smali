.class public Lcab/snapp/passenger/units/ride_history/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/ride_history/d;",
        "Lcab/snapp/passenger/units/ride_history/c;",
        ">;"
    }
.end annotation


# static fields
.field protected static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/data/models/RideHistoryInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected b:I

.field protected c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

.field d:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcab/snapp/passenger/units/ride_history/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcab/snapp/passenger/units/ride_history/a;->b:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcab/snapp/passenger/units/ride_history/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    return-void
.end method

.method private synthetic a(ILcab/snapp/passenger/units/ride_history/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 128
    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iput p1, p0, Lcab/snapp/passenger/units/ride_history/a;->b:I

    .line 132
    :cond_0
    iput-object p3, p0, Lcab/snapp/passenger/units/ride_history/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    if-eqz p3, :cond_1

    .line 1149
    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1151
    invoke-virtual {p3}, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;->getRidesList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideHistoryInfo;

    .line 1153
    sget-object v1, Lcab/snapp/passenger/units/ride_history/a;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHumanReadableID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p2, p3}, Lcab/snapp/passenger/units/ride_history/c;->onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/ride_history/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/c;->onRequestError()V

    return-void
.end method

.method public static getRideHistoryInfo(Ljava/lang/String;)Lcab/snapp/passenger/data/models/RideHistoryInfo;
    .locals 1

    .line 62
    :try_start_0
    sget-object v0, Lcab/snapp/passenger/units/ride_history/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 66
    invoke-static {p0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$fBmAA4wR3fA3_I8T-YkXJCJxen8(Lcab/snapp/passenger/units/ride_history/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/ride_history/a;->a(Lcab/snapp/passenger/units/ride_history/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$iniETN66tVtVtsHAHoAd9FAIdkY(Lcab/snapp/passenger/units/ride_history/a;ILcab/snapp/passenger/units/ride_history/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/ride_history/a;->a(ILcab/snapp/passenger/units/ride_history/c;Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V

    return-void
.end method

.method public static updateRatingForRide(Ljava/lang/String;I)V
    .locals 1

    .line 83
    sget-object v0, Lcab/snapp/passenger/units/ride_history/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcab/snapp/passenger/units/ride_history/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->setHasRated(Z)V

    .line 89
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->setRate(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public getRideHistoryCurrentPage()I
    .locals 1

    .line 107
    iget v0, p0, Lcab/snapp/passenger/units/ride_history/a;->b:I

    return v0
.end method

.method public navigateToRideHistoryDetails(Lcab/snapp/passenger/data/models/RideHistoryInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 181
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHumanReadableID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Key Ride History Details Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_history/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_history/d;->routeToRideHistoryDetailsController(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/ride_history/a;)V

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_history/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history/c;->onInitialize(Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;)V

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_history/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_history/d;->setNavigationController(Landroidx/navigation/NavController;)V

    :cond_2
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 222
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_history/a;->e:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Ride History Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public requestNextPage()V
    .locals 4

    .line 166
    iget v0, p0, Lcab/snapp/passenger/units/ride_history/a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1117
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_history/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_history/c;

    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_history/c;->onBeforeRequest()V

    .line 1124
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_history/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 1125
    invoke-virtual {v2, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getRideHistory(I)Lio/reactivex/z;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;

    invoke-direct {v3, p0, v0, v1}, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$iniETN66tVtVtsHAHoAd9FAIdkY;-><init>(Lcab/snapp/passenger/units/ride_history/a;ILcab/snapp/passenger/units/ride_history/c;)V

    new-instance v0, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$fBmAA4wR3fA3_I8T-YkXJCJxen8;

    invoke-direct {v0, v1}, Lcab/snapp/passenger/units/ride_history/-$$Lambda$a$fBmAA4wR3fA3_I8T-YkXJCJxen8;-><init>(Lcab/snapp/passenger/units/ride_history/c;)V

    .line 1126
    invoke-virtual {v2, v3, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1124
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_history/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
