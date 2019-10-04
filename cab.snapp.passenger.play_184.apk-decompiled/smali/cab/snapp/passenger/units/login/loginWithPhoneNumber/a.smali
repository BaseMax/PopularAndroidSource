.class public Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;",
        "Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;",
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

    .line 15
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

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

.method public static synthetic lambda$8fns20EXZJbggTmOPpvjQbgmKuY(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V

    return-void
.end method

.method public static synthetic lambda$CL1zJjCQ8WCyYLFXZzAyMXGbGvY(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->onNoInternetConnection()V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 41
    invoke-static {p1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->askTokenForPhoneNumber(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/-$$Lambda$a$8fns20EXZJbggTmOPpvjQbgmKuY;->INSTANCE:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/-$$Lambda$a$8fns20EXZJbggTmOPpvjQbgmKuY;

    sget-object v2, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/-$$Lambda$a$CL1zJjCQ8WCyYLFXZzAyMXGbGvY;->INSTANCE:Lcab/snapp/passenger/units/login/loginWithPhoneNumber/-$$Lambda$a$CL1zJjCQ8WCyYLFXZzAyMXGbGvY;

    .line 42
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/d;->routeToLoginWithOTP(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;)V

    .line 75
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/c;->onInitialize()V

    :cond_1
    return-void
.end method

.method public pressBack()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithPhoneNumber/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
