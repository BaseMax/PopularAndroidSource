.class public Lcab/snapp/passenger/units/request_ride_waiting/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/request_ride_waiting/e;",
        "Lcab/snapp/passenger/units/request_ride_waiting/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final SHOULD_REQUEST_KEY:Ljava/lang/String; = "SHOULD_REQUEST_KEY"


# instance fields
.field a:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/util/Random;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    .line 57
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    .line 61
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->g:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->h:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/request_ride_waiting/a;)Landroid/app/Activity;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->g:Z

    .line 2113
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->PASSENGER_CANCELED_BEFORE_ACCEPT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CANCEL:Ljava/lang/String;

    const-string v3, "Cancel on waiting dialog"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_CANCEL_RIDE_REQUEST:Ljava/lang/String;

    const-string v3, "waiting screen- cancel ride request"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    const v0, 0x7f1201de

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onCancelRideSuccessful(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    .line 271
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->RIDE:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->REQUEST:Ljava/lang/String;

    const-string v2, "Successful request"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_4

    .line 278
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x41a

    if-ne v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onUnderMaintenance()V

    return-void

    :cond_0
    const/16 v1, 0x40d

    if-eq v0, v1, :cond_1

    const/16 v2, 0x40b

    if-eq v0, v2, :cond_1

    const/16 v2, 0x427

    if-ne v0, v2, :cond_3

    .line 287
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onRideRequestError(Ljava/lang/String;)V

    if-ne v0, v1, :cond_2

    .line 290
    iget-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    .line 292
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a()V

    :cond_3
    return-void

    .line 297
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a()V

    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BaseRouter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    const/16 v1, 0x12

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 93
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    const/4 v4, 0x7

    if-ne v1, v4, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 95
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "waiting_motorcycle.gif"

    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "waiting_car_night.gif"

    .line 98
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onNightMode()V

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const-string v1, "waiting_car_day.gif"

    .line 103
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onDayMode()V

    .line 105
    :goto_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file:///android_asset/gifs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingGifReady(Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 185
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->g:Z

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3fc

    if-ne p1, v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    const v0, 0x7f1201de

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onCancelRideSuccessful(I)V

    return-void

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    const v0, 0x7f1201d2

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onCancelRideError(I)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    .line 128
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    .line 129
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRideRequested()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    if-nez v0, :cond_5

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onReleaseResources()V

    .line 151
    :cond_2
    iput-boolean v2, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/e;->navigateUp()V

    goto :goto_1

    .line 131
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onReleaseResources()V

    .line 138
    :cond_4
    iput-boolean v2, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/e;->navigateUp()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/request_ride_waiting/a;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    return p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/request_ride_waiting/a;)Landroid/app/Activity;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/request_ride_waiting/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    return v0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BaseRouter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/request_ride_waiting/a;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->c()V

    return-void
.end method

.method static synthetic j(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/request_ride_waiting/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$2ldXJeugNCEqY5waccyEbMRQw6A(Lcab/snapp/passenger/units/request_ride_waiting/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$4cD6JG-b8lvnjVokwXyiOiyBJxc(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;)V

    return-void
.end method

.method public static synthetic lambda$KU2sbpZOP2dHhwcUyvat8qpt2fE(Lcab/snapp/passenger/units/request_ride_waiting/a;Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;)V

    return-void
.end method

.method public static synthetic lambda$uWP84gyCKTfeNvovw-IaoicqT7k(Lcab/snapp/passenger/units/request_ride_waiting/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 230
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/e;->navigateUp()V

    :cond_0
    return-void
.end method

.method public cancelRideRequest()V
    .locals 3

    .line 1213
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "request"

    const-string v2, "cancel"

    .line 1214
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 1215
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1217
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 168
    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->g:Z

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->cancelRideRequest()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$4cD6JG-b8lvnjVokwXyiOiyBJxc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$4cD6JG-b8lvnjVokwXyiOiyBJxc;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    new-instance v2, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$uWP84gyCKTfeNvovw-IaoicqT7k;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$uWP84gyCKTfeNvovw-IaoicqT7k;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 12

    .line 242
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 256
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "SHOULD_REQUEST_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->h:Z

    .line 261
    :cond_2
    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->h:Z

    if-eqz v0, :cond_3

    .line 264
    iput-boolean v2, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->f:Z

    .line 266
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->requestRide()Lio/reactivex/z;

    move-result-object v0

    new-instance v3, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$KU2sbpZOP2dHhwcUyvat8qpt2fE;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$KU2sbpZOP2dHhwcUyvat8qpt2fE;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    new-instance v4, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$2ldXJeugNCEqY5waccyEbMRQw6A;

    invoke-direct {v4, p0}, Lcab/snapp/passenger/units/request_ride_waiting/-$$Lambda$a$2ldXJeugNCEqY5waccyEbMRQw6A;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    invoke-virtual {v0, v3, v4}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 304
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f12021a

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v3, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 308
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->getStName()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v5, 0x5

    if-eqz v3, :cond_7

    .line 313
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/request_ride_waiting/c;

    iget-object v6, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    .line 314
    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v6

    if-eq v6, v5, :cond_6

    iget-object v6, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    .line 315
    invoke-virtual {v6}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v6

    if-ne v6, v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v6, 0x1

    :goto_1
    iget-object v7, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v7}, Lcab/snapp/passenger/c/g;->isRideReallotted()Z

    move-result v7

    .line 313
    invoke-virtual {v3, v6, v7, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onInitialize(ZZLjava/lang/String;)V

    .line 321
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 322
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_11

    .line 325
    iget-object v3, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 330
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getListWaitingTips()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getListWaitingTips()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 332
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->d:Ljava/util/Random;

    if-nez v0, :cond_8

    .line 334
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->d:Ljava/util/Random;

    .line 336
    :cond_8
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getListWaitingTips()Ljava/util/List;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->d:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/WaitingTips;

    .line 338
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/WaitingTips;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 339
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/WaitingTips;->getDesc()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 343
    :cond_9
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 346
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v7

    .line 347
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getProfileMeta()Lcab/snapp/passenger/data/models/ProfileMeta;

    move-result-object v8

    const v9, 0x7f12008a

    if-eqz v8, :cond_b

    .line 350
    invoke-virtual {v8}, Lcab/snapp/passenger/data/models/ProfileMeta;->getGender()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 351
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v10

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_a

    if-eq v8, v2, :cond_a

    .line 359
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f12008b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 364
    :cond_a
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 369
    :cond_b
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 372
    :goto_2
    invoke-virtual {v6}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v6

    .line 373
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f1201df

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    move-object v0, v7

    .line 378
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v1, v7, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingMessageReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    if-eq v0, v5, :cond_f

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    if-ne v0, v4, :cond_d

    goto :goto_4

    .line 391
    :cond_d
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingGif()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingGif()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 393
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingGif()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingGifReady(Ljava/lang/String;)V

    goto :goto_5

    .line 397
    :cond_e
    invoke-direct {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->b()V

    goto :goto_5

    .line 382
    :cond_f
    :goto_4
    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingPackageGif()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingPackageGif()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getWaitingPackageGif()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingGifReady(Ljava/lang/String;)V

    goto :goto_5

    .line 388
    :cond_10
    invoke-direct {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->b()V

    .line 402
    :cond_11
    :goto_5
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->b:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/request_ride_waiting/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/request_ride_waiting/a$1;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 442
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->c:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    :cond_12
    :goto_6
    return-void
.end method

.method public onUnitResume()V
    .locals 1

    .line 449
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    const/4 v0, 0x1

    .line 450
    iput-boolean v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/a;->e:Z

    .line 451
    invoke-direct {p0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->c()V

    return-void
.end method
