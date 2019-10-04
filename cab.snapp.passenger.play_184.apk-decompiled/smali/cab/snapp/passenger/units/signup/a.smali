.class public Lcab/snapp/passenger/units/signup/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/signup/d;",
        "Lcab/snapp/passenger/units/signup/c;",
        ">;",
        "Lcab/snapp/passenger/f/i$a;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Lcab/snapp/passenger/f/i;

.field d:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcab/snapp/passenger/units/signup/a;->g:Z

    return-void
.end method

.method private a()V
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onRequestSuccess()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/d;->backToSplash()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/a;->onEmailGrantLoginSuccess(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 1179
    iput-boolean p1, p0, Lcab/snapp/passenger/units/signup/a;->g:Z

    .line 1180
    iget-object p1, p0, Lcab/snapp/passenger/units/signup/a;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcab/snapp/passenger/units/signup/a;->b:Ljava/lang/String;

    .line 1181
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/d;->loginWithEmail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/signup/-$$Lambda$a$kBm6ms9wi4aJP6LnBwu3KKwZLhY;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$a$kBm6ms9wi4aJP6LnBwu3KKwZLhY;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    .line 1182
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 1180
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_3

    .line 98
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    const v0, 0x7f1200a0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/signup/c;->onRequestError(I)V

    .line 101
    iget-boolean p1, p0, Lcab/snapp/passenger/units/signup/a;->g:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/d;->backToSplash()V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x416

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/c;->onOnSignUpLimitExceeded()V

    return-void

    .line 110
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/signup/c;->onRequestError(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    const v0, 0x7f1200b9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/signup/c;->onRequestError(I)V

    :cond_3
    return-void
.end method

.method public static synthetic lambda$kBm6ms9wi4aJP6LnBwu3KKwZLhY(Lcab/snapp/passenger/units/signup/a;Lcab/snapp/snappnetwork/model/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/a;->a(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method

.method public static synthetic lambda$nKSIiufTmOPcii2LH40jlu2QyqY(Lcab/snapp/passenger/units/signup/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$wjnaHlNsYQNfYUwmprj7Y8HIqV0(Lcab/snapp/passenger/units/signup/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/signup/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->c:Lcab/snapp/passenger/f/i;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/f/i;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onEmailGrantLoginSuccess(Lcab/snapp/snappnetwork/model/c;)V
    .locals 4

    .line 194
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 195
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "first_time_sign_up"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->SIGN_UP_WITH_EMAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_EMAIL:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_EMAIL_GHOST:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$d;->SIGN_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/a;->a()V

    return-void
.end method

.method public onGoogleGrantLoginSuccess(Lcab/snapp/snappnetwork/model/c;)V
    .locals 4

    .line 214
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 215
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "first_time_sign_up"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->isNewUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->SIGN_UP_WITH_GOOGLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_GOOGLE:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_GOOGLE_GHOST:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$d;->SIGN_UP:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAppmetrica(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 236
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/signup/a;->a()V

    return-void
.end method

.method public onGoogleTokenError(Ljava/lang/String;)V
    .locals 0

    .line 322
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/c;->onRequestError()V

    :cond_0
    return-void
.end method

.method public onGoogleTokenSucceed(Ljava/lang/String;)V
    .locals 2

    .line 313
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->loginWithGoogle(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/signup/-$$Lambda$Bld74QDJT5qdKbonbKLYCfJ3dtI;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$Bld74QDJT5qdKbonbKLYCfJ3dtI;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    new-instance v1, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$QH3uC1zBovqPao63jdl4e371elw;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onLoginError(Ljava/lang/Throwable;)V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    const v0, 0x7f12028b

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/signup/c;->onRequestError(I)V

    return-void

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/signup/c;->onRequestError(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/d;->backToSplash()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 279
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 280
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/signup/a;)V

    .line 285
    new-instance v0, Lcab/snapp/passenger/f/i;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    invoke-direct {v0, v1, p0, v2}, Lcab/snapp/passenger/f/i;-><init>(Lcab/snapp/arch/protocol/BaseController;Lcab/snapp/passenger/f/i$a;Lcab/snapp/passenger/f/b/b/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/signup/a;->c:Lcab/snapp/passenger/f/i;

    .line 286
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->setStatusBarColor()V

    :cond_1
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 295
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->f:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Signup Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public requestSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/signup/c;->onNoInternetConnection()V

    return-void

    .line 80
    :cond_0
    iput-object p2, p0, Lcab/snapp/passenger/units/signup/a;->a:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcab/snapp/passenger/units/signup/a;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    if-nez v0, :cond_1

    return-void

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onBeforeRequest()V

    .line 91
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 92
    invoke-virtual {v0, p1, p2, p3, p4}, Lcab/snapp/passenger/data_access_layer/a/d;->signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/signup/-$$Lambda$a$nKSIiufTmOPcii2LH40jlu2QyqY;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$a$nKSIiufTmOPcii2LH40jlu2QyqY;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    new-instance p3, Lcab/snapp/passenger/units/signup/-$$Lambda$a$wjnaHlNsYQNfYUwmprj7Y8HIqV0;

    invoke-direct {p3, p0}, Lcab/snapp/passenger/units/signup/-$$Lambda$a$wjnaHlNsYQNfYUwmprj7Y8HIqV0;-><init>(Lcab/snapp/passenger/units/signup/a;)V

    .line 93
    invoke-virtual {p1, p2, p3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/signup/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public requestSignUpWithGoogle()V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onNoInternetConnection()V

    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/signup/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/signup/c;->onBeforeLoginWithGoogleRequest()V

    .line 139
    iget-object v0, p0, Lcab/snapp/passenger/units/signup/a;->c:Lcab/snapp/passenger/f/i;

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {v0}, Lcab/snapp/passenger/f/i;->loginOrSignUpWithGoogle()V

    :cond_2
    return-void
.end method

.method public sendEmailToSnappSupportCenter(Ljava/lang/String;)V
    .locals 5

    .line 152
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/html"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "care@snapp.cab"

    aput-object v4, v2, v3

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/signup/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "Send Email"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 166
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
