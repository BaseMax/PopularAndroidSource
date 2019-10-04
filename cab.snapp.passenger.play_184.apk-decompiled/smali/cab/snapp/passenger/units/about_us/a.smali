.class public Lcab/snapp/passenger/units/about_us/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/about_us/d;",
        "Lcab/snapp/passenger/units/about_us/c;",
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

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 45
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 46
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;->getAboutContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;->getAboutContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/about_us/c;->onAboutUsContentReady(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12001b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/about_us/c;->onAboutUsContentReady(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12001b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/about_us/c;->onAboutUsContentReady(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_Xt_5eOZc3pjbYTPWcmXNnT7bg4(Lcab/snapp/passenger/units/about_us/a;Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/about_us/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;)V

    return-void
.end method

.method public static synthetic lambda$iiUaD-IhdeJxyb-p0SS2pEuOjXA(Lcab/snapp/passenger/units/about_us/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/about_us/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 123
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/about_us/a;)V

    .line 1056
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/a;->a:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getAboutUsContent()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$_Xt_5eOZc3pjbYTPWcmXNnT7bg4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$_Xt_5eOZc3pjbYTPWcmXNnT7bg4;-><init>(Lcab/snapp/passenger/units/about_us/a;)V

    new-instance v2, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$iiUaD-IhdeJxyb-p0SS2pEuOjXA;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/about_us/-$$Lambda$a$iiUaD-IhdeJxyb-p0SS2pEuOjXA;-><init>(Lcab/snapp/passenger/units/about_us/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/about_us/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/about_us/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/about_us/c;->onInitialize(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 140
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/c;->setStatusBarColor()V

    .line 141
    iget-object v0, p0, Lcab/snapp/passenger/units/about_us/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "About us Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method
