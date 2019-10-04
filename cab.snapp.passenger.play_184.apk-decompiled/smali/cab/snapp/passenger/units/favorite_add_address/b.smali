.class public Lcab/snapp/passenger/units/favorite_add_address/b;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/favorite_add_address/e;",
        "Lcab/snapp/passenger/units/favorite_add_address/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Integer;


# instance fields
.field a:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/e;
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

.field private final h:I

.field private i:I

.field private j:Lcom/google/android/gms/maps/model/LatLng;

.field private k:Lio/reactivex/b/c;

.field private l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x541

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/favorite_add_address/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/16 v0, 0x544

    .line 61
    iput v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->h:I

    const v0, 0x7f0a033f

    .line 69
    iput v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->m:Z

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->n:Z

    return-void
.end method

.method private a()V
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onAddLocationFinished()V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->handleBack()V

    return-void
.end method

.method private synthetic a(Landroid/location/Location;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    instance-of v0, p1, Lcab/snapp/passenger/data/models/NullLocation;

    if-eqz v0, :cond_2

    .line 349
    check-cast p1, Lcab/snapp/passenger/data/models/NullLocation;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isBecauseDenyPermission()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->p:Z

    .line 350
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->getLocationSettingException()Lcom/google/android/gms/common/api/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    return-void

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->p:Z

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->isLocationModeBatterySavingOrPhoneOnly()Z

    move-result p1

    if-nez p1, :cond_4

    .line 358
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V

    return-void

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/NullLocation;->isPermanentlyDeniedPermission()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 363
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onPermissionRequestIsDenied()V

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 368
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v7, Lcab/snapp/mapmodule/a/a/n;

    iget v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    .line 369
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcab/snapp/mapmodule/a/a/n;-><init>(IDD)V

    .line 368
    invoke-virtual {v0, v7}, Lcab/snapp/mapmodule/a;->moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V

    .line 371
    iget-boolean p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->m:Z

    if-nez p1, :cond_4

    .line 373
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/g;->isLocationPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    iget v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    invoke-virtual {p1, v0}, Lcab/snapp/mapmodule/a;->showUserLocationIndicator(I)V

    :cond_3
    const/4 p1, 0x1

    .line 377
    iput-boolean p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->m:Z

    :cond_4
    return-void
.end method

.method private a(Lcab/snapp/mapmodule/a/b/c;)V
    .locals 9

    .line 264
    iget v0, p1, Lcab/snapp/mapmodule/a/b/c;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_5

    const/16 p1, 0x7dc

    if-eq v0, p1, :cond_2

    const/16 p1, 0x7d2

    if-eq v0, p1, :cond_1

    const/16 p1, 0x7d3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 285
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz p1, :cond_6

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onLocationMoveFinished()V

    .line 288
    new-instance p1, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {p1, v0, v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;-><init>(DD)V

    .line 289
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;->setFormattedAddress()V

    .line 290
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->e:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->getPin(Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$a1dp9CE7GnJ52kGxXWGfHqC1LsI;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$a1dp9CE7GnJ52kGxXWGfHqC1LsI;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    sget-object v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$jpxnczZVgXxfbSrfufzDzo0eaYo;->INSTANCE:Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$jpxnczZVgXxfbSrfufzDzo0eaYo;

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onLocationMoveStarted()V

    return-void

    .line 267
    :cond_2
    iget-boolean p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->o:Z

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->o:Z

    .line 1129
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->b:Lcab/snapp/passenger/c/h;

    .line 1130
    invoke-virtual {v0}, Lcab/snapp/passenger/c/h;->getSearchResults()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    .line 1131
    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1133
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    sget-object v1, Lcab/snapp/passenger/units/favorite_add_address/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1135
    sget-object v1, Lcab/snapp/passenger/units/favorite_add_address/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1138
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    if-eqz v0, :cond_4

    .line 1140
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    new-instance v8, Lcab/snapp/mapmodule/a/a/f;

    iget v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1143
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLatitude()D

    move-result-wide v3

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 1144
    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/GeocodeMasterModel;->getLatLng()Lcab/snapp/passenger/data/models/PlaceLatLng;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data/models/PlaceLatLng;->getLongitude()D

    move-result-wide v5

    const/high16 v7, 0x41700000    # 15.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    .line 1140
    invoke-virtual {v0, v8}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_6

    .line 1322
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/e;->getSavedLocation()Landroid/location/Location;

    move-result-object p1

    .line 1323
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1324
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object p1

    new-instance v8, Lcab/snapp/mapmodule/a/a/f;

    iget v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    const/high16 v7, 0x41700000    # 15.0f

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcab/snapp/mapmodule/a/a/f;-><init>(IDDF)V

    invoke-virtual {p1, v8}, Lcab/snapp/mapmodule/a;->changeCenterWithZoom(Lcab/snapp/mapmodule/a/a/f;)V

    return-void

    .line 308
    :cond_5
    instance-of v0, p1, Lcab/snapp/mapmodule/a/b/a;

    if-eqz v0, :cond_6

    .line 310
    check-cast p1, Lcab/snapp/mapmodule/a/b/a;

    .line 311
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p1, Lcab/snapp/mapmodule/a/b/a;->latitude:D

    iget-wide v3, p1, Lcab/snapp/mapmodule/a/b/a;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;->getSnappFormattedAddress()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeNumbersBasedOnCurrentLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onPinAddressUpdated(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 302
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->a()V

    return-void
.end method

.method private synthetic a(ZLcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2213
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onFavoriteLocationAdded()V

    if-eqz p1, :cond_0

    .line 2216
    new-instance p1, Lcab/snapp/passenger/f/n;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcab/snapp/passenger/f/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/f/n;->createHomeScreenShortcut(Lcab/snapp/passenger/data/models/FavoriteModel;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2217
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/d;->onShortcutCreated(Lcab/snapp/passenger/data/models/FavoriteModel;)V

    .line 2232
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->c:Lcab/snapp/passenger/c/c;

    .line 2234
    invoke-virtual {p1}, Lcab/snapp/passenger/c/c;->fetchAndRefreshData()Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$gU5TvhLEkyGvzrvsNnv5EHWWTRo;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$gU5TvhLEkyGvzrvsNnv5EHWWTRo;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$77jVuQapFDp9gP9a8JwdN4Y28A4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$77jVuQapFDp9gP9a8JwdN4Y28A4;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 2235
    invoke-virtual {p1, p2, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 2232
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->a()V

    return-void
.end method

.method private synthetic b(Lcab/snapp/mapmodule/a/b/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    iget p1, p1, Lcab/snapp/mapmodule/a/b/c;->id:I

    iget v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2196
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onAddLocationFinished()V

    .line 2199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$77jVuQapFDp9gP9a8JwdN4Y28A4(Lcab/snapp/passenger/units/favorite_add_address/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$NyJJb8vzOt8ulx5Z_pvFzdzypqI(Lcab/snapp/passenger/units/favorite_add_address/b;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic lambda$UwI8KY_jdW6SBo4PNWtscEiFLmg(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/mapmodule/a/b/c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->b(Lcab/snapp/mapmodule/a/b/c;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Xf1a72u5smM6Wk5Q7avwnutqit8(Lcab/snapp/passenger/units/favorite_add_address/b;ZLcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(ZLcab/snapp/passenger/data/models/FavoriteModel;)V

    return-void
.end method

.method public static synthetic lambda$a1dp9CE7GnJ52kGxXWGfHqC1LsI(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;)V

    return-void
.end method

.method public static synthetic lambda$gU5TvhLEkyGvzrvsNnv5EHWWTRo(Lcab/snapp/passenger/units/favorite_add_address/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$hpJio_6xVs6FN_qRMt1C6EI3pRY(Lcab/snapp/passenger/units/favorite_add_address/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$ijpyF3dQ8MMsTxU7R3Z_40kBkwI(Lcab/snapp/passenger/units/favorite_add_address/b;Lcab/snapp/mapmodule/a/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Lcab/snapp/mapmodule/a/b/c;)V

    return-void
.end method

.method public static synthetic lambda$jpxnczZVgXxfbSrfufzDzo0eaYo(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->onAddLocationStarted()V

    .line 170
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->c:Lcab/snapp/passenger/c/c;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 174
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->j:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 175
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {v1, p1, v0, v2, p2}, Lcab/snapp/passenger/c/c;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;

    invoke-direct {p2, p0, p3}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$Xf1a72u5smM6Wk5Q7avwnutqit8;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;Z)V

    new-instance p3, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$hpJio_6xVs6FN_qRMt1C6EI3pRY;

    invoke-direct {p3, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$hpJio_6xVs6FN_qRMt1C6EI3pRY;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 177
    invoke-virtual {p1, p2, p3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->addDisposable(Lio/reactivex/b/c;)V

    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/d;

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "get location problem!"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/d;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public handleBack()V
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/e;->navigateUp()V

    :cond_0
    return-void
.end method

.method public navigateToSearch()V
    .locals 3

    .line 420
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->l:Lcab/snapp/passenger/data/models/GeocodeMasterModel;

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 425
    sget-object v1, Lcab/snapp/passenger/units/favorite_add_address/b;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "Key Search Request Code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/favorite_add_address/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/favorite_add_address/e;->routeToSearchUnit(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 436
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 437
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 442
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 446
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/favorite_add_address/d;->onInitialize(Z)V

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/favorite_add_address/d;->onInitialize(Z)V

    .line 458
    :cond_2
    :goto_0
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcab/snapp/mapmodule/a;->getEventsObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$UwI8KY_jdW6SBo4PNWtscEiFLmg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$UwI8KY_jdW6SBo4PNWtscEiFLmg;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 460
    invoke-virtual {v0, v1}, Lio/reactivex/z;->filter(Lio/reactivex/e/q;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$ijpyF3dQ8MMsTxU7R3Z_40kBkwI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$ijpyF3dQ8MMsTxU7R3Z_40kBkwI;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 461
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 457
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->addDisposable(Lio/reactivex/b/c;)V

    .line 464
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 469
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/favorite_add_address/e;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/favorite_add_address/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 472
    :cond_3
    iput-boolean v2, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->n:Z

    .line 473
    iget-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->p:Z

    if-nez v0, :cond_4

    .line 474
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->requestMyLocation()V

    :cond_4
    return-void
.end method

.method public onUnitPause()V
    .locals 2

    .line 496
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 497
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    iget v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->hideUserLocationIndicator(I)V

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->dismissAddFavoriteDialog()V

    :cond_0
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 482
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 484
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->f:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Select Favorite Loaction Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v0

    iget v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    invoke-virtual {v0, v1}, Lcab/snapp/mapmodule/a;->showUserLocationIndicator(I)V

    const/4 v0, 0x0

    .line 486
    iput-boolean v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->o:Z

    .line 487
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/d;->showAddFavoriteDialogIfNeeded()V

    :cond_0
    return-void
.end method

.method public reportPopUpLocationNegativeButtonClickedToAppMetrica()V
    .locals 3

    .line 512
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "location"

    const-string v2, "no"

    .line 513
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 515
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Popup"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public reportPopUpLocationPositiveButtonToAppMetrica()V
    .locals 3

    .line 505
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "location"

    const-string v2, "yes"

    .line 506
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 508
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Popup"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public requestEditLocationSetting(Lcom/google/android/gms/common/api/k;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    const/16 v1, 0x544

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/c/e;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;I)V

    return-void
.end method

.method public requestMyLocation()V
    .locals 9

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-boolean v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->n:Z

    if-eqz v1, :cond_0

    .line 338
    invoke-static {}, Lcab/snapp/mapmodule/a;->getInstance()Lcab/snapp/mapmodule/a;

    move-result-object v1

    new-instance v8, Lcab/snapp/mapmodule/a/a/n;

    iget v3, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->i:I

    .line 339
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcab/snapp/mapmodule/a/a/n;-><init>(IDD)V

    .line 338
    invoke-virtual {v1, v8}, Lcab/snapp/mapmodule/a;->moveAnimated(Lcab/snapp/mapmodule/a/a/n;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->k:Lio/reactivex/b/c;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->getLocationObservable(Z)Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$NyJJb8vzOt8ulx5Z_pvFzdzypqI;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$b$NyJJb8vzOt8ulx5Z_pvFzdzypqI;-><init>(Lcab/snapp/passenger/units/favorite_add_address/b;)V

    .line 346
    invoke-virtual {v0, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->k:Lio/reactivex/b/c;

    .line 381
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->k:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->addDisposable(Lio/reactivex/b/c;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/e;->refreshLocation(Z)V

    .line 387
    :goto_0
    iput-boolean v1, p0, Lcab/snapp/passenger/units/favorite_add_address/b;->n:Z

    return-void
.end method
