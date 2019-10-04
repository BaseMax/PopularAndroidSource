.class public Lcab/snapp/passenger/units/jek_header/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/jek_header/d;",
        "Lcab/snapp/passenger/units/jek_header/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a()Lcab/snapp/passenger/units/main/b;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/MainController;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

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

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/jek_header/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/jek_header/d;->navigateToMainHeader()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcab/snapp/passenger/units/jek_header/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/jek_header/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/jek_header/d;->navigateToMainHeader()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/jek_header/c;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/jek_header/c;->setCurrentCredit(J)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 83
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getDefaultWallet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApCredit()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/jek_header/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getCredit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/jek_header/c;->setCurrentCredit(J)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$I7GB6sDKLWOk8xjjbtew0AYZtag(Lcab/snapp/passenger/units/jek_header/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/jek_header/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$_aKkn9qyDKWVydMrLT8h3s_BfBk(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/jek_header/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$bNXQwdvIVovtUThXo1tOzr_pJ9U(Lcab/snapp/passenger/units/jek_header/a;Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/jek_header/a;->b(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$uq1uQDCnyzLpaiqlqxLQ_k9vb8Y(Lcab/snapp/passenger/units/jek_header/a;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/jek_header/a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic lambda$yWm-OqXcJtG-C60pmjgosU04PU0(Lcab/snapp/passenger/units/jek_header/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/jek_header/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 4

    .line 39
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 41
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/jek_header/a;)V

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcab/snapp/passenger/units/jek_header/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/jek_header/d;

    invoke-direct {p0}, Lcab/snapp/passenger/units/jek_header/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getHeaderNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/jek_header/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 56
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->a:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/jek_header/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/jek_header/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/jek_header/d;->navigateToMainHeader()V

    .line 61
    :cond_3
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcab/snapp/passenger/units/main/b;->JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->d:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/jek_header/a;->d:Ljava/lang/String;

    new-instance v2, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$yWm-OqXcJtG-C60pmjgosU04PU0;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$yWm-OqXcJtG-C60pmjgosU04PU0;-><init>(Lcab/snapp/passenger/units/jek_header/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/jek_header/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 69
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$uq1uQDCnyzLpaiqlqxLQ_k9vb8Y;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$uq1uQDCnyzLpaiqlqxLQ_k9vb8Y;-><init>(Lcab/snapp/passenger/units/jek_header/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/jek_header/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->b:Lcab/snapp/passenger/c/f;

    .line 79
    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getCreditObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$bNXQwdvIVovtUThXo1tOzr_pJ9U;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$bNXQwdvIVovtUThXo1tOzr_pJ9U;-><init>(Lcab/snapp/passenger/units/jek_header/a;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/jek_header/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 100
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 102
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/a;->b:Lcab/snapp/passenger/c/f;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_HOME:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 103
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/f;->fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$_aKkn9qyDKWVydMrLT8h3s_BfBk;->INSTANCE:Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$_aKkn9qyDKWVydMrLT8h3s_BfBk;

    new-instance v2, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$I7GB6sDKLWOk8xjjbtew0AYZtag;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/jek_header/-$$Lambda$a$I7GB6sDKLWOk8xjjbtew0AYZtag;-><init>(Lcab/snapp/passenger/units/jek_header/a;)V

    .line 104
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/jek_header/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public showCreditBottomSheet()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcab/snapp/passenger/units/jek_header/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcab/snapp/passenger/units/jek_header/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->showCreditTopUp()V

    :cond_0
    return-void
.end method
