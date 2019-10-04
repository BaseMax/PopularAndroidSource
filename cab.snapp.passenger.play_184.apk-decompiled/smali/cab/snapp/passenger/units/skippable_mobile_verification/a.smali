.class public Lcab/snapp/passenger/units/skippable_mobile_verification/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/d;",
        "Lcab/snapp/passenger/units/skippable_mobile_verification/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field c:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Lcab/snapp/passenger/f/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a:Z

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_3

    .line 118
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 120
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x406

    if-ne v0, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onDailyLimitSucceeded()V

    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onUserIsBlocked(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onSendMeVerificationCodeError()V

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/Boolean;)V
    .locals 3

    .line 142
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->SEND_MOBILE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_REGISTER_PHONE_NUMBER:Ljava/lang/String;

    const-string v2, "[successful]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a:Z

    .line 147
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onSendMeVerificationCodeSuccessful()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/Throwable;)V
    .locals 4

    .line 182
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->TOAST_CONFIRMATION_CODE_IS_WRONG:Ljava/lang/String;

    const-string v3, "[show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b:Z

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 194
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onCodeIsInvalid()V

    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onVerifyError()V

    return-void
.end method

.method public static synthetic lambda$BtuM3jFsrMREEb9mL3jH3DhCyFU(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$K356n_h5f5RaMgNkMTupNuli8OQ(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$_TCISSZhtvt2zPKw1xWFgmgtcEQ(Lcab/snapp/passenger/units/skippable_mobile_verification/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/d;->goToMainController()V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->CONFIRM_MOBILE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 213
    iput-boolean p1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b:Z

    .line 215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onVerifySuccessful()V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a()V

    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->skip()V

    return-void
.end method

.method public onUnitCreated()V
    .locals 1

    .line 38
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 39
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    .line 44
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->initialize()V

    :cond_1
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 54
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 56
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->e:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "skipable mobile verification"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public requestGiveMeVerificationCode(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->a:Z

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onBeforeSendMeVerificationCode()V

    .line 95
    new-instance v0, Lcab/snapp/passenger/f/q;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/q;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->f:Lcab/snapp/passenger/f/q;

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->f:Lcab/snapp/passenger/f/q;

    .line 98
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/q;->requestConfirmationCodeBySms(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$BtuM3jFsrMREEb9mL3jH3DhCyFU;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$BtuM3jFsrMREEb9mL3jH3DhCyFU;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    new-instance v1, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$_TCISSZhtvt2zPKw1xWFgmgtcEQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$_TCISSZhtvt2zPKw1xWFgmgtcEQ;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestVerify(Ljava/lang/String;)V
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->b:Z

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->onBeforeVerify()V

    .line 168
    new-instance v0, Lcab/snapp/passenger/f/q;

    iget-object v1, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/q;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->f:Lcab/snapp/passenger/f/q;

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->f:Lcab/snapp/passenger/f/q;

    .line 171
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/q;->requestConfirm(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$emZatpFZFzVtEw1UDsgZMYlnxFA;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$emZatpFZFzVtEw1UDsgZMYlnxFA;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    new-instance v1, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$K356n_h5f5RaMgNkMTupNuli8OQ;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$a$K356n_h5f5RaMgNkMTupNuli8OQ;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public skip()V
    .locals 4

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/skippable_mobile_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/skippable_mobile_verification/c;->finish()V

    .line 235
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$DDcGnCPG57yWBN2aiGMwsyHPYyY;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/skippable_mobile_verification/-$$Lambda$DDcGnCPG57yWBN2aiGMwsyHPYyY;-><init>(Lcab/snapp/passenger/units/skippable_mobile_verification/a;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
