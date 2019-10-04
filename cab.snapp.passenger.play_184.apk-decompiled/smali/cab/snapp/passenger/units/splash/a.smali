.class public Lcab/snapp/passenger/units/splash/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/splash/d;",
        "Lcab/snapp/passenger/units/splash/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final SNAPP_ADD_ACCOUNT_FROM_SETTINGS:Ljava/lang/String; = "SNAPP_ADD_ACCOUNT_FROM_SETTINGS"

.field public static final UNIQUE_ID:Ljava/lang/String;


# instance fields
.field a:Lcab/snapp/b/a;
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

.field d:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/authenticator/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/data_access_layer/network/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcab/snapp/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/splash/a;->UNIQUE_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lcab/snapp/passenger/units/splash/a;->i:Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappGroupLastModificationTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onGetConfigSucceed()V

    .line 292
    :cond_0
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/splash/a;->handleConfigResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/c;->onGetConfigSucceed()V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/splash/a;->d()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 1

    .line 552
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 558
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 560
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/authenticator/c;->removeAccount(Landroid/content/Context;)V

    .line 561
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 566
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->init()V

    :cond_2
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/c;->onGetConfigFailed()V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    new-instance v2, Lcab/snapp/passenger/units/welcome/WelcomeController;

    invoke-direct {v2}, Lcab/snapp/passenger/units/welcome/WelcomeController;-><init>()V

    const v3, 0x7f0a02ca

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/units/splash/d;->addWelcomeController(Lcab/snapp/passenger/units/welcome/WelcomeController;I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iput-boolean v1, p0, Lcab/snapp/passenger/units/splash/a;->j:Z

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/splash/c;->onWelcomeChildIsAdded(Z)V

    :cond_1
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/c;->onGetConfigSucceed()V

    .line 256
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/splash/a;->d()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 388
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->a()V

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    .line 401
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v1

    iget-object v2, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    .line 402
    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getMapBoxToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    .line 403
    invoke-virtual {v3}, Lcab/snapp/passenger/c/b;->getMapBoxStyleUrl()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-static {v0, v1, v2, v3}, Lcab/snapp/passenger/f/k;->initMap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-direct {p0}, Lcab/snapp/passenger/units/splash/a;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 2452
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    .line 417
    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->h:Lcab/snapp/b;

    invoke-virtual {v0}, Lcab/snapp/b;->init()V

    .line 423
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    const-string v1, "HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY"

    .line 424
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "first_time_sign_up"

    .line 425
    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 427
    invoke-virtual {v0, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 430
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->goToSkippablePhoneVerificationUnit()V

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->routeToMainController()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/splash/a;->a(Z)V

    :cond_2
    return-void
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 107
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/splash/a;->UNIQUE_ID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$ZjgpYr_Qc1Af03z0Alr9OvsoiHk(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;)V

    return-void
.end method

.method public static synthetic lambda$sxuF5hkruOOj7hvvOT8i1zgsPbk(Lcab/snapp/passenger/units/splash/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$wecmjzXpK8Q3nljUSCNDbMSYdKs(Lcab/snapp/passenger/units/splash/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$xzuBScAqi6t1vU3zhSynqRxyenQ(Lcab/snapp/passenger/units/splash/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$yHNWPHkKUfylFBVA1MWbzwLadYA(Lcab/snapp/passenger/units/splash/a;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 269
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onNoInternetConnection()V

    .line 277
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onGetConfigFailed()V

    return-void

    .line 281
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->b:Lcab/snapp/passenger/c/b;

    .line 282
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->fetchAndRefreshConfig()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/splash/-$$Lambda$a$yHNWPHkKUfylFBVA1MWbzwLadYA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$a$yHNWPHkKUfylFBVA1MWbzwLadYA;-><init>(Lcab/snapp/passenger/units/splash/a;)V

    new-instance v2, Lcab/snapp/passenger/units/splash/-$$Lambda$a$wecmjzXpK8Q3nljUSCNDbMSYdKs;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$a$wecmjzXpK8Q3nljUSCNDbMSYdKs;-><init>(Lcab/snapp/passenger/units/splash/a;)V

    .line 283
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/splash/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method final b()V
    .locals 2

    .line 666
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcab/snapp/passenger/units/splash/a;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method final c()V
    .locals 0

    .line 688
    invoke-direct {p0}, Lcab/snapp/passenger/units/splash/a;->d()V

    return-void
.end method

.method public changeDynamicEndpoint(Ljava/lang/String;)V
    .locals 2

    .line 815
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    if-eqz v0, :cond_0

    .line 817
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 818
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/a;->g:Lcab/snapp/passenger/data_access_layer/network/b;

    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/b;->initialize(Lcab/snapp/b/a;)V

    .line 819
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->handleDefaultOnUnitResume()V

    :cond_0
    return-void
.end method

.method public changeLocale(I)V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 143
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/passenger/f/g;->changeAppLocale(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1204
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "Arabic"

    goto :goto_0

    :cond_1
    const-string p1, "Turki"

    goto :goto_0

    :cond_2
    const-string p1, "French"

    goto :goto_0

    :cond_3
    const-string p1, "English"

    goto :goto_0

    :cond_4
    const-string p1, "Persian"

    .line 1223
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    .line 1224
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->APP_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public changeServerEndPoint(Ljava/lang/String;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    if-eqz v0, :cond_1

    .line 193
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->doRestart()V

    return-void
.end method

.method public closeApp()V
    .locals 1

    .line 739
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 v0, 0x0

    .line 743
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public downloadGplayService()V
    .locals 7

    const-string v0, "https://play.google.com/store/apps/details?id=com.google.android.gms"

    const-string v1, "android.intent.action.VIEW"

    .line 751
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 758
    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.android.vending"

    .line 761
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 763
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->closeApp()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 767
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 768
    invoke-static {v2}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 771
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 772
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 775
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 776
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 778
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.farsitel.bazaar"

    .line 779
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ir.mservices.market"

    .line 780
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "ir.tgbs.android.iranapp"

    .line 781
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "net.jhoobin.jhub.charkhune"

    .line 782
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 786
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 789
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 791
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    .line 792
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 793
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 794
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->closeApp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v2

    .line 798
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 799
    invoke-static {v2}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 800
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 803
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->closeApp()V

    return-void
.end method

.method public handleChangeServerEndPointClick()V
    .locals 2

    .line 160
    invoke-static {}, Lcab/snapp/passenger/f/a;->isEndpointSwitchEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_3:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_1:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_2:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_3:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->DEV_CLOUD_5:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->MASTER_REP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/splash/c;->onShowEndPointSelectionDialog(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public handleConfigResponse(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 5

    .line 312
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->setUserProfile(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/a;->i:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_4

    .line 1352
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1354
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->APP_OPEN:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->d:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1358
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->APP_OPEN_JEK:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1362
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->APP_OPEN_NON_JEK:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1368
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->APP_OPEN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->sendEventViaAdjust(Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 328
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 330
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappUssd()Lcab/snapp/passenger/data/models/SnappUssd;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/a/a;->setSnappUssd(Lcab/snapp/passenger/data/models/SnappUssd;)V

    :cond_5
    if-eqz p1, :cond_7

    .line 334
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappGroupLastModificationTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    .line 336
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getSnappGroupLastModificationTimestamp()J

    move-result-wide v0

    .line 2236
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {p1}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2238
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/a;->d:Lcab/snapp/passenger/c/d;

    .line 2239
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/c/d;->fetchContents(J)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/splash/-$$Lambda$a$ZjgpYr_Qc1Af03z0Alr9OvsoiHk;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$a$ZjgpYr_Qc1Af03z0Alr9OvsoiHk;-><init>(Lcab/snapp/passenger/units/splash/a;)V

    new-instance v1, Lcab/snapp/passenger/units/splash/-$$Lambda$a$sxuF5hkruOOj7hvvOT8i1zgsPbk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$a$sxuF5hkruOOj7hvvOT8i1zgsPbk;-><init>(Lcab/snapp/passenger/units/splash/a;)V

    .line 2240
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 2238
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/splash/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_6
    return-void

    .line 340
    :cond_7
    invoke-direct {p0}, Lcab/snapp/passenger/units/splash/a;->d()V

    return-void
.end method

.method public handleDefaultOnUnitResume()V
    .locals 2

    .line 526
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 533
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->reportLogOutUser()V

    .line 536
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/b;->getInstance()Lcom/google/android/gms/common/b;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/b;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 543
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->showGplaySericeNotInstalled()V

    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    new-instance v1, Lcab/snapp/passenger/units/splash/-$$Lambda$a$xzuBScAqi6t1vU3zhSynqRxyenQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$a$xzuBScAqi6t1vU3zhSynqRxyenQ;-><init>(Lcab/snapp/passenger/units/splash/a;)V

    invoke-virtual {v0, v1}, Lcab/snapp/authenticator/c;->getAuthToken(Lcab/snapp/authenticator/c$b;)V

    return-void

    .line 572
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->init()V

    :cond_4
    return-void
.end method

.method public init()V
    .locals 3

    .line 584
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 585
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 586
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "SNAPP_ADD_ACCOUNT_FROM_SETTINGS"

    .line 587
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 590
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/splash/a;->j:Z

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->removeWelcomeController()V

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onReadyForFirstTime()V

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->a()V

    goto/16 :goto_0

    .line 603
    :cond_2
    iget-boolean v0, p0, Lcab/snapp/passenger/units/splash/a;->j:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 605
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/splash/a;->a(Z)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 611
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/splash/c;->onWelcomeChildIsAdded(Z)V

    goto :goto_0

    .line 618
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->f:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 620
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 622
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onReadyForFirstTime()V

    .line 624
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->a()V

    .line 626
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcab/snapp/passenger/units/splash/a;->j:Z

    if-eqz v0, :cond_9

    .line 628
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->removeWelcomeController()V

    goto :goto_0

    .line 631
    :cond_6
    iget-boolean v0, p0, Lcab/snapp/passenger/units/splash/a;->j:Z

    if-nez v0, :cond_8

    .line 633
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 635
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->onReadyForFirstTime()V

    .line 637
    :cond_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->a()V

    goto :goto_0

    .line 641
    :cond_8
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 643
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/splash/c;->onWelcomeChildIsAdded(Z)V

    .line 653
    :cond_9
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcab/snapp/passenger/f/a;->isEndpointSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 656
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->BASE_URL:Ljava/lang/String;

    const-string v2, "4.7.0"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/passenger/units/splash/c;->onVersionNameIsReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public navigateToLogin()V
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->routeToLogInController()V

    :cond_0
    return-void
.end method

.method public navigateToSignup()V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/d;->routeToSignUpController()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 489
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 490
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/splash/a;)V

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/c;->setStatusBarColor()V

    .line 495
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->e:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 502
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 503
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    if-eqz v0, :cond_1

    .line 504
    invoke-static {}, Lcab/snapp/passenger/f/a;->isDevCloudQAEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/splash/a;->a:Lcab/snapp/b/a;

    sget-object v2, Lcab/snapp/passenger/data_access_layer/network/b;->SWITCH_PASSENGER_DYNAMIC_ENDPOINT_PREF_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/splash/c;->showInputDialogForQAEndpoints(Ljava/lang/String;)V

    return-void

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/splash/c;->showInputDialogForQAEndpoints(Ljava/lang/String;)V

    return-void

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/a;->handleDefaultOnUnitResume()V

    return-void
.end method
