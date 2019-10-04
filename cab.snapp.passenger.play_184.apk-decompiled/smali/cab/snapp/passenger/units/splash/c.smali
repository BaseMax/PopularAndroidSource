.class final Lcab/snapp/passenger/units/splash/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/splash/SplashView;",
        "Lcab/snapp/passenger/units/splash/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/snappdialog/b;

.field b:Lcab/snapp/snappdialog/b;

.field c:Lcab/snapp/snappdialog/b;

.field d:Landroid/view/View$OnClickListener;

.field e:Landroid/view/View$OnClickListener;

.field f:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/splash/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 342
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/a;->b()V

    :cond_1
    return-void
.end method

.method private synthetic a([Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 491
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    aget-object v0, p1, p2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    aget-object p1, p1, p2

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/splash/a;->changeDynamicEndpoint(Ljava/lang/String;)V

    .line 497
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 499
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/SplashView;->closeQAEndpointsDialog()V

    :cond_1
    return-void
.end method

.method private static synthetic a([Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 172
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/splash/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 331
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/a;->c()V

    :cond_1
    return-void
.end method

.method private synthetic b([Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/splash/a;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/splash/a;->changeServerEndPoint(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/SplashView;->cancelEndPointSelectionDialog()V

    :cond_1
    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 324
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/a;->b()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$30U_0Im6dFnaYWMyLeUQK-pBZ7E(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/splash/c;->b([Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$N7xREz-hlBVIFnIOl4X2gQlFOzI(Lcab/snapp/passenger/units/splash/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/c;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QUW0w4Ye-SM1uiTM8MYAG1tlZkc([Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcab/snapp/passenger/units/splash/c;->a([Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$i2V3nZpy3zP8Nxh6Yoxq8VbwZaE(Lcab/snapp/passenger/units/splash/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/c;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$pJQYse6s5ng-_z29GgRfRkqnB8Y(Lcab/snapp/passenger/units/splash/c;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/splash/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$rLDC2I6Hj5aL-f7P-sU0kj9gHSg(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/splash/c;->a([Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final closeAppClicked()V
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->closeApp()V

    :cond_0
    return-void
.end method

.method public final downloadGplayClicked()V
    .locals 1

    .line 435
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->downloadGplayService()V

    :cond_0
    return-void
.end method

.method public final onGetConfigFailed()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->showTryAgainButton()V

    .line 140
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->stopLoadingAnimation()V

    return-void
.end method

.method public final onGetConfigSucceed()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->stopLoadingAnimation()V

    :cond_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcab/snapp/passenger/units/splash/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/splash/c$1;-><init>(Lcab/snapp/passenger/units/splash/c;)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/r;->showNoInternetDialog(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method public final onReadyForFirstTime()V
    .locals 1

    .line 318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->showBottomSkyLine()V

    .line 321
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->slideUpScreenElements()V

    .line 323
    :cond_0
    new-instance v0, Lcab/snapp/passenger/units/splash/-$$Lambda$c$i2V3nZpy3zP8Nxh6Yoxq8VbwZaE;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$i2V3nZpy3zP8Nxh6Yoxq8VbwZaE;-><init>(Lcab/snapp/passenger/units/splash/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/c;->d:Landroid/view/View$OnClickListener;

    .line 330
    new-instance v0, Lcab/snapp/passenger/units/splash/-$$Lambda$c$N7xREz-hlBVIFnIOl4X2gQlFOzI;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$N7xREz-hlBVIFnIOl4X2gQlFOzI;-><init>(Lcab/snapp/passenger/units/splash/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/c;->e:Landroid/view/View$OnClickListener;

    .line 341
    new-instance v0, Lcab/snapp/passenger/units/splash/-$$Lambda$c$pJQYse6s5ng-_z29GgRfRkqnB8Y;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$pJQYse6s5ng-_z29GgRfRkqnB8Y;-><init>(Lcab/snapp/passenger/units/splash/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/c;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final onShowEndPointSelectionDialog(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcab/snapp/passenger/units/splash/SplashView;

    const v4, 0x7f120114

    new-instance v6, Lcab/snapp/passenger/units/splash/-$$Lambda$c$QUW0w4Ye-SM1uiTM8MYAG1tlZkc;

    invoke-direct {v6, v0, p1}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$QUW0w4Ye-SM1uiTM8MYAG1tlZkc;-><init>([Ljava/lang/String;Ljava/util/List;)V

    new-instance v8, Lcab/snapp/passenger/units/splash/-$$Lambda$c$30U_0Im6dFnaYWMyLeUQK-pBZ7E;

    invoke-direct {v8, p0, v0}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$30U_0Im6dFnaYWMyLeUQK-pBZ7E;-><init>(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;)V

    const-string v3, "Select Base Endpoint"

    const-string v7, "select this"

    move-object v5, p1

    invoke-virtual/range {v2 .. v8}, Lcab/snapp/passenger/units/splash/SplashView;->showEndPointSelectionDialog(Ljava/lang/String;ILjava/util/List;Lcab/snapp/snappdialog/b/d;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onShowingWelcomeView()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public final onTryAgainButtonClicked()V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->a()V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->hideTryAgainButton()V

    .line 125
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->startLoadingAnimation()V

    :cond_1
    return-void
.end method

.method public final onVersionClicked()V
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->handleChangeServerEndPointClick()V

    :cond_0
    return-void
.end method

.method public final onVersionNameIsReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->showVersionName()V

    .line 388
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12027c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/splash/SplashView;->setVersionName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onWelcomeChildIsAdded(Z)V
    .locals 0

    .line 360
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/splash/SplashView;->translateUpSnappLogo()V

    :cond_0
    return-void
.end method

.method public final releaseResources()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->a:Lcab/snapp/snappdialog/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->a:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 199
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->a:Lcab/snapp/snappdialog/b;

    .line 202
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_3

    .line 204
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 209
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    .line 212
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    if-eqz v0, :cond_5

    .line 214
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->dismiss()V

    .line 218
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->cancel()V

    .line 219
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    .line 222
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6

    .line 224
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->d:Landroid/view/View$OnClickListener;

    .line 227
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->e:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    .line 229
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->e:Landroid/view/View$OnClickListener;

    .line 232
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/units/splash/c;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_8

    .line 234
    iput-object v1, p0, Lcab/snapp/passenger/units/splash/c;->f:Landroid/view/View$OnClickListener;

    :cond_8
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 454
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004c

    .line 457
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final showForceUpdateDialog()V
    .locals 5

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    if-nez v1, :cond_2

    .line 296
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 297
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    const v3, 0x7f12015f

    .line 298
    invoke-virtual {v1, v3}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    new-instance v3, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 300
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f120161

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v0

    .line 299
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12009a

    iget-object v2, p0, Lcab/snapp/passenger/units/splash/c;->f:Landroid/view/View$OnClickListener;

    .line 303
    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/c;->c:Lcab/snapp/snappdialog/b;

    return-void

    .line 309
    :cond_2
    invoke-virtual {v1}, Lcab/snapp/snappdialog/b;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showGplaySericeNotInstalled()V
    .locals 1

    .line 427
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->showGplayServiceUpdateDialog()V

    :cond_0
    return-void
.end method

.method public final showInputDialogForQAEndpoints(Ljava/lang/String;)V
    .locals 9

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 470
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcab/snapp/passenger/units/splash/SplashView;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    move-object v5, p1

    new-instance v6, Lcab/snapp/passenger/units/splash/c$2;

    invoke-direct {v6, p0, v0}, Lcab/snapp/passenger/units/splash/c$2;-><init>(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;)V

    new-instance v8, Lcab/snapp/passenger/units/splash/-$$Lambda$c$rLDC2I6Hj5aL-f7P-sU0kj9gHSg;

    invoke-direct {v8, p0, v0}, Lcab/snapp/passenger/units/splash/-$$Lambda$c$rLDC2I6Hj5aL-f7P-sU0kj9gHSg;-><init>(Lcab/snapp/passenger/units/splash/c;[Ljava/lang/String;)V

    const-string v3, "Change The Endpoint Key or Continue with Current Key"

    const-string v4, ""

    const-string v7, "Continue"

    invoke-virtual/range {v2 .. v8}, Lcab/snapp/passenger/units/splash/SplashView;->showQAEndpointDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final showUpdateDialog()V
    .locals 5

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/SplashView;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    if-nez v1, :cond_2

    .line 258
    new-instance v1, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 259
    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    const v3, 0x7f12015f

    .line 260
    invoke-virtual {v1, v3}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v1

    new-instance v3, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 262
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/SplashView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v4, 0x7f120160

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v0

    .line 261
    invoke-virtual {v1, v0}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f1202b5

    iget-object v3, p0, Lcab/snapp/passenger/units/splash/c;->d:Landroid/view/View$OnClickListener;

    .line 265
    invoke-virtual {v0, v1, v3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f120165

    iget-object v3, p0, Lcab/snapp/passenger/units/splash/c;->e:Landroid/view/View$OnClickListener;

    .line 266
    invoke-virtual {v0, v1, v3}, Lcab/snapp/snappdialog/b$a;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 267
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/splash/c;->b:Lcab/snapp/snappdialog/b;

    return-void

    .line 272
    :cond_2
    invoke-virtual {v1}, Lcab/snapp/snappdialog/b;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final slideUpAnimationEnded()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcab/snapp/passenger/units/splash/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/splash/a;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcab/snapp/passenger/units/splash/a;->a()V

    :cond_0
    return-void
.end method
