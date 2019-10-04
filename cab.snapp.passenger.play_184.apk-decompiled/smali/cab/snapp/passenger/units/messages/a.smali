.class public Lcab/snapp/passenger/units/messages/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/messages/d;",
        "Lcab/snapp/passenger/units/messages/c;",
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

    .line 21
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;->getMessages()Ljava/util/List;

    move-result-object p1

    .line 2060
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/c;

    if-eqz v0, :cond_0

    .line 2065
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/c;->onAfterDataRequest()V

    .line 2066
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/messages/c;->onDataRequestSucceed(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 1076
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/c;

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/c;->onAfterDataRequest()V

    .line 1082
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/messages/c;->onDataRequestError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$GmTmBFm6hXn7Ttvq7iAeRnn_XCQ(Lcab/snapp/passenger/units/messages/a;Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/messages/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;)V

    return-void
.end method

.method public static synthetic lambda$H5otkXMdocvb5yPphzY5UuIDtCA(Lcab/snapp/passenger/units/messages/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/messages/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/messages/a;)V

    .line 1038
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/c;

    if-eqz v0, :cond_1

    .line 1044
    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/c;->onBeforeDataRequest()V

    .line 1045
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getMessages()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/messages/-$$Lambda$a$GmTmBFm6hXn7Ttvq7iAeRnn_XCQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/messages/-$$Lambda$a$GmTmBFm6hXn7Ttvq7iAeRnn_XCQ;-><init>(Lcab/snapp/passenger/units/messages/a;)V

    new-instance v2, Lcab/snapp/passenger/units/messages/-$$Lambda$a$H5otkXMdocvb5yPphzY5UuIDtCA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/messages/-$$Lambda$a$H5otkXMdocvb5yPphzY5UuIDtCA;-><init>(Lcab/snapp/passenger/units/messages/a;)V

    .line 1046
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1045
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/messages/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/messages/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/messages/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/messages/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/messages/c;->setStatusBarColor()V

    :cond_3
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 144
    iget-object v0, p0, Lcab/snapp/passenger/units/messages/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Inbox Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method
