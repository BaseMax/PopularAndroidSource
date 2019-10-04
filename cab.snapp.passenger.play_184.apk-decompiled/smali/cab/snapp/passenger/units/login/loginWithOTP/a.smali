.class public Lcab/snapp/passenger/units/login/loginWithOTP/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/login/loginWithOTP/d;",
        "Lcab/snapp/passenger/units/login/loginWithOTP/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field b:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
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

.method private static synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2143
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    .line 2270
    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2272
    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->hideLoadingDialog()V

    .line 2146
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2148
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/d;->backToSplash()V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARGS_PHONE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->onInitialize(Ljava/lang/String;Z)V

    :cond_1
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

.method public static synthetic lambda$ZRQoAVN2SV_6FNSJClck5TyzDCw(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;)V

    return-void
.end method

.method public static synthetic lambda$gu39FNRHi3A4uyna2fIZ_YbdN6g(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$tc2fP0PyRw3py4XyxOO5CteJoGA(Lcab/snapp/passenger/units/login/loginWithOTP/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$zmsIaOIv8GoEhFptarbPZ9bMNoo(Lcab/snapp/passenger/units/login/loginWithOTP/a;Lcab/snapp/snappnetwork/model/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method


# virtual methods
.method public editPhoneNumber()V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/d;->navigateUp()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 171
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/login/loginWithOTP/a;)V

    const/4 v0, 0x1

    .line 176
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a(Z)V

    .line 178
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->c:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public pressBack()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public resendSms()V
    .locals 3

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a(Z)V

    .line 99
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->onNoInternetConnection()V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    .line 107
    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->askTokenForPhoneNumber(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    sget-object v1, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;->INSTANCE:Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$ZRQoAVN2SV_6FNSJClck5TyzDCw;

    sget-object v2, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$gu39FNRHi3A4uyna2fIZ_YbdN6g;->INSTANCE:Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$gu39FNRHi3A4uyna2fIZ_YbdN6g;

    .line 108
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/d;->navigateUp()V

    :cond_2
    return-void
.end method

.method public sendValidationCode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    .line 1228
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1230
    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->showLoadingDialog()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    .line 67
    invoke-static {v1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {p1}, Lcab/snapp/c/d;->convertPersianToEnglishNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->loginWithPhoneToken(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$zmsIaOIv8GoEhFptarbPZ9bMNoo;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$zmsIaOIv8GoEhFptarbPZ9bMNoo;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/a;)V

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$tc2fP0PyRw3py4XyxOO5CteJoGA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithOTP/-$$Lambda$a$tc2fP0PyRw3py4XyxOO5CteJoGA;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/a;)V

    .line 69
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithOTP/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithOTP/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithOTP/c;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/a;->a:Ljava/lang/String;

    return-void
.end method
