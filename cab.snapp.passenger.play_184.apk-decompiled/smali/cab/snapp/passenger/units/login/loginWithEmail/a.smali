.class public Lcab/snapp/passenger/units/login/loginWithEmail/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/login/loginWithEmail/d;",
        "Lcab/snapp/passenger/units/login/loginWithEmail/c;",
        ">;",
        "Lcab/snapp/passenger/f/i$a;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/f/i;

.field b:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/authenticator/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onFinishLoading()V

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/d;->backToSplash()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1201
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->isNewUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->SIGN_UP_WITH_GOOGLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_GOOGLE:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->SIGN_UP_WITH_GOOGLE_GHOST:Ljava/lang/String;

    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onRegisterEmailSuccess()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onFinishLoading()V

    .line 164
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->d:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/d;->backToSplash()V

    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_4

    .line 172
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 175
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    const v0, 0x7f1200a9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->showLoginErrorToUser(I)V

    return-void

    :cond_2
    const/16 v1, 0x3f6

    if-ne v0, v1, :cond_3

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onEmailNotVerified()V

    return-void

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->showLoginErrorToUser(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private synthetic b(Lcab/snapp/snappnetwork/model/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2193
    invoke-direct {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    const v0, 0x7f12028b

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->showLoginErrorToUser(I)V

    return-void

    .line 289
    :cond_0
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onRegisterEmailError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$BUIFkHuVBbVnw70nTOogQQmKrS8(Lcab/snapp/passenger/units/login/loginWithEmail/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$C3Xsd1zlW2v39FvnoguO1YW9-YY(Lcab/snapp/passenger/units/login/loginWithEmail/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$CqYLne-RfzTVuuBoAKaCWOwU3hg(Lcab/snapp/passenger/units/login/loginWithEmail/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$eOQwp6JQUdiXAMtd5BHW0T30c_0(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$jFm1LYAEXWYPFvHRfBIoJZV66VY(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/snappnetwork/model/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->b(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method

.method public static synthetic lambda$lBOX6JvgpOyLY4cs868uJYrb9pA(Lcab/snapp/passenger/units/login/loginWithEmail/a;Lcab/snapp/snappnetwork/model/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a(Lcab/snapp/snappnetwork/model/c;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onNoInternetConnection()V

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onLoading()V

    .line 117
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 118
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/a/d;->loginWithEmail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$jFm1LYAEXWYPFvHRfBIoJZV66VY;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$jFm1LYAEXWYPFvHRfBIoJZV66VY;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    new-instance v0, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$C3Xsd1zlW2v39FvnoguO1YW9-YY;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$C3Xsd1zlW2v39FvnoguO1YW9-YY;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    .line 119
    invoke-virtual {p1, p2, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcab/snapp/arch/protocol/BaseInteractor;->onActivityResult(IILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onLoading()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a:Lcab/snapp/passenger/f/i;

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/passenger/f/i;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onGoogleTokenError(Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onFinishLoading()V

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    const v0, 0x7f1200b9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->showLoginErrorToUser(I)V

    :cond_0
    return-void
.end method

.method public onGoogleTokenSucceed(Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onFinishLoading()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 280
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->loginWithGoogle(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$lBOX6JvgpOyLY4cs868uJYrb9pA;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$lBOX6JvgpOyLY4cs868uJYrb9pA;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$BUIFkHuVBbVnw70nTOogQQmKrS8;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$BUIFkHuVBbVnw70nTOogQQmKrS8;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    .line 281
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    .line 238
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    new-instance v0, Lcab/snapp/passenger/f/i;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c:Lcab/snapp/passenger/f/b/b/c;

    invoke-direct {v0, v1, p0, v2}, Lcab/snapp/passenger/f/i;-><init>(Lcab/snapp/arch/protocol/BaseController;Lcab/snapp/passenger/f/i$a;Lcab/snapp/passenger/f/b/b/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->a:Lcab/snapp/passenger/f/i;

    .line 242
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->c:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 1

    .line 248
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/login/loginWithEmail/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/login/loginWithEmail/c;->onInitialize()V

    :cond_0
    return-void
.end method

.method public sendRegisterEmail(Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcab/snapp/passenger/units/login/loginWithEmail/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->sendEmailForVerificationBeforeLogin(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$eOQwp6JQUdiXAMtd5BHW0T30c_0;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$eOQwp6JQUdiXAMtd5BHW0T30c_0;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    new-instance v1, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$CqYLne-RfzTVuuBoAKaCWOwU3hg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/login/loginWithEmail/-$$Lambda$a$CqYLne-RfzTVuuBoAKaCWOwU3hg;-><init>(Lcab/snapp/passenger/units/login/loginWithEmail/a;)V

    .line 135
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/login/loginWithEmail/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
