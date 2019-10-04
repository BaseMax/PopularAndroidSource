.class public Lcab/snapp/passenger/units/forgot_password/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/forgot_password/d;",
        "Lcab/snapp/passenger/units/forgot_password/c;",
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

    .line 13
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/forgot_password/c;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->onResponse()V

    return-void
.end method

.method private static synthetic a(Lcab/snapp/passenger/units/forgot_password/c;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/c;->onRequestError()V

    return-void
.end method

.method public static synthetic lambda$LYIw8dh6lYdVyA8KTt__PGn7gxA(Lcab/snapp/passenger/units/forgot_password/c;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/forgot_password/a;->a(Lcab/snapp/passenger/units/forgot_password/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$PHlYcFuEoOOhA4qlV2cO4nh1h-Q(Lcab/snapp/passenger/units/forgot_password/c;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcab/snapp/passenger/units/forgot_password/a;->a(Lcab/snapp/passenger/units/forgot_password/c;Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 59
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/forgot_password/a;)V

    .line 65
    iget-object v0, p0, Lcab/snapp/passenger/units/forgot_password/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/c;->onInitialize()V

    :cond_1
    return-void
.end method

.method public requestForgotPassword(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcab/snapp/passenger/units/forgot_password/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/forgot_password/c;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/forgot_password/c;->onBeforeRequest()V

    .line 38
    iget-object v1, p0, Lcab/snapp/passenger/units/forgot_password/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->requestForgotPassword(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v1, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$a$PHlYcFuEoOOhA4qlV2cO4nh1h-Q;

    invoke-direct {v1, v0}, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$a$PHlYcFuEoOOhA4qlV2cO4nh1h-Q;-><init>(Lcab/snapp/passenger/units/forgot_password/c;)V

    new-instance v2, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$a$LYIw8dh6lYdVyA8KTt__PGn7gxA;

    invoke-direct {v2, v0}, Lcab/snapp/passenger/units/forgot_password/-$$Lambda$a$LYIw8dh6lYdVyA8KTt__PGn7gxA;-><init>(Lcab/snapp/passenger/units/forgot_password/c;)V

    invoke-virtual {p1, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/forgot_password/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
