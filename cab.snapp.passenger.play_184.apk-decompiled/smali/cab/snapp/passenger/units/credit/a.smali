.class public Lcab/snapp/passenger/units/credit/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/credit/e;",
        "Lcab/snapp/passenger/units/credit/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2081
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/credit/c;

    if-eqz p1, :cond_0

    .line 3067
    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/c;->hideLoading()V

    .line 3092
    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3094
    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/credit/CreditView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/credit/CreditView;->showEmptyLayout()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$2lQaVcFio7BjAo9Jk0rCPCYICRM(Lcab/snapp/passenger/units/credit/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/credit/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditHistoryResponse;)V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/c;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditHistoryResponse;->getTransactionList()Ljava/util/List;

    move-result-object v1

    .line 2067
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/c;->hideLoading()V

    .line 105
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/credit/c;->onDataRequestSucceed(Ljava/util/List;)V

    return-void
.end method

.method public goBack()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public goToItemSupport(Ljava/lang/String;)V
    .locals 3

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x2

    const-string v2, "Key Support Type"

    .line 113
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "Key Support Relation"

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/credit/e;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/credit/e;->routeToSupportController(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 33
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/credit/a;)V

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/c;->initViews()V

    .line 1058
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1060
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/c;

    .line 2062
    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/c;->showLoading()V

    .line 1063
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getCreditData()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/credit/-$$Lambda$Q5jFHm4_icJOenkpTvt8zAExl9U;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/credit/-$$Lambda$Q5jFHm4_icJOenkpTvt8zAExl9U;-><init>(Lcab/snapp/passenger/units/credit/a;)V

    new-instance v2, Lcab/snapp/passenger/units/credit/-$$Lambda$a$2lQaVcFio7BjAo9Jk0rCPCYICRM;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/credit/-$$Lambda$a$2lQaVcFio7BjAo9Jk0rCPCYICRM;-><init>(Lcab/snapp/passenger/units/credit/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/credit/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/credit/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/credit/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/credit/c;->setStatusBarColor()V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 51
    iget-object v0, p0, Lcab/snapp/passenger/units/credit/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Credit History Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method
