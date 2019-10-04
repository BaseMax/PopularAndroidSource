.class public Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field protected a:Lcab/snapp/passenger/data/models/DriverInfo;

.field b:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/b;
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

.field private i:I

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isRideReallotted()Z

    move-result v1

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onReallotment(ZZ)V

    .line 161
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 162
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->d()V

    :cond_0
    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V
    .locals 5

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->k:Z

    .line 369
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v0

    if-nez v0, :cond_1

    .line 372
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;-><init>()V

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setDefaultWallet(I)V

    .line 375
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getCurrentCredit()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setSnappCredit(J)V

    .line 376
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 378
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getApReceipt()Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ApReceipt;->getCredit()D

    move-result-wide v1

    double-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->setApCredit(Ljava/lang/Long;)V

    .line 380
    :cond_2
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->c:Lcab/snapp/passenger/c/f;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/c/f;->updateCredit(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    .line 382
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;->getRidePrice()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onRideIsFree()V

    return-void

    .line 388
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RIDE_RECEIPT_ARGUMENT_KEY"

    .line 389
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 390
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;->routeToPayment(Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onGetReceiptSuccess()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->c()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 335
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->k:Z

    .line 336
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 338
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x42d

    if-ne v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onNotAuthorizedForInRidePayment(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onGetReceiptFailed()V

    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onGetReceiptFailed()V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 4

    .line 168
    iget v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->i:I

    const-string v1, "In-ride"

    const-string v2, "show"

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 170
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "driverAssigned"

    .line 171
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 173
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 178
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "Boarded"

    .line 179
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 181
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a()V

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 210
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->j:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->j:Z

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;->routeBackToRequestFooter(Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->j:Z

    .line 227
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;->routeBackToIdleFooter(Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    .line 231
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic d(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 240
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 244
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    .line 247
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 248
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 249
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getVehicleModel()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 250
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 251
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/DriverInfo;->getPlateNumber()Lcab/snapp/passenger/data/models/PlateNumber;

    move-result-object v6

    .line 246
    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onDataReady(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/passenger/data/models/PlateNumber;)V

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private e()Lcab/snapp/passenger/units/main/b;
    .locals 1

    .line 464
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/MainController;

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainController;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 71
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$5mEdq4aFyAXAN3AGiPprruFJlC0(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;)V

    return-void
.end method

.method public static synthetic lambda$mWT5FJYD_nkpZo4XKJKSWX-Fv50(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public callDriver()V
    .locals 4

    .line 2441
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2444
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_CALL_TO_DRIVER:Ljava/lang/String;

    const-string v3, "[DriverInway]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2448
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_CALL_TO_DRIVER:Ljava/lang/String;

    const-string v3, "[DriverArrive]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2452
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_CALL_TO_DRIVER:Ljava/lang/String;

    const-string v3, "in ride - call driver"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    if-eqz v0, :cond_2

    .line 403
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/DriverInfo;->getCellphone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcab/snapp/c/h;->callNumber(Landroid/app/Activity;Ljava/lang/String;)V

    .line 405
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->reportOnCallDriverToAppMetrica()V

    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 79
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->i:I

    .line 86
    iget v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/e;->routeBackToIdleFooter(Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    goto :goto_1

    .line 90
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a:Lcab/snapp/passenger/data/models/DriverInfo;

    .line 102
    :cond_3
    :goto_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRideReallotted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->a()V

    .line 107
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$1;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 122
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->d()V

    .line 125
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/mainheader/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$2;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 137
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a$3;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onInitialize()V

    :cond_5
    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 200
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->b:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 188
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 189
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->i:I

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->j:Z

    .line 191
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->c()V

    .line 193
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "DriverAssignedFragment"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public payCost()V
    .locals 5

    .line 261
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->k:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->k:Z

    .line 1317
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1319
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_PAYMENT:Ljava/lang/String;

    const-string v4, "[tap]"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1323
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PAYMENT:Ljava/lang/String;

    const-string v4, "clicked"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onBeforeGetReceipt()V

    .line 272
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->f:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    .line 273
    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/a/d;->getRideReceipt(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$a$5mEdq4aFyAXAN3AGiPprruFJlC0;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$a$5mEdq4aFyAXAN3AGiPprruFJlC0;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    new-instance v3, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$a$mWT5FJYD_nkpZo4XKJKSWX-Fv50;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$a$mWT5FJYD_nkpZo4XKJKSWX-Fv50;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;)V

    .line 274
    invoke-virtual {v0, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 272
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 2286
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v2, "In-ride"

    const-string v3, "tap"

    const-string v4, "payment"

    if-ne v0, v1, :cond_2

    .line 2288
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2289
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 2290
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2291
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2292
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2294
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2296
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2297
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 2298
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2299
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2300
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2302
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 2304
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2305
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 2306
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 2307
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2308
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public reportOnCallDriverToAppMetrica()V
    .locals 4

    .line 413
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "In-ride"

    const-string v2, "callDriver"

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 415
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "driverAssigned"

    .line 416
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 418
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 422
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "driverArrived"

    .line 423
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 425
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_2

    .line 429
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "Boarded"

    .line 430
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 432
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_2
    return-void
.end method
