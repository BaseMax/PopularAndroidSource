.class public Lcab/snapp/passenger/units/footer/mainfooter/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/footer/mainfooter/d;",
        "Lcab/snapp/passenger/units/footer/mainfooter/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/mainfooter/a;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->d:I

    return p1
.end method

.method private a()Lcab/snapp/passenger/units/main/b;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/MainController;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainController;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

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
    return-object v1
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/mainfooter/a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->b()V

    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 153
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const v1, 0x7f0a01ed

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->handleIdleState()V

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 201
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToMainFooter()V

    goto/16 :goto_0

    .line 191
    :cond_1
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToDriverAssignedFooter()V

    .line 194
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    return-void

    .line 184
    :cond_2
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToDriverAssignedFooter()V

    .line 187
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    return-void

    .line 177
    :cond_3
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToDriverAssignedFooter()V

    .line 180
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    return-void

    .line 168
    :cond_4
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToRideRequestFooter()V

    .line 171
    iput-boolean v3, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->handleDestinationSelectedState()V

    return-void

    .line 164
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOriginFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/mainfooter/c;->setAddress(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->handleOriginSelectedState()V

    return-void

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/c;->handleIdleState()V

    .line 158
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/mainfooter/d;->navigateToMainFooter()V

    :cond_7
    :goto_0
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/footer/mainfooter/a;)I
    .locals 0

    .line 20
    iget p0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->d:I

    return p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/footer/mainfooter/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 5

    .line 37
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/footer/mainfooter/a;)V

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/mainfooter/d;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/mainfooter/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 50
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/j;->PIN_RESPONSE_CHANNEL_KEY:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->b:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/j;->MAP_INTERACTIONS_CHANNEL_KEY:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->c:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/footer/mainfooter/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/mainfooter/a$1;-><init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 61
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->b:Ljava/lang/String;

    new-instance v2, Lcab/snapp/passenger/units/footer/mainfooter/a$2;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/mainfooter/a$2;-><init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 100
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->c:Ljava/lang/String;

    new-instance v2, Lcab/snapp/passenger/units/footer/mainfooter/a$3;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/mainfooter/a$3;-><init>(Lcab/snapp/passenger/units/footer/mainfooter/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_2
    return-void
.end method

.method public onUnitResume()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/mainfooter/a;->e:Z

    .line 124
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/mainfooter/a;->b()V

    return-void
.end method
