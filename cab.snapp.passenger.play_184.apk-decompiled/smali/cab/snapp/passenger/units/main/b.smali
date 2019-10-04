.class public Lcab/snapp/passenger/units/main/b;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/main/f;",
        "Lcab/snapp/passenger/units/main/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY:Ljava/lang/String;

.field public static final MAIN_MAP_VIEW_ID:I = 0x7f0a0397


# instance fields
.field a:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/c/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcab/snapp/b/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcab/snapp/passenger/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final l:I

.field private final m:I

.field private n:Landroidx/navigation/NavController;

.field private o:Landroidx/navigation/NavController;

.field private p:Lcab/snapp/passenger/f/j;

.field private q:I

.field private r:Lio/reactivex/b/c;

.field private s:Lio/reactivex/b/c;

.field private t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/main/b;->JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0x3e9

    .line 108
    iput v0, p0, Lcab/snapp/passenger/units/main/b;->l:I

    const/16 v0, 0x3f0

    .line 115
    iput v0, p0, Lcab/snapp/passenger/units/main/b;->m:I

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcab/snapp/passenger/units/main/b;->q:I

    .line 206
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->u:Z

    .line 218
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->w:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/main/b;->y:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->getLocationObservable(Z)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/main/-$$Lambda$b$a0iMGBHIjq_X4UM7i5azp6M4s8c;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$a0iMGBHIjq_X4UM7i5azp6M4s8c;-><init>(Lcab/snapp/passenger/units/main/b;)V

    .line 830
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->s:Lio/reactivex/b/c;

    .line 871
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->s:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 409
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/j;->setCurrentState(I)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->checkForUpdateBanner()V

    .line 417
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    const v0, 0x7f08012c

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 470
    :pswitch_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/main/d;->onFinished(I)V

    .line 472
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRatingPassed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isPackageDelivery()Z

    move-result v0

    if-nez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onNavigatingToRatingUnit()V

    .line 477
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/f;->routeToRating()V

    goto/16 :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->reset()V

    goto/16 :goto_0

    .line 466
    :pswitch_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onPassengerBoarded()V

    goto :goto_0

    .line 463
    :pswitch_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onDriverArrived()V

    goto :goto_0

    .line 460
    :pswitch_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onRideAccepted()V

    goto :goto_0

    .line 452
    :pswitch_4
    iget v0, p0, Lcab/snapp/passenger/units/main/b;->q:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v2, "SHOULD_REQUEST_KEY"

    .line 455
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 456
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/main/f;->routeToWaiting(Landroid/os/Bundle;)V

    goto :goto_0

    .line 449
    :pswitch_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onDestinationSelected()V

    goto :goto_0

    .line 446
    :pswitch_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->onOriginSelected(I)V

    goto :goto_0

    .line 424
    :pswitch_7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$J5pYAmIvTHO103V6vTi51NA6x_c;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$J5pYAmIvTHO103V6vTi51NA6x_c;-><init>(Lcab/snapp/passenger/units/main/b;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 441
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/main/d;->onIdle(I)V

    .line 442
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    const v1, 0x7f120178

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->onUpdateLocationSelectorContentDescription(I)V

    .line 488
    :cond_2
    :goto_0
    iput p1, p0, Lcab/snapp/passenger/units/main/b;->q:I

    .line 2497
    :cond_3
    iget p1, p0, Lcab/snapp/passenger/units/main/b;->q:I

    const-string v0, "Pre-ride"

    const-string v1, "show"

    if-nez p1, :cond_4

    .line 2499
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "setOrigin"

    .line 2500
    invoke-virtual {p1, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2502
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_4
    const/4 v2, 0x1

    if-ne p1, v2, :cond_5

    .line 2507
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "setDestination"

    .line 2508
    invoke-virtual {p1, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2510
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/location/Location;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 569
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "coordinate"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->CURRENT_LOCATION_IN_APP_LAUNCH:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    .line 576
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/b;->w:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/mapmodule/a/b/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6364
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->id:I

    const v1, 0x7f0a0397

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6367
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->type:I

    const/16 v1, 0x7d2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6373
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onMapStoppedMoving()V

    goto :goto_0

    .line 6370
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onMapStartMoving()V

    .line 7278
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_3

    .line 7280
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->hideLoadingForSnappCabItemClickedFromSnappServices()V

    .line 1529
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/j;->handleEvent(Lcab/snapp/mapmodule/a/b/c;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/OptionalConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1568
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->checkForUpdateBanner()V

    const/4 v0, 0x1

    .line 1569
    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->u:Z

    if-eqz p1, :cond_0

    .line 1570
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1572
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/d;->onOptionalConfigIsReady(Lcab/snapp/passenger/data/models/OptionalConfig;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ChangeLogSeenResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 929
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->removeChangeLogList()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1535
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 1537
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(I)V

    return-void

    .line 1539
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_1

    .line 1541
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/j;->setServiceType(I)V

    return-void

    .line 1543
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_2

    .line 1545
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/j;->updateSecondDestinationMarker()V

    return-void

    .line 1547
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3f4

    if-ne v0, v1, :cond_3

    .line 1549
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/j;->updateDriverMarker()V

    return-void

    .line 1551
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_4

    .line 1553
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1555
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v1, "SHOULD_REQUEST_KEY"

    .line 1556
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1557
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/f;->routeToWaiting(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1623
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1625
    iput-boolean p1, p0, Lcab/snapp/passenger/units/main/b;->v:Z

    .line 6348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6353
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->onHandleShowCase()V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcab/snapp/passenger/data/models/GeocodeMasterModel;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x3e9

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    iput-object p1, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 392
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 394
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    new-instance v6, Lcab/snapp/mapmodule/a/a/e;

    const v1, 0x7f0a0397

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 397
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 398
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcab/snapp/mapmodule/a/a/e;-><init>(IDD)V

    .line 394
    invoke-virtual {p1, v6}, Lcab/snapp/mapmodule/a;->changeCenter(Lcab/snapp/mapmodule/a/a/e;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Landroid/location/Location;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    .line 832
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_5

    .line 834
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 836
    instance-of v0, p1, Lcab/snapp/passenger/data/models/NullLocation;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 838
    check-cast p1, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isBecauseDenyPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->y:Z

    .line 839
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 841
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    goto :goto_0

    .line 843
    :cond_1
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->y:Z

    if-nez v0, :cond_2

    .line 845
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationModeBatterySavingOrPhoneOnly()Z

    move-result p1

    if-nez p1, :cond_5

    .line 847
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/main/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isPermanentlyDeniedPermission()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 852
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->onPermissionRequestIsDenied()V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_4

    .line 859
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/j;->setCurrentLocation(Landroid/location/Location;)V

    .line 861
    :cond_4
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Landroid/location/Location;)V

    .line 865
    :cond_5
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->s:Lio/reactivex/b/c;

    if-eqz p1, :cond_6

    .line 867
    invoke-interface {p1}, Lio/reactivex/b/c;->dispose()V

    .line 868
    iput-object v1, p0, Lcab/snapp/passenger/units/main/b;->s:Lio/reactivex/b/c;

    :cond_6
    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private b()Z
    .locals 2

    .line 882
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 883
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 884
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v1, 0x7f0a020f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic c()V
    .locals 3

    .line 425
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onNavigatingToRatingUnit()V

    .line 434
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/f;->routeToRating()V

    :cond_0
    return-void
.end method

.method private synthetic c(Landroid/location/Location;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    .line 766
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_5

    .line 768
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 770
    instance-of v0, p1, Lcab/snapp/passenger/data/models/NullLocation;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 772
    check-cast p1, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    return-void

    .line 776
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isBecauseDenyPermission()Z

    move-result v0

    if-nez v0, :cond_2

    .line 778
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationEnabled()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationModeBatterySavingOrPhoneOnly()Z

    move-result p1

    if-nez p1, :cond_5

    .line 780
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    return-void

    .line 783
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isPermanentlyDeniedPermission()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 785
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->onPermissionRequestIsDenied()V

    return-void

    .line 791
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_4

    .line 793
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/j;->handleOnLocationClicked(Landroid/location/Location;)V

    .line 795
    :cond_4
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Landroid/location/Location;)V

    :cond_5
    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/main/b;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcab/snapp/passenger/units/main/b;->y:Z

    return p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/main/b;)Z
    .locals 0

    .line 89
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/main/b;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->a()V

    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/main/b;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$09V5AI947v9dpWsiINt9fYXko7c(Lcab/snapp/passenger/units/main/b;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->c(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic lambda$8-UnBwpiqUHj-Dqr6r9VPd5grwE(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/main/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$BzPgYd0T-oLsILcVqLf8F-EpTPY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/main/b;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$J5pYAmIvTHO103V6vTi51NA6x_c(Lcab/snapp/passenger/units/main/b;)V
    .locals 0

    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->c()V

    return-void
.end method

.method public static synthetic lambda$MIiLQwInB6TkylwvoNQ1-AinxF0(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/main/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$Q_odJPuYFSXMHT5VTVvuk6jQeJU(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/main/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$QbYJFt7WG6-fm2LQ__p7xT1it2U(Lcab/snapp/passenger/units/main/b;Lcab/snapp/mapmodule/a/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Lcab/snapp/mapmodule/a/b/c;)V

    return-void
.end method

.method public static synthetic lambda$R7GFyXLb5fE1bLL8WQURAhnZ6Wo(Lcab/snapp/passenger/units/main/b;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic lambda$XJpbhQW2cVbAIer5FDiAAgxujiY(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/data_access_layer/network/responses/ChangeLogSeenResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ChangeLogSeenResponse;)V

    return-void
.end method

.method public static synthetic lambda$a0iMGBHIjq_X4UM7i5azp6M4s8c(Lcab/snapp/passenger/units/main/b;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->b(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic lambda$mqc0P6SAlhCvNP2msLy6-RTid3A(Lcab/snapp/passenger/units/main/b;Lcab/snapp/passenger/data/models/OptionalConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Lcab/snapp/passenger/data/models/OptionalConfig;)V

    return-void
.end method

.method public static synthetic lambda$neX8YqiIpykdmFEjW7nf_1QCKRw(Lcab/snapp/passenger/units/main/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$yURfV5IpDDGeF529A4h0aOIC1mk(Lcab/snapp/passenger/units/main/b;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/main/b;->a(Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public chargeItemClicked(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V
    .locals 4

    .line 1172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/main/d;->onNoInternetConnection()V

    return-void

    .line 3189
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_CHARGE:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_CHARGE_OPEN:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    :cond_1
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3199
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3200
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_CHARGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3201
    invoke-virtual {v0, v3}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3202
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Homescreen Choice SnappCharge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3207
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 3212
    :goto_0
    :try_start_1
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Services"

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getAppmetricaTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 3213
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 3217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3218
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 1179
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1180
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/f;->routeToSnappChargeController(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public checkForUpdateBanner()V
    .locals 3

    .line 519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 523
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 525
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    .line 526
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 527
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    .line 528
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->isUpdateDeniedByUser()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->shouldUpdateBeforeRide()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 535
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onShowUpdateBannerBeforeRide()V

    return-void

    .line 537
    :cond_2
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->shouldUpdateInRide()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 539
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    .line 540
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 542
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onShowUpdateBannerInRide()V

    return-void

    .line 546
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onHideUpdateBanner()V

    return-void

    .line 530
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onHideUpdateBanner()V

    :cond_6
    :goto_1
    return-void
.end method

.method public contentSelected(Lcab/snapp/passenger/data/models/snapp_group/BannerItem;I)V
    .locals 6

    .line 3369
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_NEWS:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3370
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_BANNER:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getReferralLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "][tap]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 3376
    iget-object p2, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_BANNER_1:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    new-instance p2, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3379
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3380
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3381
    invoke-virtual {p2, v3}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3382
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Homescreen Choice Banner 1"

    invoke-virtual {v0, v1, p2}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3387
    iget-object p2, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_BANNER_2:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    new-instance p2, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {p2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3390
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3391
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3392
    invoke-virtual {p2, v3}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3393
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Homescreen Choice Banner 2"

    invoke-virtual {v0, v1, p2}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V

    .line 3401
    :cond_1
    :goto_0
    :try_start_0
    new-instance p2, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p2}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "Banners"

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getAppmetricaTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p2

    invoke-virtual {p2}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p2

    .line 3402
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "JekHome"

    invoke-virtual {v0, v1, p2}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 3406
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3407
    invoke-static {p2}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 1351
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1353
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1354
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->getReferralLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTENT_URL_KEY"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/BannerItem;->isTopBarHidden()Z

    move-result p1

    const-string v0, "IS_TOP_BAR_HIDDEN"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1356
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/main/f;->routeToWebHost(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public denyUpdate()V
    .locals 1

    .line 915
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->denyUpdate()V

    return-void
.end method

.method public getController()Lcab/snapp/arch/protocol/BaseController;
    .locals 1

    .line 1742
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    return-object v0
.end method

.method public getFooterNavController()Landroidx/navigation/NavController;
    .locals 1

    .line 240
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->n:Landroidx/navigation/NavController;

    return-object v0
.end method

.method public getHeaderNavController()Landroidx/navigation/NavController;
    .locals 1

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->o:Landroidx/navigation/NavController;

    return-object v0
.end method

.method public handleDrawerClosed()V
    .locals 3

    .line 975
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 976
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setIsDrawerOpened(Z)V

    :cond_0
    return-void
.end method

.method public handleDrawerOpened()V
    .locals 3

    .line 960
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 961
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->e:Lcab/snapp/passenger/c/f;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/f;->fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/units/main/-$$Lambda$b$MIiLQwInB6TkylwvoNQ1-AinxF0;->INSTANCE:Lcab/snapp/passenger/units/main/-$$Lambda$b$MIiLQwInB6TkylwvoNQ1-AinxF0;

    sget-object v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$8-UnBwpiqUHj-Dqr6r9VPd5grwE;->INSTANCE:Lcab/snapp/passenger/units/main/-$$Lambda$b$8-UnBwpiqUHj-Dqr6r9VPd5grwE;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 964
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 966
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setIsDrawerOpened(Z)V

    :cond_0
    return-void
.end method

.method public handleJekBottomSheetClosed()V
    .locals 3

    .line 1019
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->x:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1021
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setJekBottomSheetOpened(Z)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_1

    .line 1028
    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->handleMapForCabScreen()V

    :cond_1
    return-void
.end method

.method public handleJekBottomSheetOpened()V
    .locals 3

    .line 988
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->x:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 990
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 992
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setJekBottomSheetOpened(Z)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->handleMapForJekScreen()V

    .line 1002
    :cond_1
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Show"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1003
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1008
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleLocationSelected()V
    .locals 7

    .line 2685
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "Pre-ride"

    const-string v2, "pinFixed"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 2687
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v4, "setOrigin"

    .line 2688
    invoke-virtual {v0, v4, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2689
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2690
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto :goto_0

    .line 2693
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 2695
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v4, "setDestination"

    .line 2696
    invoke-virtual {v0, v4, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2697
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2698
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 639
    :cond_1
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_4

    .line 642
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->isOriginCenterOfMap()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->isEverInaccurateOriginDialogShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->handleInaccurateOriginSelectedLocation()V

    return-void

    .line 653
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v2, v2, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-object v4, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v4, v4, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setOriginLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 654
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-object v1, v1, Lcab/snapp/passenger/f/j;->lastFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setOriginFormattedAddress(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    const v1, 0x7f1201f9

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->onUpdateLocationSelectorContentDescription(I)V

    .line 659
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-eqz v0, :cond_5

    .line 661
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->g:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v3, v0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v5, v0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-static/range {v1 .. v6}, Lcab/snapp/passenger/f/p;->requestLogOrigin(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V

    goto :goto_1

    .line 664
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 666
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v2, v2, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-object v4, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v4, v4, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 667
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-object v1, v1, Lcab/snapp/passenger/f/j;->lastFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationFormattedAddress(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-object v1, v1, Lcab/snapp/passenger/f/j;->lastFormattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationFormattedDetailsAddress(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-eqz v0, :cond_5

    .line 672
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->g:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v3, v0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v5, v0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-static/range {v1 .. v6}, Lcab/snapp/passenger/f/p;->requestLogDestination(Lcab/snapp/passenger/data_access_layer/a/d;Ljava/lang/String;DD)V

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->t:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    return-void
.end method

.method public handleSeenChangeLog(I)V
    .locals 2

    .line 926
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->g:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 927
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->requestSeenChangeLog(I)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/main/-$$Lambda$b$XJpbhQW2cVbAIer5FDiAAgxujiY;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$XJpbhQW2cVbAIer5FDiAAgxujiY;-><init>(Lcab/snapp/passenger/units/main/b;)V

    sget-object v1, Lcab/snapp/passenger/units/main/-$$Lambda$b$BzPgYd0T-oLsILcVqLf8F-EpTPY;->INSTANCE:Lcab/snapp/passenger/units/main/-$$Lambda$b$BzPgYd0T-oLsILcVqLf8F-EpTPY;

    .line 928
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 926
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 2945
    :try_start_0
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "What\'sNew"

    const-string v1, "ok"

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2946
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Popup"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2950
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2951
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public isOriginCenterOfMap()Z
    .locals 6

    .line 1067
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_0

    .line 1069
    new-instance v1, Lcab/snapp/passenger/data/models/PlaceLatLng;

    iget-wide v2, v0, Lcab/snapp/passenger/f/j;->centerLatitude:D

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-wide v4, v0, Lcab/snapp/passenger/f/j;->centerLongitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    .line 1070
    invoke-static {v1}, Lcab/snapp/passenger/f/h;->shouldShowCenterOfTehranDialog(Lcab/snapp/passenger/data/models/PlaceLatLng;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public itemCabClicked()V
    .locals 4

    const-string v0, "[tap]"

    .line 3128
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3130
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_CAB_OPEN:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    :cond_0
    :try_start_0
    new-instance v1, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3136
    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3137
    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_CAB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3138
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3139
    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v3, "Homescreen Choice Cab"

    invoke-virtual {v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V

    .line 3140
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_CAB:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3145
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public navigateToSearch()V
    .locals 7

    .line 708
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 710
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 711
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    const-string v2, "Key Is Pushed For"

    const-string v3, "[tap]"

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 713
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v5, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v6, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SEARCH_ORIGIN:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 718
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v5, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SEARCH_DESTINATION:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 719
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const/16 v1, 0x3e9

    const-string v2, "Key Search Request Code"

    .line 721
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 723
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/main/f;->routeToSearchUnit(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public navigateToWaiting(Landroid/os/Bundle;)V
    .locals 1

    .line 734
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/main/f;->routeToWaiting(Landroid/os/Bundle;)V

    .line 738
    iget-object p1, p0, Lcab/snapp/passenger/units/main/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {p1}, Lcab/snapp/passenger/f/o;->cancelAll()V

    :cond_0
    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 3

    .line 1720
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onApplicationRootBackPressed()V

    .line 1721
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1724
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->isDrawerOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onClosingSideMenu()V

    return-void

    .line 1728
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->isJekBottomSheetOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 1730
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->openJekBottomSheet()V

    .line 5620
    iget v0, p0, Lcab/snapp/passenger/units/main/b;->q:I

    if-nez v0, :cond_1

    .line 5622
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "setOrigin"

    const-string v2, "BackToJeK"

    .line 5623
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 5625
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1759
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onDestroy()V

    .line 1760
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_0

    .line 1762
    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->dispose()V

    .line 1764
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1766
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->release()V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 12

    .line 1491
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 1492
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1497
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/main/b;)V

    .line 1499
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/units/main/b;->JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->x:Ljava/lang/String;

    .line 1501
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainController;

    if-nez v0, :cond_1

    return-void

    .line 1507
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1509
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/f;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 4289
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getFinishedRide()Lcab/snapp/passenger/data/models/FinishRide;

    move-result-object v0

    const-string v2, "HAS_SEEN_JEK_TOUR_SHARED_PREF_KEY"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4291
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 4292
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 4298
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4300
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 4301
    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v3

    .line 4302
    iget-object v5, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v5}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    goto :goto_0

    .line 4309
    :cond_4
    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 4310
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4312
    iput-boolean v1, p0, Lcab/snapp/passenger/units/main/b;->v:Z

    .line 4313
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/main/f;->routeToTourUnit()V

    .line 4314
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 4316
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    goto :goto_1

    .line 4305
    :cond_6
    :goto_0
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 4327
    :cond_7
    :goto_1
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->v:Z

    if-nez v0, :cond_8

    .line 4332
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 4339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getPassengerChangeLogList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/units/main/d;->onWhatsNewDataReady(Ljava/util/List;)V

    .line 1516
    :cond_8
    new-instance v0, Lcab/snapp/passenger/f/j;

    const v6, 0x7f0a0397

    iget-object v7, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    iget-object v8, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    iget-object v9, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    iget-object v10, p0, Lcab/snapp/passenger/units/main/b;->g:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v11, p0, Lcab/snapp/passenger/units/main/b;->i:Lcab/snapp/b/a;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcab/snapp/passenger/f/j;-><init>(ILcab/snapp/passenger/c/b;Lcab/snapp/passenger/c/g;Lcab/snapp/passenger/c/e;Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/b/a;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    .line 1517
    iput v4, p0, Lcab/snapp/passenger/units/main/b;->q:I

    .line 1519
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1521
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/d;->onInitialize(Z)V

    .line 1522
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->getFooterContainerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->n:Landroidx/navigation/NavController;

    .line 1523
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->getHeaderContainerView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->o:Landroidx/navigation/NavController;

    .line 1526
    :cond_a
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$QbYJFt7WG6-fm2LQ__p7xT1it2U;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$QbYJFt7WG6-fm2LQ__p7xT1it2U;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1532
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/main/b;->a(I)V

    .line 1534
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$R7GFyXLb5fE1bLL8WQURAhnZ6Wo;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$R7GFyXLb5fE1bLL8WQURAhnZ6Wo;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1563
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->u:Z

    if-nez v0, :cond_b

    .line 1565
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    .line 1566
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->fetchAndRefreshOptionalConfig()Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$mqc0P6SAlhCvNP2msLy6-RTid3A;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$mqc0P6SAlhCvNP2msLy6-RTid3A;-><init>(Lcab/snapp/passenger/units/main/b;)V

    sget-object v3, Lcab/snapp/passenger/units/main/-$$Lambda$b$Q_odJPuYFSXMHT5VTVvuk6jQeJU;->INSTANCE:Lcab/snapp/passenger/units/main/-$$Lambda$b$Q_odJPuYFSXMHT5VTVvuk6jQeJU;

    .line 1567
    invoke-virtual {v0, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1565
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1580
    :cond_b
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/main/b$1;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/main/b$1;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1579
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1593
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/tour/b;->getTourFinishedPrivateChannelId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/main/b$2;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/main/b$2;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1592
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1609
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/mainheader/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcab/snapp/passenger/units/main/b$3;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/main/b$3;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1608
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1622
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->x:Ljava/lang/String;

    new-instance v3, Lcab/snapp/passenger/units/main/-$$Lambda$b$neX8YqiIpykdmFEjW7nf_1QCKRw;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$neX8YqiIpykdmFEjW7nf_1QCKRw;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1621
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 1631
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->d:Lcab/snapp/passenger/c/h;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/h;->getSearchResults()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/main/-$$Lambda$b$yURfV5IpDDGeF529A4h0aOIC1mk;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$yURfV5IpDDGeF529A4h0aOIC1mk;-><init>(Lcab/snapp/passenger/units/main/b;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 1633
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1636
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/d;->setUserType(Z)V

    .line 1638
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1641
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/main/d;->setShouldShowJek(Z)V

    .line 1643
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_f

    .line 4446
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->i:Lcab/snapp/b/a;

    const-string v2, "FIRST_TIME_SEE_JEK"

    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_4

    .line 4452
    :cond_d
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->i:Lcab/snapp/b/a;

    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_f

    .line 4475
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->ONBOARDING_SNAPP_GROUP:Ljava/lang/String;

    const-string v4, "[show]"

    invoke-virtual {v0, v1, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 4479
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4480
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 5461
    :goto_5
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->i:Lcab/snapp/b/a;

    if-eqz v0, :cond_f

    .line 5465
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 1748
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 1749
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    .line 1750
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_0

    .line 1752
    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->hideUserLocationIndicator()V

    :cond_0
    return-void
.end method

.method public onUnitResume()V
    .locals 4

    .line 1663
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 1665
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->getBanners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->getServiceTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/d;->getBanners()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/d;->getServices()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->k:Lcab/snapp/passenger/c/d;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/d;->getServiceTypes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/main/d;->onSnappJekDataProvided(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1670
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->resetStatusBarColor()V

    .line 1674
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Map Screen"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->hasRideDeeplink()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1678
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->checkDeepLink()V

    .line 1679
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->refreshCoordinationMarkers()V

    .line 1680
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1682
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/f;->routeToEmpty()V

    .line 1685
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1687
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->setShouldShowJek(Z)V

    .line 1688
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/d;->setHasDeeplink(Z)V

    .line 1689
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->closeJekBottomSheet()V

    .line 1694
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 1696
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/main/b;->a(I)V

    .line 1699
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    if-eqz v0, :cond_5

    .line 1702
    invoke-virtual {v0}, Lcab/snapp/passenger/f/j;->showUserLocationIndicator()V

    .line 1705
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->y:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1707
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->a()V

    .line 1710
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->j:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b;->hasPendingDeepLink()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1712
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->j:Lcab/snapp/passenger/f/b;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b;->handleDeepLink(Lcab/snapp/arch/protocol/BaseRouter;)V

    :cond_7
    return-void
.end method

.method public reportPopUpLocationNegativeButtonClickedToAppMetrica()V
    .locals 3

    .line 607
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "What\'sNew"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Popup"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 612
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public reportPopUpLocationPositiveButtonClickedToAppMetrica()V
    .locals 3

    .line 593
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "What\'sNew"

    const-string v2, "yes"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Popup"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 598
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public reportTopUpModalDefaultCloseToAppMetrica()V
    .locals 3

    .line 584
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TopUpModalDefault"

    const-string v2, "Close"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 586
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public requestEditLocationSetting(Lcom/google/android/gms/common/api/k;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    const/16 v1, 0x3f0

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/c/e;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;I)V

    return-void
.end method

.method public declared-synchronized requestMyLocation()V
    .locals 4

    monitor-enter p0

    .line 750
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    .line 753
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_2

    .line 754
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/main/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->p:Lcab/snapp/passenger/f/j;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/j;->handleOnLocationClicked(Landroid/location/Location;)V

    .line 2810
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_1

    .line 2812
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "setOrigin"

    const-string v3, "tapLocationPin"

    .line 2813
    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2814
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "Pre-ride"

    invoke-virtual {v2, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    goto :goto_0

    .line 2817
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 2819
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v2, "setDestination"

    const-string v3, "tapLocationPin"

    .line 2820
    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2821
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    const-string v3, "Pre-ride"

    invoke-virtual {v2, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 761
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->r:Lio/reactivex/b/c;

    if-nez v0, :cond_3

    .line 763
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->getLocationObservable(Z)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/main/-$$Lambda$b$09V5AI947v9dpWsiINt9fYXko7c;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/main/-$$Lambda$b$09V5AI947v9dpWsiINt9fYXko7c;-><init>(Lcab/snapp/passenger/units/main/b;)V

    .line 764
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/main/b;->r:Lio/reactivex/b/c;

    .line 800
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->r:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/main/b;->addDisposable(Lio/reactivex/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 804
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->f:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->refreshLocation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldShowShowCase()Z
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/main/b;->v:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const v2, 0x7f0a020f

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public showCreditTopUp()V
    .locals 3

    .line 1417
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1421
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "TapTopUp"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1422
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1427
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 1432
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1434
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->openBottomSheet()V

    :cond_1
    return-void
.end method

.method public startUpdate()V
    .locals 3

    .line 893
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 899
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 900
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 901
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 903
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v0

    .line 904
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 905
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 906
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleDrawer()V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/d;->onToggleDrawer()V

    .line 558
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    :cond_0
    return-void
.end method

.method public webHostedItemSelected(Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;)V
    .locals 4

    .line 3248
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getId()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "[tap]"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3321
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3323
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_HOTEL_OPEN:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3278
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FOOD:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3280
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3282
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_FOOD_OPEN:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    :cond_2
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3288
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3289
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FOOD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3290
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3291
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Homescreen Choice Food"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3295
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3296
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3304
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_MALL:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3306
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3308
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_MALL_OPEN:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    :cond_4
    new-instance v0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3312
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3313
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_MALL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3314
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3315
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Homescreen Choice SnappMall"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V

    goto :goto_0

    .line 3252
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FLIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3254
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3256
    iget-object v0, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->HOMESCREEN_FLIGHT_OPEN:Ljava/lang/String;

    iget-object v3, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v3}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    :cond_6
    :try_start_1
    new-instance v0, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;-><init>()V

    .line 3262
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setCategory(Ljava/lang/String;)V

    .line 3263
    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FLIGHT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setAction(Ljava/lang/String;)V

    .line 3264
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;->setLabel(Ljava/lang/String;)V

    .line 3265
    iget-object v1, p0, Lcab/snapp/passenger/units/main/b;->h:Lcab/snapp/passenger/f/b/b/c;

    const-string v2, "Homescreen Choice Flight"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAppmetrica(Ljava/lang/String;Lcab/snapp/passenger/data/models/AppmetricaEventParamsModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3270
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 3330
    :cond_7
    :goto_0
    :try_start_2
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Services"

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getAppmetricaTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3331
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "JekHome"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 3335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3336
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 1232
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1234
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SERVICE_ITEM_KEY"

    .line 1235
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1237
    invoke-virtual {p0}, Lcab/snapp/passenger/units/main/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/main/f;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/main/f;->routeToWebHost(Landroid/os/Bundle;)V

    :cond_8
    return-void
.end method
