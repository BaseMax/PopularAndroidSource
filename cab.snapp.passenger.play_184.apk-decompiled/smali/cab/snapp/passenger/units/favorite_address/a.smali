.class public Lcab/snapp/passenger/units/favorite_address/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/favorite_address/e;",
        "Lcab/snapp/passenger/units/favorite_address/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data/models/FavoriteModel;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/favorite_address/c;->onEditFavoriteSucceed()V

    .line 231
    new-instance p2, Lcab/snapp/passenger/f/n;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcab/snapp/passenger/f/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/f/n;->updateHomeScreenShortcut(Lcab/snapp/passenger/data/models/FavoriteModel;)Z

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->onHideLoading()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->onDeleteFavoriteError()V

    .line 268
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_address/c;->onHideLoading()V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/favorite_address/a;->a()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_address/c;->a(Ljava/util/List;Z)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 122
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_address/c;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onHideLoading()V

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/favorite_address/a;->a()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_address/c;->a(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic c(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic d(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onHideLoading()V

    .line 91
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->a()V

    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->a()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$FT2ZzSJRZyKecRYPz1O5vbZ6ddc(Lcab/snapp/passenger/units/favorite_address/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NXJ-24peVY0XROasb_x7UfKgn_c(Lcab/snapp/passenger/units/favorite_address/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$O7eYtHPptQISIAJeICJAFRd8sn0(Lcab/snapp/passenger/units/favorite_address/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$U2RVRcdVDJ_n8QOReN4KhhTSEEs(Lcab/snapp/passenger/units/favorite_address/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$WAhAYFKy5Y07n2dD52aCnudDin0(Lcab/snapp/passenger/units/favorite_address/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$XxV-PdvGo_0TvN78N3_L5eM5V3E(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/data/models/FavoriteModel;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_address/a;->a(Lcab/snapp/passenger/data/models/FavoriteModel;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$ZWBOujIuwphbgGEQE2R6xhqr4kM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/favorite_address/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$iPgsml_YGDAaNHkj4J2YKVZnMd8(Lcab/snapp/passenger/units/favorite_address/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 224
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result v1

    .line 225
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/c/c;->edit(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$XxV-PdvGo_0TvN78N3_L5eM5V3E;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$XxV-PdvGo_0TvN78N3_L5eM5V3E;-><init>(Lcab/snapp/passenger/units/favorite_address/a;Lcab/snapp/passenger/data/models/FavoriteModel;)V

    new-instance p1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$FT2ZzSJRZyKecRYPz1O5vbZ6ddc;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$FT2ZzSJRZyKecRYPz1O5vbZ6ddc;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    .line 227
    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method final b(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcab/snapp/passenger/f/n;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/n;->removeHomeScreenShortcut(Lcab/snapp/passenger/data/models/FavoriteModel;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onLoading()V

    .line 257
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 258
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/c;->remove(I)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$NXJ-24peVY0XROasb_x7UfKgn_c;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$NXJ-24peVY0XROasb_x7UfKgn_c;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    new-instance v1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$iPgsml_YGDAaNHkj4J2YKVZnMd8;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$iPgsml_YGDAaNHkj4J2YKVZnMd8;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    .line 259
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_address/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 291
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 292
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/favorite_address/a;)V

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/favorite_address/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/favorite_address/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onInitialize()V

    .line 305
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->setStatusBarColor()V

    .line 1064
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1066
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    .line 1296
    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onLoading()V

    .line 1069
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 1070
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->getCachedData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 1071
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->getCachedData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1073
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_address/c;->onHideLoading()V

    .line 1074
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_address/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_address/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/c;->getCachedData()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/favorite_address/a;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/favorite_address/c;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 1078
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 1080
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->fetchAndRefreshData()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$WAhAYFKy5Y07n2dD52aCnudDin0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$WAhAYFKy5Y07n2dD52aCnudDin0;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    new-instance v2, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$U2RVRcdVDJ_n8QOReN4KhhTSEEs;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$U2RVRcdVDJ_n8QOReN4KhhTSEEs;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    .line 1081
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1078
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_address/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1106
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->b:Lcab/snapp/passenger/c/c;

    .line 1107
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->observeData()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$O7eYtHPptQISIAJeICJAFRd8sn0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$O7eYtHPptQISIAJeICJAFRd8sn0;-><init>(Lcab/snapp/passenger/units/favorite_address/a;)V

    sget-object v2, Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$ZWBOujIuwphbgGEQE2R6xhqr4kM;->INSTANCE:Lcab/snapp/passenger/units/favorite_address/-$$Lambda$a$ZWBOujIuwphbgGEQE2R6xhqr4kM;

    .line 1108
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1106
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_address/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 313
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 315
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/a;->d:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Viewing Favourite Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method
