.class public Lcab/snapp/passenger/units/snapp_charge_transactions/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/snapp_charge_transactions/d;",
        "Lcab/snapp/passenger/units/snapp_charge_transactions/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected b:I

.field protected c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->b:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/units/snapp_charge_transactions/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getPayments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->b:I

    .line 86
    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    .line 88
    :cond_0
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onRequestSuccess(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/snapp_charge_transactions/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onRequestError()V

    return-void
.end method

.method public static synthetic lambda$G5rh-iA8AeYbx97IC-Qu5Eiafys(Lcab/snapp/passenger/units/snapp_charge_transactions/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->a(Lcab/snapp/passenger/units/snapp_charge_transactions/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$KHzm-fRWG5TUbPavhzsQSYPAI18(Lcab/snapp/passenger/units/snapp_charge_transactions/a;Lcab/snapp/passenger/units/snapp_charge_transactions/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->a(Lcab/snapp/passenger/units/snapp_charge_transactions/c;Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V

    return-void
.end method


# virtual methods
.method public getRideHistoryCurrentPage()I
    .locals 1

    .line 62
    iget v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->b:I

    return v0
.end method

.method public onUnitCreated()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/snapp_charge_transactions/a;)V

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onInitialize(Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/snapp_charge_transactions/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/d;->setNavigationController(Landroidx/navigation/NavController;)V

    :cond_2
    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 128
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 2135
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "History"

    const-string v2, "Show"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2136
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public pressBack()V
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1142
    :cond_0
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "History"

    const-string v2, "TapOnBack"

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1143
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Charge"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public requestNextPage()V
    .locals 4

    .line 103
    iget v0, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2072
    invoke-virtual {p0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/snapp_charge_transactions/c;

    if-eqz v1, :cond_0

    .line 2078
    invoke-virtual {v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/c;->onBeforeRequest()V

    .line 2079
    iget-object v2, p0, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    const/16 v3, 0xa

    .line 2080
    invoke-virtual {v2, v0, v3}, Lcab/snapp/passenger/data_access_layer/a/d;->getChargeHistory(II)Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;

    invoke-direct {v2, p0, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$KHzm-fRWG5TUbPavhzsQSYPAI18;-><init>(Lcab/snapp/passenger/units/snapp_charge_transactions/a;Lcab/snapp/passenger/units/snapp_charge_transactions/c;)V

    new-instance v3, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$G5rh-iA8AeYbx97IC-Qu5Eiafys;

    invoke-direct {v3, v1}, Lcab/snapp/passenger/units/snapp_charge_transactions/-$$Lambda$a$G5rh-iA8AeYbx97IC-Qu5Eiafys;-><init>(Lcab/snapp/passenger/units/snapp_charge_transactions/c;)V

    .line 2081
    invoke-virtual {v0, v2, v3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 2079
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/snapp_charge_transactions/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method
