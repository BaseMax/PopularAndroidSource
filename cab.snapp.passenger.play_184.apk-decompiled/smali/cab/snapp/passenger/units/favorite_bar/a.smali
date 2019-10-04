.class public Lcab/snapp/passenger/units/favorite_bar/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/favorite_bar/e;",
        "Lcab/snapp/passenger/units/favorite_bar/c;",
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

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->e:Z

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

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/FavoriteModel;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_bar/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/favorite_bar/c;->onFavoriteModelListReady(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->e:Z

    .line 174
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_bar/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$68s4FnXQoj4naf0Mk3LVNB0DVlg(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$89-ngWPUEdEJ1qcnLcTmp-uQ-_s(Lcab/snapp/passenger/units/favorite_bar/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_bar/a;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$Ia8EC_c543vRL_HgiQFHOtvPOPE(Lcab/snapp/passenger/units/favorite_bar/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_bar/a;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public favoriteSelected(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 6

    if-eqz p1, :cond_5

    .line 87
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1140
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_SET_DESTINATION:Ljava/lang/String;

    const-string v3, "[favorite][select]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationFormattedAddress(Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getDetailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationFormattedDetailsAddress(Ljava/lang/String;)V

    .line 1148
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getFormattedAddress()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v4

    invoke-virtual {v4}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 1150
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setDestinationPlaceId(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2127
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/second_destination/b;

    if-eqz v0, :cond_4

    .line 2129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/second_destination/b;->favoriteSelected(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    .line 102
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->reportFavoriteSelectedFromFavoriteBarToAppMetrica()V

    :cond_5
    :goto_1
    return-void
.end method

.method public handleAddFavorite()V
    .locals 4

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/mainheader/a;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->FAVORITE:Ljava/lang/String;

    const-string v3, "Add From Map"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/a;->navigateToAddFavoriteAddress()V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/second_destination/b;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->navigateToAddFavoriteAddress()V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/favorite_bar/a;)V

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Key Favorites List"

    .line 212
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_bar/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/favorite_bar/c;->onFavoriteModelListReady(Ljava/util/List;)V

    .line 2159
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2162
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->b:Lcab/snapp/passenger/c/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->getCachedData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    .line 2163
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2165
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/favorite_bar/a;->a(Ljava/util/List;)V

    .line 2167
    :cond_3
    iget-boolean v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->e:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/mainheader/a;

    if-eqz v0, :cond_4

    .line 2169
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->b:Lcab/snapp/passenger/c/c;

    .line 2171
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->fetchAndRefreshData()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$89-ngWPUEdEJ1qcnLcTmp-uQ-_s;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$89-ngWPUEdEJ1qcnLcTmp-uQ-_s;-><init>(Lcab/snapp/passenger/units/favorite_bar/a;)V

    sget-object v2, Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$68s4FnXQoj4naf0Mk3LVNB0DVlg;->INSTANCE:Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$68s4FnXQoj4naf0Mk3LVNB0DVlg;

    .line 2172
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 2169
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_bar/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->b:Lcab/snapp/passenger/c/c;

    .line 225
    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->observeData()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$Ia8EC_c543vRL_HgiQFHOtvPOPE;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_bar/-$$Lambda$a$Ia8EC_c543vRL_HgiQFHOtvPOPE;-><init>(Lcab/snapp/passenger/units/favorite_bar/a;)V

    .line 226
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 224
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_bar/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_bar/e;

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_bar/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/favorite_bar/e;->setNavigationController(Landroidx/navigation/NavController;)V

    :cond_5
    return-void
.end method

.method public reportFavoriteSelectedFromFavoriteBarToAppMetrica()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_bar/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "setDestination"

    const-string v2, "favoritSelect"

    .line 114
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 116
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_0
    return-void
.end method
